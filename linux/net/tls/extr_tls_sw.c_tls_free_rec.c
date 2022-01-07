
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_rec {int msg_plaintext; int msg_encrypted; } ;
struct sock {int dummy; } ;


 int kfree (struct tls_rec*) ;
 int sk_msg_free (struct sock*,int *) ;

__attribute__((used)) static void tls_free_rec(struct sock *sk, struct tls_rec *rec)
{
 sk_msg_free(sk, &rec->msg_encrypted);
 sk_msg_free(sk, &rec->msg_plaintext);
 kfree(rec);
}
