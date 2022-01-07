
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int * sk_data_ready; } ;
struct sk_psock_parser {int enabled; int strp; int * saved_data_ready; } ;
struct sk_psock {struct sk_psock_parser parser; } ;


 int strp_stop (int *) ;

void sk_psock_stop_strp(struct sock *sk, struct sk_psock *psock)
{
 struct sk_psock_parser *parser = &psock->parser;

 if (!parser->enabled)
  return;

 sk->sk_data_ready = parser->saved_data_ready;
 parser->saved_data_ready = ((void*)0);
 strp_stop(&parser->strp);
 parser->enabled = 0;
}
