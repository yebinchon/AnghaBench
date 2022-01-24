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
struct sembuf {int dummy; } ;
struct kern_ipc_perm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kern_ipc_perm*,struct sembuf*,unsigned int,int) ; 
 int /*<<< orphan*/  sem_semop ; 

int FUNC1(struct kern_ipc_perm *sma, struct sembuf *sops,
			unsigned nsops, int alter)
{
	return FUNC0(sem_semop, 0, sma, sops, nsops, alter);
}