
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ip_frag_state {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int ip_options_fragment (struct sk_buff*) ;

__attribute__((used)) static void ip_frag_ipcb(struct sk_buff *from, struct sk_buff *to,
    bool first_frag, struct ip_frag_state *state)
{

 IPCB(to)->flags = IPCB(from)->flags;







 if (first_frag)
  ip_options_fragment(from);
}
