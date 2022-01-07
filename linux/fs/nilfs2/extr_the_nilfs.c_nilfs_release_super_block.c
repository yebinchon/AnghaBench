
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ** ns_sbp; int ** ns_sbh; } ;


 int brelse (int *) ;

__attribute__((used)) static void nilfs_release_super_block(struct the_nilfs *nilfs)
{
 int i;

 for (i = 0; i < 2; i++) {
  if (nilfs->ns_sbp[i]) {
   brelse(nilfs->ns_sbh[i]);
   nilfs->ns_sbh[i] = ((void*)0);
   nilfs->ns_sbp[i] = ((void*)0);
  }
 }
}
