
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {struct sock* sk; TYPE_1__* ops; int type; } ;
struct sock {TYPE_2__* sk_prot_creator; } ;
struct file {int dummy; } ;
struct TYPE_7__ {int mux; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int owner; } ;


 int ENFILE ;
 int ENOMEM ;
 struct file* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PF_KCM ;
 int __module_get (int ) ;
 int init_kcm_sock (TYPE_3__*,int ) ;
 int kcm_proto ;
 TYPE_3__* kcm_sk (struct sock*) ;
 struct sock* sk_alloc (int ,int ,int ,int *,int) ;
 struct socket* sock_alloc () ;
 struct file* sock_alloc_file (struct socket*,int ,int ) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_release (struct socket*) ;

__attribute__((used)) static struct file *kcm_clone(struct socket *osock)
{
 struct socket *newsock;
 struct sock *newsk;

 newsock = sock_alloc();
 if (!newsock)
  return ERR_PTR(-ENFILE);

 newsock->type = osock->type;
 newsock->ops = osock->ops;

 __module_get(newsock->ops->owner);

 newsk = sk_alloc(sock_net(osock->sk), PF_KCM, GFP_KERNEL,
    &kcm_proto, 0);
 if (!newsk) {
  sock_release(newsock);
  return ERR_PTR(-ENOMEM);
 }
 sock_init_data(newsock, newsk);
 init_kcm_sock(kcm_sk(newsk), kcm_sk(osock->sk)->mux);

 return sock_alloc_file(newsock, 0, osock->sk->sk_prot_creator->name);
}
