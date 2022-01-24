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
struct nf_conn_nat {int dummy; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NF_CT_EXT_NAT ; 
 struct nf_conn_nat* FUNC0 (struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*) ; 
 struct nf_conn_nat* FUNC2 (struct nf_conn*) ; 

struct nf_conn_nat *FUNC3(struct nf_conn *ct)
{
	struct nf_conn_nat *nat = FUNC2(ct);
	if (nat)
		return nat;

	if (!FUNC1(ct))
		nat = FUNC0(ct, NF_CT_EXT_NAT, GFP_ATOMIC);

	return nat;
}