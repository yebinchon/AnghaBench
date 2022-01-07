
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct discard_policy {int type; int sync; int ordered; unsigned int granularity; int io_aware; int max_requests; void* max_interval; void* mid_interval; void* min_interval; scalar_t__ timeout; int io_aware_gran; } ;


 scalar_t__ DEF_DISCARD_URGENT_UTIL ;
 void* DEF_MAX_DISCARD_ISSUE_TIME ;
 int DEF_MAX_DISCARD_REQUEST ;
 void* DEF_MID_DISCARD_ISSUE_TIME ;
 void* DEF_MIN_DISCARD_ISSUE_TIME ;
 int DPOLICY_BG ;
 int DPOLICY_FORCE ;
 int DPOLICY_FSTRIM ;
 int DPOLICY_UMOUNT ;
 int MAX_PLIST_NUM ;
 int UINT_MAX ;
 scalar_t__ utilization (struct f2fs_sb_info*) ;

__attribute__((used)) static void __init_discard_policy(struct f2fs_sb_info *sbi,
    struct discard_policy *dpolicy,
    int discard_type, unsigned int granularity)
{

 dpolicy->type = discard_type;
 dpolicy->sync = 1;
 dpolicy->ordered = 0;
 dpolicy->granularity = granularity;

 dpolicy->max_requests = DEF_MAX_DISCARD_REQUEST;
 dpolicy->io_aware_gran = MAX_PLIST_NUM;
 dpolicy->timeout = 0;

 if (discard_type == DPOLICY_BG) {
  dpolicy->min_interval = DEF_MIN_DISCARD_ISSUE_TIME;
  dpolicy->mid_interval = DEF_MID_DISCARD_ISSUE_TIME;
  dpolicy->max_interval = DEF_MAX_DISCARD_ISSUE_TIME;
  dpolicy->io_aware = 1;
  dpolicy->sync = 0;
  dpolicy->ordered = 1;
  if (utilization(sbi) > DEF_DISCARD_URGENT_UTIL) {
   dpolicy->granularity = 1;
   dpolicy->max_interval = DEF_MIN_DISCARD_ISSUE_TIME;
  }
 } else if (discard_type == DPOLICY_FORCE) {
  dpolicy->min_interval = DEF_MIN_DISCARD_ISSUE_TIME;
  dpolicy->mid_interval = DEF_MID_DISCARD_ISSUE_TIME;
  dpolicy->max_interval = DEF_MAX_DISCARD_ISSUE_TIME;
  dpolicy->io_aware = 0;
 } else if (discard_type == DPOLICY_FSTRIM) {
  dpolicy->io_aware = 0;
 } else if (discard_type == DPOLICY_UMOUNT) {
  dpolicy->max_requests = UINT_MAX;
  dpolicy->io_aware = 0;

  dpolicy->granularity = 1;
 }
}
