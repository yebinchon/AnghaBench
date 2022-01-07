
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {struct ip_vs_mh_state* sched_data; } ;
struct ip_vs_mh_state {int gcd; int rshift; } ;
struct ip_vs_dest {int dummy; } ;


 int ip_vs_mh_gcd_weight (struct ip_vs_service*) ;
 int ip_vs_mh_reassign (struct ip_vs_mh_state*,struct ip_vs_service*) ;
 int ip_vs_mh_shift_weight (struct ip_vs_service*,int ) ;

__attribute__((used)) static int ip_vs_mh_dest_changed(struct ip_vs_service *svc,
     struct ip_vs_dest *dest)
{
 struct ip_vs_mh_state *s = svc->sched_data;

 s->gcd = ip_vs_mh_gcd_weight(svc);
 s->rshift = ip_vs_mh_shift_weight(svc, s->gcd);


 return ip_vs_mh_reassign(s, svc);
}
