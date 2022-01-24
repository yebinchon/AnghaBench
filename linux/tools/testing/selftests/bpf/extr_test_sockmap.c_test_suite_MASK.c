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

/* Variables and functions */
 int /*<<< orphan*/  BPF_SOCKHASH_FILENAME ; 
 int /*<<< orphan*/  BPF_SOCKMAP_FILENAME ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int cg_fd)
{
	int err;

	err = FUNC0(cg_fd, BPF_SOCKMAP_FILENAME);
	if (err)
		goto out;
	err = FUNC0(cg_fd, BPF_SOCKHASH_FILENAME);
out:
	if (cg_fd > -1)
		FUNC1(cg_fd);
	return err;
}