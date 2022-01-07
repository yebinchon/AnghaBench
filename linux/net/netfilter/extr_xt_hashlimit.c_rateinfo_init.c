
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int mode; int avg; int burst; int interval; } ;
struct xt_hashlimit_htable {TYPE_1__ cfg; } ;
struct TYPE_4__ {int rate; int burst; int credit; int credit_cap; void* cost; int interval; scalar_t__ current_rate; scalar_t__ prev_window; int prev; } ;
struct dsthash_ent {TYPE_2__ rateinfo; } ;


 int CREDITS_PER_JIFFY_BYTES ;
 int HZ ;
 int XT_HASHLIMIT_BYTES ;
 int XT_HASHLIMIT_RATE_MATCH ;
 int jiffies ;
 void* user2credits (int,int) ;
 void* user2credits_byte (int) ;
 int user2rate (int) ;
 int user2rate_bytes (int ) ;

__attribute__((used)) static void rateinfo_init(struct dsthash_ent *dh,
     struct xt_hashlimit_htable *hinfo, int revision)
{
 dh->rateinfo.prev = jiffies;
 if (revision >= 3 && hinfo->cfg.mode & XT_HASHLIMIT_RATE_MATCH) {
  dh->rateinfo.prev_window = 0;
  dh->rateinfo.current_rate = 0;
  if (hinfo->cfg.mode & XT_HASHLIMIT_BYTES) {
   dh->rateinfo.rate =
    user2rate_bytes((u32)hinfo->cfg.avg);
   if (hinfo->cfg.burst)
    dh->rateinfo.burst =
     hinfo->cfg.burst * dh->rateinfo.rate;
   else
    dh->rateinfo.burst = dh->rateinfo.rate;
  } else {
   dh->rateinfo.rate = user2rate(hinfo->cfg.avg);
   dh->rateinfo.burst =
    hinfo->cfg.burst + dh->rateinfo.rate;
  }
  dh->rateinfo.interval = hinfo->cfg.interval;
 } else if (hinfo->cfg.mode & XT_HASHLIMIT_BYTES) {
  dh->rateinfo.credit = CREDITS_PER_JIFFY_BYTES * HZ;
  dh->rateinfo.cost = user2credits_byte(hinfo->cfg.avg);
  dh->rateinfo.credit_cap = hinfo->cfg.burst;
 } else {
  dh->rateinfo.credit = user2credits(hinfo->cfg.avg *
         hinfo->cfg.burst, revision);
  dh->rateinfo.cost = user2credits(hinfo->cfg.avg, revision);
  dh->rateinfo.credit_cap = dh->rateinfo.credit;
 }
}
