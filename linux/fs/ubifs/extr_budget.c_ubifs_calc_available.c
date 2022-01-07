
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long total_used; int idx_lebs; scalar_t__ total_dark; scalar_t__ total_dead; } ;
struct ubifs_info {long long main_bytes; int jhead_cnt; long long leb_size; int dark_wm; TYPE_1__ lst; } ;



long long ubifs_calc_available(const struct ubifs_info *c, int min_idx_lebs)
{
 int subtract_lebs;
 long long available;

 available = c->main_bytes - c->lst.total_used;






 subtract_lebs = min_idx_lebs;


 subtract_lebs += 1;






 subtract_lebs += c->jhead_cnt - 1;


 subtract_lebs += 1;

 available -= (long long)subtract_lebs * c->leb_size;


 available -= c->lst.total_dead;







 available -= c->lst.total_dark;







 if (c->lst.idx_lebs > min_idx_lebs) {
  subtract_lebs = c->lst.idx_lebs - min_idx_lebs;
  available -= subtract_lebs * c->dark_wm;
 }


 return available > 0 ? available : 0;
}
