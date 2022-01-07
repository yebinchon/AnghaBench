
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int peer_sid; int sid; } ;
struct request_sock {TYPE_1__* rsk_ops; int peer_secid; int secid; } ;
struct TYPE_2__ {int family; } ;


 int selinux_netlbl_inet_csk_clone (struct sock*,int ) ;

__attribute__((used)) static void selinux_inet_csk_clone(struct sock *newsk,
       const struct request_sock *req)
{
 struct sk_security_struct *newsksec = newsk->sk_security;

 newsksec->sid = req->secid;
 newsksec->peer_sid = req->peer_secid;







 selinux_netlbl_inet_csk_clone(newsk, req->rsk_ops->family);
}
