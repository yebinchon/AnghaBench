
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_space; int sk_data_ready; } ;
struct sk_psock_parser {int enabled; int saved_data_ready; } ;
struct sk_psock {struct sk_psock_parser parser; } ;


 int sk_psock_strp_data_ready ;
 int sk_psock_write_space ;

void sk_psock_start_strp(struct sock *sk, struct sk_psock *psock)
{
 struct sk_psock_parser *parser = &psock->parser;

 if (parser->enabled)
  return;

 parser->saved_data_ready = sk->sk_data_ready;
 sk->sk_data_ready = sk_psock_strp_data_ready;
 sk->sk_write_space = sk_psock_write_space;
 parser->enabled = 1;
}
