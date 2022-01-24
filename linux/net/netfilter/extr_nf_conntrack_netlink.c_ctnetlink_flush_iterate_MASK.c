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
struct nf_conn {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_OFFLOAD_BIT ; 
 int FUNC0 (struct nf_conn*,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct nf_conn *ct, void *data)
{
	if (FUNC1(IPS_OFFLOAD_BIT, &ct->status))
		return 0;

	return FUNC0(ct, data);
}