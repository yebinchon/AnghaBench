
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_inode_lock; int ns_dirty_files; } ;
struct nilfs_sc_info {int sc_flags; int sc_root; TYPE_1__* sc_super; } ;
struct TYPE_2__ {struct the_nilfs* s_fs_info; } ;


 int NILFS_SC_DIRTY ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ nilfs_segctor_clean (struct nilfs_sc_info*) ;
 scalar_t__ nilfs_test_metadata_dirty (struct the_nilfs*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nilfs_segctor_confirm(struct nilfs_sc_info *sci)
{
 struct the_nilfs *nilfs = sci->sc_super->s_fs_info;
 int ret = 0;

 if (nilfs_test_metadata_dirty(nilfs, sci->sc_root))
  set_bit(NILFS_SC_DIRTY, &sci->sc_flags);

 spin_lock(&nilfs->ns_inode_lock);
 if (list_empty(&nilfs->ns_dirty_files) && nilfs_segctor_clean(sci))
  ret++;

 spin_unlock(&nilfs->ns_inode_lock);
 return ret;
}
