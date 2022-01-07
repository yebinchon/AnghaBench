
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_sctp_info {scalar_t__* spts; scalar_t__* dpts; int invflags; int flags; } ;
struct xt_action_param {scalar_t__ fragoff; int hotdrop; scalar_t__ thoff; struct xt_sctp_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct sctphdr {int dest; int source; } ;
typedef int _sh ;


 scalar_t__ SCCHECK (int,int ,int ,int ) ;
 int XT_SCTP_CHUNK_TYPES ;
 int XT_SCTP_DEST_PORTS ;
 int XT_SCTP_SRC_PORTS ;
 int match_packet (struct sk_buff const*,scalar_t__,struct xt_sctp_info const*,int*) ;
 scalar_t__ ntohs (int ) ;
 int pr_debug (char*,...) ;
 struct sctphdr* skb_header_pointer (struct sk_buff const*,scalar_t__,int,struct sctphdr*) ;

__attribute__((used)) static bool
sctp_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_sctp_info *info = par->matchinfo;
 const struct sctphdr *sh;
 struct sctphdr _sh;

 if (par->fragoff != 0) {
  pr_debug("Dropping non-first fragment.. FIXME\n");
  return 0;
 }

 sh = skb_header_pointer(skb, par->thoff, sizeof(_sh), &_sh);
 if (sh == ((void*)0)) {
  pr_debug("Dropping evil TCP offset=0 tinygram.\n");
  par->hotdrop = 1;
  return 0;
 }
 pr_debug("spt: %d\tdpt: %d\n", ntohs(sh->source), ntohs(sh->dest));

 return SCCHECK(ntohs(sh->source) >= info->spts[0]
   && ntohs(sh->source) <= info->spts[1],
   XT_SCTP_SRC_PORTS, info->flags, info->invflags) &&
  SCCHECK(ntohs(sh->dest) >= info->dpts[0]
   && ntohs(sh->dest) <= info->dpts[1],
   XT_SCTP_DEST_PORTS, info->flags, info->invflags) &&
  SCCHECK(match_packet(skb, par->thoff + sizeof(_sh),
         info, &par->hotdrop),
   XT_SCTP_CHUNK_TYPES, info->flags, info->invflags);
}
