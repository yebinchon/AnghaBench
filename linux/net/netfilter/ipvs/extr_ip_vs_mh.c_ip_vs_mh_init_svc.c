
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {struct ip_vs_mh_state* sched_data; } ;
struct ip_vs_mh_state {int rcu_head; int gcd; int rshift; int hash2; int hash1; int lookup; } ;
struct ip_vs_mh_lookup {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IP_VS_DBG (int,char*,int) ;
 int IP_VS_MH_TAB_SIZE ;
 int generate_hash_secret (int *,int *) ;
 int ip_vs_mh_gcd_weight (struct ip_vs_service*) ;
 int ip_vs_mh_reassign (struct ip_vs_mh_state*,struct ip_vs_service*) ;
 int ip_vs_mh_reset (struct ip_vs_mh_state*) ;
 int ip_vs_mh_shift_weight (struct ip_vs_service*,int ) ;
 int ip_vs_mh_state_free (int *) ;
 int kcalloc (int,int,int ) ;
 int kfree (struct ip_vs_mh_state*) ;
 struct ip_vs_mh_state* kzalloc (int,int ) ;

__attribute__((used)) static int ip_vs_mh_init_svc(struct ip_vs_service *svc)
{
 int ret;
 struct ip_vs_mh_state *s;


 s = kzalloc(sizeof(*s), GFP_KERNEL);
 if (!s)
  return -ENOMEM;

 s->lookup = kcalloc(IP_VS_MH_TAB_SIZE, sizeof(struct ip_vs_mh_lookup),
       GFP_KERNEL);
 if (!s->lookup) {
  kfree(s);
  return -ENOMEM;
 }

 generate_hash_secret(&s->hash1, &s->hash2);
 s->gcd = ip_vs_mh_gcd_weight(svc);
 s->rshift = ip_vs_mh_shift_weight(svc, s->gcd);

 IP_VS_DBG(6,
    "MH lookup table (memory=%zdbytes) allocated for current service\n",
    sizeof(struct ip_vs_mh_lookup) * IP_VS_MH_TAB_SIZE);


 ret = ip_vs_mh_reassign(s, svc);
 if (ret < 0) {
  ip_vs_mh_reset(s);
  ip_vs_mh_state_free(&s->rcu_head);
  return ret;
 }


 svc->sched_data = s;
 return 0;
}
