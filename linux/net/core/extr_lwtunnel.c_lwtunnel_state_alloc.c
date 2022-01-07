
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {int dummy; } ;


 int GFP_ATOMIC ;
 struct lwtunnel_state* kzalloc (int,int ) ;

struct lwtunnel_state *lwtunnel_state_alloc(int encap_len)
{
 struct lwtunnel_state *lws;

 lws = kzalloc(sizeof(*lws) + encap_len, GFP_ATOMIC);

 return lws;
}
