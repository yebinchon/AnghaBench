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
struct sst_ipc_message {int dummy; } ;
struct sst_generic_ipc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sst_generic_ipc*,struct sst_ipc_message,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(struct sst_generic_ipc *ipc,
	struct sst_ipc_message request)
{
	return FUNC0(ipc, request, NULL, 0);
}