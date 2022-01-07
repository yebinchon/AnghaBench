
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashlimit_cfg3 {int dstmask; int srcmask; int expire; int gc_interval; int max; int size; int burst; int avg; int mode; } ;
struct hashlimit_cfg2 {int dstmask; int srcmask; int expire; int gc_interval; int max; int size; int burst; int avg; int mode; } ;
struct hashlimit_cfg1 {int dstmask; int srcmask; int expire; int gc_interval; int max; int size; int burst; int avg; int mode; } ;


 int EINVAL ;
 int memcpy (struct hashlimit_cfg3*,void const*,int) ;

__attribute__((used)) static int
cfg_copy(struct hashlimit_cfg3 *to, const void *from, int revision)
{
 if (revision == 1) {
  struct hashlimit_cfg1 *cfg = (struct hashlimit_cfg1 *)from;

  to->mode = cfg->mode;
  to->avg = cfg->avg;
  to->burst = cfg->burst;
  to->size = cfg->size;
  to->max = cfg->max;
  to->gc_interval = cfg->gc_interval;
  to->expire = cfg->expire;
  to->srcmask = cfg->srcmask;
  to->dstmask = cfg->dstmask;
 } else if (revision == 2) {
  struct hashlimit_cfg2 *cfg = (struct hashlimit_cfg2 *)from;

  to->mode = cfg->mode;
  to->avg = cfg->avg;
  to->burst = cfg->burst;
  to->size = cfg->size;
  to->max = cfg->max;
  to->gc_interval = cfg->gc_interval;
  to->expire = cfg->expire;
  to->srcmask = cfg->srcmask;
  to->dstmask = cfg->dstmask;
 } else if (revision == 3) {
  memcpy(to, from, sizeof(struct hashlimit_cfg3));
 } else {
  return -EINVAL;
 }

 return 0;
}
