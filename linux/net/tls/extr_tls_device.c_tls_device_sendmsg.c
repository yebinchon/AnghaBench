
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int tx_lock; } ;
struct sock {int dummy; } ;
struct msghdr {int msg_flags; int msg_iter; int msg_controllen; } ;


 unsigned char TLS_RECORD_TYPE_DATA ;
 int lock_sock (struct sock*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_sock (struct sock*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 int tls_proccess_cmsg (struct sock*,struct msghdr*,unsigned char*) ;
 int tls_push_data (struct sock*,int *,size_t,int ,unsigned char) ;
 scalar_t__ unlikely (int ) ;

int tls_device_sendmsg(struct sock *sk, struct msghdr *msg, size_t size)
{
 unsigned char record_type = TLS_RECORD_TYPE_DATA;
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 int rc;

 mutex_lock(&tls_ctx->tx_lock);
 lock_sock(sk);

 if (unlikely(msg->msg_controllen)) {
  rc = tls_proccess_cmsg(sk, msg, &record_type);
  if (rc)
   goto out;
 }

 rc = tls_push_data(sk, &msg->msg_iter, size,
      msg->msg_flags, record_type);

out:
 release_sock(sk);
 mutex_unlock(&tls_ctx->tx_lock);
 return rc;
}
