
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int plh_refcount; int plh_flags; } ;


 int refcount_dec (int *) ;
 scalar_t__ test_and_clear_bit (int,int *) ;

__attribute__((used)) static void
pnfs_layout_clear_fail_bit(struct pnfs_layout_hdr *lo, int fail_bit)
{
 if (test_and_clear_bit(fail_bit, &lo->plh_flags))
  refcount_dec(&lo->plh_refcount);
}
