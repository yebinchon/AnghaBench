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
struct ovs_key_ct_labels {int dummy; } ;
struct nf_conn_labels {int /*<<< orphan*/  bits; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVS_CT_LABELS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ovs_key_ct_labels*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ovs_key_ct_labels*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conn_labels* FUNC2 (struct nf_conn const*) ; 

__attribute__((used)) static void FUNC3(const struct nf_conn *ct,
			      struct ovs_key_ct_labels *labels)
{
	struct nf_conn_labels *cl = ct ? FUNC2(ct) : NULL;

	if (cl)
		FUNC0(labels, cl->bits, OVS_CT_LABELS_LEN);
	else
		FUNC1(labels, 0, OVS_CT_LABELS_LEN);
}