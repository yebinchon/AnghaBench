
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sco_conn {scalar_t__ sk; } ;


 int EBUSY ;
 int __sco_chan_add (struct sco_conn*,struct sock*,struct sock*) ;
 int sco_conn_lock (struct sco_conn*) ;
 int sco_conn_unlock (struct sco_conn*) ;

__attribute__((used)) static int sco_chan_add(struct sco_conn *conn, struct sock *sk,
   struct sock *parent)
{
 int err = 0;

 sco_conn_lock(conn);
 if (conn->sk)
  err = -EBUSY;
 else
  __sco_chan_add(conn, sk, parent);

 sco_conn_unlock(conn);
 return err;
}
