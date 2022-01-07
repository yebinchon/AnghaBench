
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sh_state {int dummy; } ;
struct ip_vs_sh_bucket {int dummy; } ;
struct ip_vs_service {struct ip_vs_sh_state* sched_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IP_VS_DBG (int,char*,int) ;
 int IP_VS_SH_TAB_SIZE ;
 int ip_vs_sh_reassign (struct ip_vs_sh_state*,struct ip_vs_service*) ;
 struct ip_vs_sh_state* kzalloc (int,int ) ;

__attribute__((used)) static int ip_vs_sh_init_svc(struct ip_vs_service *svc)
{
 struct ip_vs_sh_state *s;


 s = kzalloc(sizeof(struct ip_vs_sh_state), GFP_KERNEL);
 if (s == ((void*)0))
  return -ENOMEM;

 svc->sched_data = s;
 IP_VS_DBG(6, "SH hash table (memory=%zdbytes) allocated for "
    "current service\n",
    sizeof(struct ip_vs_sh_bucket)*IP_VS_SH_TAB_SIZE);


 ip_vs_sh_reassign(s, svc);

 return 0;
}
