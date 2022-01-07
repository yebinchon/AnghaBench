
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ext4_renament {TYPE_3__* dir; TYPE_2__* dentry; int bh; TYPE_7__* de; TYPE_1__* inode; } ;
typedef int handle_t ;
struct TYPE_12__ {scalar_t__ name_len; int name; int inode; } ;
struct TYPE_11__ {scalar_t__ len; int name; } ;
struct TYPE_10__ {int i_nlink; } ;
struct TYPE_9__ {TYPE_5__ d_name; } ;
struct TYPE_8__ {scalar_t__ i_ino; } ;


 int ENOENT ;
 int ext4_delete_entry (int *,TYPE_3__*,TYPE_7__*,int ) ;
 int ext4_find_delete_entry (int *,TYPE_3__*,TYPE_5__*) ;
 int ext4_warning_inode (TYPE_3__*,char*,int ,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static void ext4_rename_delete(handle_t *handle, struct ext4_renament *ent,
          int force_reread)
{
 int retval;






 if (le32_to_cpu(ent->de->inode) != ent->inode->i_ino ||
     ent->de->name_len != ent->dentry->d_name.len ||
     strncmp(ent->de->name, ent->dentry->d_name.name,
      ent->de->name_len) ||
     force_reread) {
  retval = ext4_find_delete_entry(handle, ent->dir,
      &ent->dentry->d_name);
 } else {
  retval = ext4_delete_entry(handle, ent->dir, ent->de, ent->bh);
  if (retval == -ENOENT) {
   retval = ext4_find_delete_entry(handle, ent->dir,
       &ent->dentry->d_name);
  }
 }

 if (retval) {
  ext4_warning_inode(ent->dir,
       "Deleting old file: nlink %d, error=%d",
       ent->dir->i_nlink, retval);
 }
}
