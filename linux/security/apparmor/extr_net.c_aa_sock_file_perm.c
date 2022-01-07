
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socket {int sk; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int aa_label_sk_perm (struct aa_label*,char const*,int ,int ) ;

int aa_sock_file_perm(struct aa_label *label, const char *op, u32 request,
        struct socket *sock)
{
 AA_BUG(!label);
 AA_BUG(!sock);
 AA_BUG(!sock->sk);

 return aa_label_sk_perm(label, op, request, sock->sk);
}
