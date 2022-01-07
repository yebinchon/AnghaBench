
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_bit_key {int dummy; } ;


 int nfs_wait_killable (int) ;

int nfs_wait_bit_killable(struct wait_bit_key *key, int mode)
{
 return nfs_wait_killable(mode);
}
