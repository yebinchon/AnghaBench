
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nilfs_sc_info {int sc_flags; int sc_binfo_ptr; int sc_finfo_ptr; TYPE_2__* sc_curseg; } ;
struct nilfs_finfo {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {scalar_t__ i_root; } ;
struct TYPE_4__ {int nfinfo; } ;
struct TYPE_5__ {TYPE_1__ sb_sum; } ;


 TYPE_3__* NILFS_I (struct inode*) ;
 int NILFS_SC_HAVE_DELTA ;
 int nilfs_segctor_map_segsum_entry (struct nilfs_sc_info*,int *,int) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void nilfs_segctor_begin_finfo(struct nilfs_sc_info *sci,
          struct inode *inode)
{
 sci->sc_curseg->sb_sum.nfinfo++;
 sci->sc_binfo_ptr = sci->sc_finfo_ptr;
 nilfs_segctor_map_segsum_entry(
  sci, &sci->sc_binfo_ptr, sizeof(struct nilfs_finfo));

 if (NILFS_I(inode)->i_root &&
     !test_bit(NILFS_SC_HAVE_DELTA, &sci->sc_flags))
  set_bit(NILFS_SC_HAVE_DELTA, &sci->sc_flags);

}
