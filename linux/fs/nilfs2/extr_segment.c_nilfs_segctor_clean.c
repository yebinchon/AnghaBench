
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {scalar_t__ sc_nfreesegs; int sc_gc_inodes; int sc_flags; int sc_dirty_files; } ;


 int NILFS_SC_DIRTY ;
 scalar_t__ list_empty (int *) ;
 int nilfs_doing_gc () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int nilfs_segctor_clean(struct nilfs_sc_info *sci)
{
 return list_empty(&sci->sc_dirty_files) &&
  !test_bit(NILFS_SC_DIRTY, &sci->sc_flags) &&
  sci->sc_nfreesegs == 0 &&
  (!nilfs_doing_gc() || list_empty(&sci->sc_gc_inodes));
}
