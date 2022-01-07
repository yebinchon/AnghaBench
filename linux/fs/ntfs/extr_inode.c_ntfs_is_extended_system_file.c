
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_17__ {TYPE_5__* ntfs_ino; TYPE_1__* mrec; TYPE_8__* attr; } ;
typedef TYPE_6__ ntfs_attr_search_ctx ;
struct TYPE_13__ {int flags; int value_length; int value_offset; } ;
struct TYPE_14__ {TYPE_2__ resident; } ;
struct TYPE_19__ {TYPE_3__ data; scalar_t__ flags; scalar_t__ non_resident; int length; } ;
struct TYPE_18__ {int parent_directory; } ;
struct TYPE_16__ {TYPE_4__* vol; } ;
struct TYPE_15__ {int sb; } ;
struct TYPE_12__ {int bytes_in_use; int link_count; } ;
typedef TYPE_7__ FILE_NAME_ATTR ;
typedef TYPE_8__ ATTR_RECORD ;


 int AT_FILE_NAME ;
 int EIO ;
 int ENOENT ;
 scalar_t__ FILE_Extend ;
 scalar_t__ MREF_LE (int ) ;
 int RESIDENT_ATTR_IS_INDEXED ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int ntfs_attr_lookup (int ,int *,int ,int ,int ,int *,int ,TYPE_6__*) ;
 int ntfs_attr_reinit_search_ctx (TYPE_6__*) ;
 int ntfs_error (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ntfs_is_extended_system_file(ntfs_attr_search_ctx *ctx)
{
 int nr_links, err;


 ntfs_attr_reinit_search_ctx(ctx);


 nr_links = le16_to_cpu(ctx->mrec->link_count);


 while (!(err = ntfs_attr_lookup(AT_FILE_NAME, ((void*)0), 0, 0, 0, ((void*)0), 0,
   ctx))) {
  FILE_NAME_ATTR *file_name_attr;
  ATTR_RECORD *attr = ctx->attr;
  u8 *p, *p2;

  nr_links--;




  p = (u8*)attr + le32_to_cpu(attr->length);
  if (p < (u8*)ctx->mrec || (u8*)p > (u8*)ctx->mrec +
    le32_to_cpu(ctx->mrec->bytes_in_use)) {
err_corrupt_attr:
   ntfs_error(ctx->ntfs_ino->vol->sb, "Corrupt file name "
     "attribute. You should run chkdsk.");
   return -EIO;
  }
  if (attr->non_resident) {
   ntfs_error(ctx->ntfs_ino->vol->sb, "Non-resident file "
     "name. You should run chkdsk.");
   return -EIO;
  }
  if (attr->flags) {
   ntfs_error(ctx->ntfs_ino->vol->sb, "File name with "
     "invalid flags. You should run "
     "chkdsk.");
   return -EIO;
  }
  if (!(attr->data.resident.flags & RESIDENT_ATTR_IS_INDEXED)) {
   ntfs_error(ctx->ntfs_ino->vol->sb, "Unindexed file "
     "name. You should run chkdsk.");
   return -EIO;
  }
  file_name_attr = (FILE_NAME_ATTR*)((u8*)attr +
    le16_to_cpu(attr->data.resident.value_offset));
  p2 = (u8*)attr + le32_to_cpu(attr->data.resident.value_length);
  if (p2 < (u8*)attr || p2 > p)
   goto err_corrupt_attr;

  if (MREF_LE(file_name_attr->parent_directory) == FILE_Extend)
   return 1;
 }
 if (unlikely(err != -ENOENT))
  return err;
 if (unlikely(nr_links)) {
  ntfs_error(ctx->ntfs_ino->vol->sb, "Inode hard link count "
    "doesn't match number of name attributes. You "
    "should run chkdsk.");
  return -EIO;
 }
 return 0;
}
