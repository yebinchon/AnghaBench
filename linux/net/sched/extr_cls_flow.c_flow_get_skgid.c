
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sock {TYPE_3__* sk_socket; } ;
struct sk_buff {int dummy; } ;
typedef int kgid_t ;
struct TYPE_6__ {TYPE_2__* file; } ;
struct TYPE_5__ {TYPE_1__* f_cred; } ;
struct TYPE_4__ {int fsgid; } ;


 int from_kgid (int *,int ) ;
 int init_user_ns ;
 struct sock* skb_to_full_sk (struct sk_buff const*) ;

__attribute__((used)) static u32 flow_get_skgid(const struct sk_buff *skb)
{
 struct sock *sk = skb_to_full_sk(skb);

 if (sk && sk->sk_socket && sk->sk_socket->file) {
  kgid_t skgid = sk->sk_socket->file->f_cred->fsgid;

  return from_kgid(&init_user_ns, skgid);
 }
 return 0;
}
