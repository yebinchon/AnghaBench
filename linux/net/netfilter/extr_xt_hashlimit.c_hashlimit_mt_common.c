
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int mode; int expire; } ;
struct xt_hashlimit_htable {TYPE_1__ cfg; } ;
struct xt_action_param {int hotdrop; int thoff; } ;
struct sk_buff {int len; } ;
struct hashlimit_cfg3 {int mode; } ;
struct TYPE_4__ {scalar_t__ current_rate; scalar_t__ burst; int cost; int credit; int prev_window; } ;
struct dsthash_ent {int lock; TYPE_2__ rateinfo; void* expires; } ;
struct dsthash_dst {int dummy; } ;


 int XT_HASHLIMIT_BYTES ;
 int XT_HASHLIMIT_INVERT ;
 int XT_HASHLIMIT_RATE_MATCH ;
 struct dsthash_ent* dsthash_alloc_init (struct xt_hashlimit_htable*,struct dsthash_dst*,int*) ;
 struct dsthash_ent* dsthash_find (struct xt_hashlimit_htable*,struct dsthash_dst*) ;
 int hashlimit_byte_cost (int,struct dsthash_ent*) ;
 scalar_t__ hashlimit_init_dst (struct xt_hashlimit_htable*,struct dsthash_dst*,struct sk_buff const*,int ) ;
 unsigned long jiffies ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 void* msecs_to_jiffies (int ) ;
 int rateinfo_init (struct dsthash_ent*,struct xt_hashlimit_htable*,int) ;
 int rateinfo_recalc (struct dsthash_ent*,unsigned long,int ,int) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool
hashlimit_mt_common(const struct sk_buff *skb, struct xt_action_param *par,
      struct xt_hashlimit_htable *hinfo,
      const struct hashlimit_cfg3 *cfg, int revision)
{
 unsigned long now = jiffies;
 struct dsthash_ent *dh;
 struct dsthash_dst dst;
 bool race = 0;
 u64 cost;

 if (hashlimit_init_dst(hinfo, &dst, skb, par->thoff) < 0)
  goto hotdrop;

 local_bh_disable();
 dh = dsthash_find(hinfo, &dst);
 if (dh == ((void*)0)) {
  dh = dsthash_alloc_init(hinfo, &dst, &race);
  if (dh == ((void*)0)) {
   local_bh_enable();
   goto hotdrop;
  } else if (race) {

   dh->expires = now + msecs_to_jiffies(hinfo->cfg.expire);
   rateinfo_recalc(dh, now, hinfo->cfg.mode, revision);
  } else {
   dh->expires = jiffies + msecs_to_jiffies(hinfo->cfg.expire);
   rateinfo_init(dh, hinfo, revision);
  }
 } else {

  dh->expires = now + msecs_to_jiffies(hinfo->cfg.expire);
  rateinfo_recalc(dh, now, hinfo->cfg.mode, revision);
 }

 if (cfg->mode & XT_HASHLIMIT_RATE_MATCH) {
  cost = (cfg->mode & XT_HASHLIMIT_BYTES) ? skb->len : 1;
  dh->rateinfo.current_rate += cost;

  if (!dh->rateinfo.prev_window &&
      (dh->rateinfo.current_rate <= dh->rateinfo.burst)) {
   spin_unlock(&dh->lock);
   local_bh_enable();
   return !(cfg->mode & XT_HASHLIMIT_INVERT);
  } else {
   goto overlimit;
  }
 }

 if (cfg->mode & XT_HASHLIMIT_BYTES)
  cost = hashlimit_byte_cost(skb->len, dh);
 else
  cost = dh->rateinfo.cost;

 if (dh->rateinfo.credit >= cost) {

  dh->rateinfo.credit -= cost;
  spin_unlock(&dh->lock);
  local_bh_enable();
  return !(cfg->mode & XT_HASHLIMIT_INVERT);
 }

overlimit:
 spin_unlock(&dh->lock);
 local_bh_enable();

 return cfg->mode & XT_HASHLIMIT_INVERT;

 hotdrop:
 par->hotdrop = 1;
 return 0;
}
