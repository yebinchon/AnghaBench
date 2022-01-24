#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct nfc_llcp_sock {int /*<<< orphan*/  sk; } ;
struct nfc_llcp_local {int dummy; } ;

/* Variables and functions */
 struct nfc_llcp_sock* FUNC0 (struct nfc_llcp_local*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfc_llcp_sock *FUNC2(struct nfc_llcp_local *local,
						  u8 *sn, size_t sn_len)
{
	struct nfc_llcp_sock *llcp_sock;

	llcp_sock = FUNC0(local, sn, sn_len);

	if (llcp_sock == NULL)
		return NULL;

	FUNC1(&llcp_sock->sk);

	return llcp_sock;
}