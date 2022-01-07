
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct inode {int i_sb; int i_ino; } ;
struct dentry {int dummy; } ;
typedef int ntfs_inode ;
struct TYPE_11__ {TYPE_5__* attr; } ;
typedef TYPE_3__ ntfs_attr_search_ctx ;
struct TYPE_9__ {int value_length; int value_offset; } ;
struct TYPE_10__ {TYPE_1__ resident; } ;
struct TYPE_13__ {int non_resident; int length; TYPE_2__ data; } ;
struct TYPE_12__ {int parent_directory; } ;
typedef int MFT_RECORD ;
typedef TYPE_4__ FILE_NAME_ATTR ;
typedef TYPE_5__ ATTR_RECORD ;


 int AT_FILE_NAME ;
 int CASE_SENSITIVE ;
 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_CAST (int *) ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (int *) ;
 unsigned long MREF_LE (int ) ;
 int * NTFS_I (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int * map_mft_record (int *) ;
 TYPE_3__* ntfs_attr_get_search_ctx (int *,int *) ;
 int ntfs_attr_lookup (int ,int *,int ,int ,int ,int *,int ,TYPE_3__*) ;
 int ntfs_attr_put_search_ctx (TYPE_3__*) ;
 int ntfs_debug (char*,int ) ;
 int ntfs_error (int ,char*,int ) ;
 int ntfs_iget (int ,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int unmap_mft_record (int *) ;

__attribute__((used)) static struct dentry *ntfs_get_parent(struct dentry *child_dent)
{
 struct inode *vi = d_inode(child_dent);
 ntfs_inode *ni = NTFS_I(vi);
 MFT_RECORD *mrec;
 ntfs_attr_search_ctx *ctx;
 ATTR_RECORD *attr;
 FILE_NAME_ATTR *fn;
 unsigned long parent_ino;
 int err;

 ntfs_debug("Entering for inode 0x%lx.", vi->i_ino);

 mrec = map_mft_record(ni);
 if (IS_ERR(mrec))
  return ERR_CAST(mrec);

 ctx = ntfs_attr_get_search_ctx(ni, mrec);
 if (unlikely(!ctx)) {
  unmap_mft_record(ni);
  return ERR_PTR(-ENOMEM);
 }
try_next:
 err = ntfs_attr_lookup(AT_FILE_NAME, ((void*)0), 0, CASE_SENSITIVE, 0, ((void*)0),
   0, ctx);
 if (unlikely(err)) {
  ntfs_attr_put_search_ctx(ctx);
  unmap_mft_record(ni);
  if (err == -ENOENT)
   ntfs_error(vi->i_sb, "Inode 0x%lx does not have a "
     "file name attribute.  Run chkdsk.",
     vi->i_ino);
  return ERR_PTR(err);
 }
 attr = ctx->attr;
 if (unlikely(attr->non_resident))
  goto try_next;
 fn = (FILE_NAME_ATTR *)((u8 *)attr +
   le16_to_cpu(attr->data.resident.value_offset));
 if (unlikely((u8 *)fn + le32_to_cpu(attr->data.resident.value_length) >
   (u8*)attr + le32_to_cpu(attr->length)))
  goto try_next;

 parent_ino = MREF_LE(fn->parent_directory);

 ntfs_attr_put_search_ctx(ctx);
 unmap_mft_record(ni);

 return d_obtain_alias(ntfs_iget(vi->i_sb, parent_ino));
}
