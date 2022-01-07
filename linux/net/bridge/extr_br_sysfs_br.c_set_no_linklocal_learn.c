
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int BR_BOOLOPT_NO_LL_LEARN ;
 int br_boolopt_toggle (struct net_bridge*,int ,int,int *) ;

__attribute__((used)) static int set_no_linklocal_learn(struct net_bridge *br, unsigned long val)
{
 return br_boolopt_toggle(br, BR_BOOLOPT_NO_LL_LEARN, !!val, ((void*)0));
}
