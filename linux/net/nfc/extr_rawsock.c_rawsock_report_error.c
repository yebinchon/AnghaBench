
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_err; int (* sk_error_report ) (struct sock*) ;int sk_shutdown; } ;


 int SHUTDOWN_MASK ;
 int pr_debug (char*,struct sock*,int) ;
 int rawsock_write_queue_purge (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void rawsock_report_error(struct sock *sk, int err)
{
 pr_debug("sk=%p err=%d\n", sk, err);

 sk->sk_shutdown = SHUTDOWN_MASK;
 sk->sk_err = -err;
 sk->sk_error_report(sk);

 rawsock_write_queue_purge(sk);
}
