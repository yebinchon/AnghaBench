
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct smc_spd_priv {int len; struct smc_sock* smc; } ;
struct smc_connection {int splice_pending; } ;
struct smc_sock {struct smc_connection conn; struct sock sk; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int page; scalar_t__ private; } ;


 scalar_t__ SMC_APPFINCLOSEWAIT ;
 scalar_t__ SMC_CLOSED ;
 scalar_t__ SMC_PEERFINCLOSEWAIT ;
 scalar_t__ atomic_sub_and_test (int ,int *) ;
 int kfree (struct smc_spd_priv*) ;
 int lock_sock (struct sock*) ;
 int put_page (int ) ;
 int release_sock (struct sock*) ;
 int smc_rx_update_cons (struct smc_sock*,int ) ;
 int smc_rx_wake_up (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void smc_rx_pipe_buf_release(struct pipe_inode_info *pipe,
        struct pipe_buffer *buf)
{
 struct smc_spd_priv *priv = (struct smc_spd_priv *)buf->private;
 struct smc_sock *smc = priv->smc;
 struct smc_connection *conn;
 struct sock *sk = &smc->sk;

 if (sk->sk_state == SMC_CLOSED ||
     sk->sk_state == SMC_PEERFINCLOSEWAIT ||
     sk->sk_state == SMC_APPFINCLOSEWAIT)
  goto out;
 conn = &smc->conn;
 lock_sock(sk);
 smc_rx_update_cons(smc, priv->len);
 release_sock(sk);
 if (atomic_sub_and_test(priv->len, &conn->splice_pending))
  smc_rx_wake_up(sk);
out:
 kfree(priv);
 put_page(buf->page);
 sock_put(sk);
}
