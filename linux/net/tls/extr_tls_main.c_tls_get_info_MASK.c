#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ cipher_type; scalar_t__ version; } ;
struct tls_context {TYPE_1__ prot_info; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  icsk_ulp_data; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  INET_ULP_INFO_TLS ; 
 int /*<<< orphan*/  TLS_INFO_CIPHER ; 
 int /*<<< orphan*/  TLS_INFO_RXCONF ; 
 int /*<<< orphan*/  TLS_INFO_TXCONF ; 
 int /*<<< orphan*/  TLS_INFO_VERSION ; 
 TYPE_2__* FUNC0 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct tls_context* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct tls_context*,int) ; 

__attribute__((used)) static int FUNC9(const struct sock *sk, struct sk_buff *skb)
{
	u16 version, cipher_type;
	struct tls_context *ctx;
	struct nlattr *start;
	int err;

	start = FUNC3(skb, INET_ULP_INFO_TLS);
	if (!start)
		return -EMSGSIZE;

	FUNC6();
	ctx = FUNC5(FUNC0(sk)->icsk_ulp_data);
	if (!ctx) {
		err = 0;
		goto nla_failure;
	}
	version = ctx->prot_info.version;
	if (version) {
		err = FUNC4(skb, TLS_INFO_VERSION, version);
		if (err)
			goto nla_failure;
	}
	cipher_type = ctx->prot_info.cipher_type;
	if (cipher_type) {
		err = FUNC4(skb, TLS_INFO_CIPHER, cipher_type);
		if (err)
			goto nla_failure;
	}
	err = FUNC4(skb, TLS_INFO_TXCONF, FUNC8(ctx, true));
	if (err)
		goto nla_failure;

	err = FUNC4(skb, TLS_INFO_RXCONF, FUNC8(ctx, false));
	if (err)
		goto nla_failure;

	FUNC7();
	FUNC2(skb, start);
	return 0;

nla_failure:
	FUNC7();
	FUNC1(skb, start);
	return err;
}