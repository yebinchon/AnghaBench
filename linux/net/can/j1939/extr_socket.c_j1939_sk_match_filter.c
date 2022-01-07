
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct j1939_sock {int nfilters; struct j1939_filter* filters; } ;
struct TYPE_2__ {int pgn; int sa; int src_name; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_filter {int pgn_mask; int pgn; int addr_mask; int addr; int name_mask; int name; } ;



__attribute__((used)) static bool j1939_sk_match_filter(struct j1939_sock *jsk,
      const struct j1939_sk_buff_cb *skcb)
{
 const struct j1939_filter *f = jsk->filters;
 int nfilter = jsk->nfilters;

 if (!nfilter)

  return 1;

 for (; nfilter; ++f, --nfilter) {
  if ((skcb->addr.pgn & f->pgn_mask) != f->pgn)
   continue;
  if ((skcb->addr.sa & f->addr_mask) != f->addr)
   continue;
  if ((skcb->addr.src_name & f->name_mask) != f->name)
   continue;
  return 1;
 }
 return 0;
}
