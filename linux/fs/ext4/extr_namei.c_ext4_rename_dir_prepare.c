
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ext4_renament {int dir_bh; TYPE_1__* dir; TYPE_2__* parent_de; int dir_inlined; int inode; } ;
typedef int handle_t ;
struct TYPE_4__ {int inode; } ;
struct TYPE_3__ {scalar_t__ i_ino; } ;


 int BUFFER_TRACE (int ,char*) ;
 int EFSCORRUPTED ;
 int ext4_get_first_dir_block (int *,int ,int*,TYPE_2__**,int *) ;
 int ext4_journal_get_write_access (int *,int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_rename_dir_prepare(handle_t *handle, struct ext4_renament *ent)
{
 int retval;

 ent->dir_bh = ext4_get_first_dir_block(handle, ent->inode,
           &retval, &ent->parent_de,
           &ent->dir_inlined);
 if (!ent->dir_bh)
  return retval;
 if (le32_to_cpu(ent->parent_de->inode) != ent->dir->i_ino)
  return -EFSCORRUPTED;
 BUFFER_TRACE(ent->dir_bh, "get_write_access");
 return ext4_journal_get_write_access(handle, ent->dir_bh);
}
