
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ znode; } ;
struct ubifs_info {int ilebs; int gap_lebs; TYPE_1__ zroot; int clean_zn_cnt; } ;


 long atomic_long_read (int *) ;
 int atomic_long_sub (long,int *) ;
 int destroy_old_idx (struct ubifs_info*) ;
 int kfree (int ) ;
 int tnc_destroy_cnext (struct ubifs_info*) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_clean_zn_cnt ;
 long ubifs_destroy_tnc_subtree (struct ubifs_info*,scalar_t__) ;

void ubifs_tnc_close(struct ubifs_info *c)
{
 tnc_destroy_cnext(c);
 if (c->zroot.znode) {
  long n, freed;

  n = atomic_long_read(&c->clean_zn_cnt);
  freed = ubifs_destroy_tnc_subtree(c, c->zroot.znode);
  ubifs_assert(c, freed == n);
  atomic_long_sub(n, &ubifs_clean_zn_cnt);
 }
 kfree(c->gap_lebs);
 kfree(c->ilebs);
 destroy_old_idx(c);
}
