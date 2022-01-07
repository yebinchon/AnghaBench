
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_connmark_tginfo2 {int mode; int nfmask; int ctmask; int ctmark; } ;
struct xt_connmark_tginfo1 {int mode; int nfmask; int ctmask; int ctmark; } ;
struct xt_action_param {struct xt_connmark_tginfo1* targinfo; } ;
struct sk_buff {int dummy; } ;


 unsigned int connmark_tg_shift (struct sk_buff*,struct xt_connmark_tginfo2 const*) ;

__attribute__((used)) static unsigned int
connmark_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_connmark_tginfo1 *info = par->targinfo;
 const struct xt_connmark_tginfo2 info2 = {
  .ctmark = info->ctmark,
  .ctmask = info->ctmask,
  .nfmask = info->nfmask,
  .mode = info->mode,
 };

 return connmark_tg_shift(skb, &info2);
}
