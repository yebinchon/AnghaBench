
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_error_report ) (struct sock*) ;int sk_err; } ;


 int EPIPE ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void report_csk_error(struct sock *csk, int err)
{
 csk->sk_err = EPIPE;
 csk->sk_error_report(csk);
}
