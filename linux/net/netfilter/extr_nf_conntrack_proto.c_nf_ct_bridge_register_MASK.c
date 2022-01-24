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
struct nf_ct_bridge_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nf_ct_bridge_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nf_ct_bridge_info* nf_ct_bridge_info ; 
 int /*<<< orphan*/  nf_ct_proto_mutex ; 

void FUNC3(struct nf_ct_bridge_info *info)
{
	FUNC0(nf_ct_bridge_info);
	FUNC1(&nf_ct_proto_mutex);
	nf_ct_bridge_info = info;
	FUNC2(&nf_ct_proto_mutex);
}