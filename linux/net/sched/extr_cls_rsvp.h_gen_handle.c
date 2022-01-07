
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tcf_proto {int root; } ;
struct rsvp_head {int hgenerator; } ;


 int rsvp_get (struct tcf_proto*,unsigned int) ;
 struct rsvp_head* rtnl_dereference (int ) ;

__attribute__((used)) static unsigned int gen_handle(struct tcf_proto *tp, unsigned salt)
{
 struct rsvp_head *data = rtnl_dereference(tp->root);
 int i = 0xFFFF;

 while (i-- > 0) {
  u32 h;

  if ((data->hgenerator += 0x10000) == 0)
   data->hgenerator = 0x10000;
  h = data->hgenerator|salt;
  if (!rsvp_get(tp, h))
   return h;
 }
 return 0;
}
