
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_allocation; } ;
struct iucv_sock {scalar_t__ msglimit; int transport; int src_user_id; } ;
struct TYPE_2__ {int lock; } ;


 int AF_IUCV_TRANS_IUCV ;
 int EPROTO ;
 int GFP_DMA ;
 scalar_t__ IUCV_QUEUELEN_DEFAULT ;
 int __iucv_auto_name (struct iucv_sock*) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 TYPE_1__ iucv_sk_list ;
 int iucv_userid ;
 int memcpy (int ,int ,int) ;
 int pr_iucv ;
 scalar_t__ unlikely (int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int iucv_sock_autobind(struct sock *sk)
{
 struct iucv_sock *iucv = iucv_sk(sk);
 int err = 0;

 if (unlikely(!pr_iucv))
  return -EPROTO;

 memcpy(iucv->src_user_id, iucv_userid, 8);
 iucv->transport = AF_IUCV_TRANS_IUCV;
 sk->sk_allocation |= GFP_DMA;

 write_lock_bh(&iucv_sk_list.lock);
 __iucv_auto_name(iucv);
 write_unlock_bh(&iucv_sk_list.lock);

 if (!iucv->msglimit)
  iucv->msglimit = IUCV_QUEUELEN_DEFAULT;

 return err;
}
