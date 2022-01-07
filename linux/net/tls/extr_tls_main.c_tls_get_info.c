
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ cipher_type; scalar_t__ version; } ;
struct tls_context {TYPE_1__ prot_info; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int icsk_ulp_data; } ;


 int EMSGSIZE ;
 int INET_ULP_INFO_TLS ;
 int TLS_INFO_CIPHER ;
 int TLS_INFO_RXCONF ;
 int TLS_INFO_TXCONF ;
 int TLS_INFO_VERSION ;
 TYPE_2__* inet_csk (struct sock const*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 int nla_put_u16 (struct sk_buff*,int ,scalar_t__) ;
 struct tls_context* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ tls_user_config (struct tls_context*,int) ;

__attribute__((used)) static int tls_get_info(const struct sock *sk, struct sk_buff *skb)
{
 u16 version, cipher_type;
 struct tls_context *ctx;
 struct nlattr *start;
 int err;

 start = nla_nest_start_noflag(skb, INET_ULP_INFO_TLS);
 if (!start)
  return -EMSGSIZE;

 rcu_read_lock();
 ctx = rcu_dereference(inet_csk(sk)->icsk_ulp_data);
 if (!ctx) {
  err = 0;
  goto nla_failure;
 }
 version = ctx->prot_info.version;
 if (version) {
  err = nla_put_u16(skb, TLS_INFO_VERSION, version);
  if (err)
   goto nla_failure;
 }
 cipher_type = ctx->prot_info.cipher_type;
 if (cipher_type) {
  err = nla_put_u16(skb, TLS_INFO_CIPHER, cipher_type);
  if (err)
   goto nla_failure;
 }
 err = nla_put_u16(skb, TLS_INFO_TXCONF, tls_user_config(ctx, 1));
 if (err)
  goto nla_failure;

 err = nla_put_u16(skb, TLS_INFO_RXCONF, tls_user_config(ctx, 0));
 if (err)
  goto nla_failure;

 rcu_read_unlock();
 nla_nest_end(skb, start);
 return 0;

nla_failure:
 rcu_read_unlock();
 nla_nest_cancel(skb, start);
 return err;
}
