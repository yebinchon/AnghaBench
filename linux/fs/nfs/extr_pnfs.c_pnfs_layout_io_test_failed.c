
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnfs_layout_hdr {int plh_retry_timestamp; int plh_flags; } ;


 unsigned long PNFS_LAYOUTGET_RETRY_TIMEOUT ;
 unsigned long jiffies ;
 int pnfs_iomode_to_fail_bit (int ) ;
 int pnfs_layout_clear_fail_bit (struct pnfs_layout_hdr*,int) ;
 scalar_t__ test_bit (int,int *) ;
 int time_in_range (int ,unsigned long,unsigned long) ;

__attribute__((used)) static bool
pnfs_layout_io_test_failed(struct pnfs_layout_hdr *lo, u32 iomode)
{
 unsigned long start, end;
 int fail_bit = pnfs_iomode_to_fail_bit(iomode);

 if (test_bit(fail_bit, &lo->plh_flags) == 0)
  return 0;
 end = jiffies;
 start = end - PNFS_LAYOUTGET_RETRY_TIMEOUT;
 if (!time_in_range(lo->plh_retry_timestamp, start, end)) {

  pnfs_layout_clear_fail_bit(lo, fail_bit);
  return 0;
 }
 return 1;
}
