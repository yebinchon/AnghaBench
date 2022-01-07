
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {scalar_t__ actions_len; } ;


 int ENOMEM ;
 struct sw_flow_actions* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MAX_ACTIONS_BUFSIZE ;
 int WARN_ON_ONCE (int) ;
 struct sw_flow_actions* kmalloc (int,int ) ;

__attribute__((used)) static struct sw_flow_actions *nla_alloc_flow_actions(int size)
{
 struct sw_flow_actions *sfa;

 WARN_ON_ONCE(size > MAX_ACTIONS_BUFSIZE);

 sfa = kmalloc(sizeof(*sfa) + size, GFP_KERNEL);
 if (!sfa)
  return ERR_PTR(-ENOMEM);

 sfa->actions_len = 0;
 return sfa;
}
