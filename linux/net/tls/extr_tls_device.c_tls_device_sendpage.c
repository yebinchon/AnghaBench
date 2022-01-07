
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int tx_lock; } ;
struct sock {int dummy; } ;
struct page {int dummy; } ;
struct kvec {char* iov_base; size_t iov_len; } ;
struct iov_iter {int dummy; } ;


 int ENOTSUPP ;
 int MSG_MORE ;
 int MSG_OOB ;
 int MSG_SENDPAGE_NOTLAST ;
 int TLS_RECORD_TYPE_DATA ;
 int WRITE ;
 int iov_iter_kvec (struct iov_iter*,int ,struct kvec*,int,size_t) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int lock_sock (struct sock*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_sock (struct sock*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 int tls_push_data (struct sock*,struct iov_iter*,size_t,int,int ) ;

int tls_device_sendpage(struct sock *sk, struct page *page,
   int offset, size_t size, int flags)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct iov_iter msg_iter;
 char *kaddr = kmap(page);
 struct kvec iov;
 int rc;

 if (flags & MSG_SENDPAGE_NOTLAST)
  flags |= MSG_MORE;

 mutex_lock(&tls_ctx->tx_lock);
 lock_sock(sk);

 if (flags & MSG_OOB) {
  rc = -ENOTSUPP;
  goto out;
 }

 iov.iov_base = kaddr + offset;
 iov.iov_len = size;
 iov_iter_kvec(&msg_iter, WRITE, &iov, 1, size);
 rc = tls_push_data(sk, &msg_iter, size,
      flags, TLS_RECORD_TYPE_DATA);
 kunmap(page);

out:
 release_sock(sk);
 mutex_unlock(&tls_ctx->tx_lock);
 return rc;
}
