
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int num_dests; int port; int addr; int af; } ;
struct ip_vs_mh_state {int * dest_setup; } ;
struct ip_vs_mh_dest_setup {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ) ;
 int IP_VS_MH_TAB_SIZE ;
 int ip_vs_mh_permutate (struct ip_vs_mh_state*,struct ip_vs_service*) ;
 int ip_vs_mh_populate (struct ip_vs_mh_state*,struct ip_vs_service*) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int ntohs (int ) ;

__attribute__((used)) static int ip_vs_mh_reassign(struct ip_vs_mh_state *s,
        struct ip_vs_service *svc)
{
 int ret;

 if (svc->num_dests > IP_VS_MH_TAB_SIZE)
  return -EINVAL;

 if (svc->num_dests >= 1) {
  s->dest_setup = kcalloc(svc->num_dests,
     sizeof(struct ip_vs_mh_dest_setup),
     GFP_KERNEL);
  if (!s->dest_setup)
   return -ENOMEM;
 }

 ip_vs_mh_permutate(s, svc);

 ret = ip_vs_mh_populate(s, svc);
 if (ret < 0)
  goto out;

 IP_VS_DBG_BUF(6, "MH: reassign lookup table of %s:%u\n",
        IP_VS_DBG_ADDR(svc->af, &svc->addr),
        ntohs(svc->port));

out:
 if (svc->num_dests >= 1) {
  kfree(s->dest_setup);
  s->dest_setup = ((void*)0);
 }
 return ret;
}
