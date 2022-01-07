
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int aa_label_sk_perm (struct aa_label*,char const*,int ,struct sock*) ;
 struct aa_label* begin_current_label_crit_section () ;
 int end_current_label_crit_section (struct aa_label*) ;
 int in_interrupt () ;

int aa_sk_perm(const char *op, u32 request, struct sock *sk)
{
 struct aa_label *label;
 int error;

 AA_BUG(!sk);
 AA_BUG(in_interrupt());


 label = begin_current_label_crit_section();
 error = aa_label_sk_perm(label, op, request, sk);
 end_current_label_crit_section(label);

 return error;
}
