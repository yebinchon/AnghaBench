
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htb_class {int ctokens; int cbuffer; int mbuffer; int ceil; } ;
typedef int s64 ;


 scalar_t__ psched_l2t_ns (int *,int) ;

__attribute__((used)) static inline void htb_accnt_ctokens(struct htb_class *cl, int bytes, s64 diff)
{
 s64 toks = diff + cl->ctokens;

 if (toks > cl->cbuffer)
  toks = cl->cbuffer;
 toks -= (s64) psched_l2t_ns(&cl->ceil, bytes);
 if (toks <= -cl->mbuffer)
  toks = 1 - cl->mbuffer;

 cl->ctokens = toks;
}
