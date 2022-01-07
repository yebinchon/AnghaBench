
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int plh_refcount; int plh_flags; int plh_retry_timestamp; } ;


 int jiffies ;
 int refcount_inc (int *) ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static void
pnfs_layout_set_fail_bit(struct pnfs_layout_hdr *lo, int fail_bit)
{
 lo->plh_retry_timestamp = jiffies;
 if (!test_and_set_bit(fail_bit, &lo->plh_flags))
  refcount_inc(&lo->plh_refcount);
}
