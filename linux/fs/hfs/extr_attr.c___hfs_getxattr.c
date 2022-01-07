
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inode {int i_sb; int i_mode; } ;
struct hfs_find_data {int entryoffset; int bnode; TYPE_1__* search_key; } ;
struct TYPE_8__ {int fdCreator; int fdType; } ;
struct hfs_cat_file {TYPE_2__ UsrWds; } ;
typedef int ssize_t ;
struct TYPE_9__ {struct hfs_cat_file file; } ;
typedef TYPE_3__ hfs_cat_rec ;
typedef enum hfs_xattr_type { ____Placeholder_hfs_xattr_type } hfs_xattr_type ;
struct TYPE_11__ {int cat_key; } ;
struct TYPE_10__ {int cat_tree; } ;
struct TYPE_7__ {int cat; } ;


 int EOPNOTSUPP ;
 int ERANGE ;

 TYPE_6__* HFS_I (struct inode*) ;
 scalar_t__ HFS_IS_RSRC (struct inode*) ;
 TYPE_5__* HFS_SB (int ) ;

 int S_ISREG (int ) ;
 int hfs_bnode_read (int ,TYPE_3__*,int ,int) ;
 int hfs_brec_find (struct hfs_find_data*) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static ssize_t __hfs_getxattr(struct inode *inode, enum hfs_xattr_type type,
         void *value, size_t size)
{
 struct hfs_find_data fd;
 hfs_cat_rec rec;
 struct hfs_cat_file *file;
 ssize_t res = 0;

 if (!S_ISREG(inode->i_mode) || HFS_IS_RSRC(inode))
  return -EOPNOTSUPP;

 if (size) {
  res = hfs_find_init(HFS_SB(inode->i_sb)->cat_tree, &fd);
  if (res)
   return res;
  fd.search_key->cat = HFS_I(inode)->cat_key;
  res = hfs_brec_find(&fd);
  if (res)
   goto out;
  hfs_bnode_read(fd.bnode, &rec, fd.entryoffset,
    sizeof(struct hfs_cat_file));
 }
 file = &rec.file;

 switch (type) {
 case 128:
  if (size >= 4) {
   memcpy(value, &file->UsrWds.fdType, 4);
   res = 4;
  } else
   res = size ? -ERANGE : 4;
  break;

 case 129:
  if (size >= 4) {
   memcpy(value, &file->UsrWds.fdCreator, 4);
   res = 4;
  } else
   res = size ? -ERANGE : 4;
  break;
 }

out:
 if (size)
  hfs_find_exit(&fd);
 return res;
}
