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
struct kern_ipc_perm {int dummy; } ;
struct ipc_ids {int /*<<< orphan*/  key_ht; } ;
typedef  int /*<<< orphan*/  key_t ;

/* Variables and functions */
 int /*<<< orphan*/  ipc_kht_params ; 
 int /*<<< orphan*/  FUNC0 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct kern_ipc_perm* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kern_ipc_perm *FUNC3(struct ipc_ids *ids, key_t key)
{
	struct kern_ipc_perm *ipcp;

	ipcp = FUNC2(&ids->key_ht, &key,
					      ipc_kht_params);
	if (!ipcp)
		return NULL;

	FUNC1();
	FUNC0(ipcp);
	return ipcp;
}