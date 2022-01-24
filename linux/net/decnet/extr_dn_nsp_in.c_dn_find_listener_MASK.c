#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_dn {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {unsigned char* data; int len; } ;
struct nsp_conn_init_msg {int /*<<< orphan*/  segsize; int /*<<< orphan*/  info; int /*<<< orphan*/  services; int /*<<< orphan*/  dstaddr; int /*<<< orphan*/  srcaddr; } ;
struct dn_skb_cb {int /*<<< orphan*/  segsize; int /*<<< orphan*/  info; int /*<<< orphan*/  services; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  src_port; } ;
struct TYPE_2__ {unsigned short reason; int /*<<< orphan*/  text; } ;

/* Variables and functions */
 unsigned char DN_MENUVER_ACC ; 
 unsigned char DN_MENUVER_USR ; 
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* ci_err_table ; 
 scalar_t__ FUNC1 (unsigned char**,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC3 (struct sockaddr_dn*) ; 
 int FUNC4 (unsigned char*,int,struct sockaddr_dn*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_dn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sock *FUNC9(struct sk_buff *skb, unsigned short *reason)
{
	struct dn_skb_cb *cb = FUNC0(skb);
	struct nsp_conn_init_msg *msg = (struct nsp_conn_init_msg *)skb->data;
	struct sockaddr_dn dstaddr;
	struct sockaddr_dn srcaddr;
	unsigned char type = 0;
	int dstlen;
	int srclen;
	unsigned char *ptr;
	int len;
	int err = 0;
	unsigned char menuver;

	FUNC6(&dstaddr, 0, sizeof(struct sockaddr_dn));
	FUNC6(&srcaddr, 0, sizeof(struct sockaddr_dn));

	/*
	 * 1. Decode & remove message header
	 */
	cb->src_port = msg->srcaddr;
	cb->dst_port = msg->dstaddr;
	cb->services = msg->services;
	cb->info     = msg->info;
	cb->segsize  = FUNC5(msg->segsize);

	if (!FUNC7(skb, sizeof(*msg)))
		goto err_out;

	FUNC8(skb, sizeof(*msg));

	len = skb->len;
	ptr = skb->data;

	/*
	 * 2. Check destination end username format
	 */
	dstlen = FUNC4(ptr, len, &dstaddr, &type);
	err++;
	if (dstlen < 0)
		goto err_out;

	err++;
	if (type > 1)
		goto err_out;

	len -= dstlen;
	ptr += dstlen;

	/*
	 * 3. Check source end username format
	 */
	srclen = FUNC4(ptr, len, &srcaddr, &type);
	err++;
	if (srclen < 0)
		goto err_out;

	len -= srclen;
	ptr += srclen;
	err++;
	if (len < 1)
		goto err_out;

	menuver = *ptr;
	ptr++;
	len--;

	/*
	 * 4. Check that optional data actually exists if menuver says it does
	 */
	err++;
	if ((menuver & (DN_MENUVER_ACC | DN_MENUVER_USR)) && (len < 1))
		goto err_out;

	/*
	 * 5. Check optional access data format
	 */
	err++;
	if (menuver & DN_MENUVER_ACC) {
		if (FUNC1(&ptr, &len, 39, 1))
			goto err_out;
		if (FUNC1(&ptr, &len, 39, 1))
			goto err_out;
		if (FUNC1(&ptr, &len, 39, (menuver & DN_MENUVER_USR) ? 1 : 0))
			goto err_out;
	}

	/*
	 * 6. Check optional user data format
	 */
	err++;
	if (menuver & DN_MENUVER_USR) {
		if (FUNC1(&ptr, &len, 16, 0))
			goto err_out;
	}

	/*
	 * 7. Look up socket based on destination end username
	 */
	return FUNC3(&dstaddr);
err_out:
	FUNC2(skb, ci_err_table[err].text);
	*reason = ci_err_table[err].reason;
	return NULL;
}