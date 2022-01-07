
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct hfs_find_data {TYPE_6__* search_key; } ;
typedef int rec ;
struct TYPE_10__ {int len; int name; } ;
struct TYPE_11__ {TYPE_3__ CName; int ParID; } ;
struct TYPE_12__ {int type; TYPE_4__ thread; } ;
typedef TYPE_5__ hfs_cat_rec ;
struct TYPE_8__ {int len; int name; } ;
struct TYPE_9__ {TYPE_1__ CName; int ParID; } ;
struct TYPE_13__ {TYPE_2__ cat; } ;


 int EIO ;
 int HFS_CDR_FTH ;
 int HFS_CDR_THD ;
 int HFS_NAMELEN ;
 int hfs_brec_find (struct hfs_find_data*) ;
 int hfs_brec_read (struct hfs_find_data*,TYPE_5__*,int) ;
 int hfs_cat_build_key (struct super_block*,TYPE_6__*,int ,int *) ;
 int memcpy (int ,int ,int) ;
 int pr_err (char*) ;

int hfs_cat_find_brec(struct super_block *sb, u32 cnid,
        struct hfs_find_data *fd)
{
 hfs_cat_rec rec;
 int res, len, type;

 hfs_cat_build_key(sb, fd->search_key, cnid, ((void*)0));
 res = hfs_brec_read(fd, &rec, sizeof(rec));
 if (res)
  return res;

 type = rec.type;
 if (type != HFS_CDR_THD && type != HFS_CDR_FTH) {
  pr_err("found bad thread record in catalog\n");
  return -EIO;
 }

 fd->search_key->cat.ParID = rec.thread.ParID;
 len = fd->search_key->cat.CName.len = rec.thread.CName.len;
 if (len > HFS_NAMELEN) {
  pr_err("bad catalog namelength\n");
  return -EIO;
 }
 memcpy(fd->search_key->cat.CName.name, rec.thread.CName.name, len);
 return hfs_brec_find(fd);
}
