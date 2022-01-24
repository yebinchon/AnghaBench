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
struct smack_mnt_opts {struct smack_mnt_opts* fstransmute; struct smack_mnt_opts* fsroot; struct smack_mnt_opts* fshat; struct smack_mnt_opts* fsfloor; struct smack_mnt_opts* fsdefault; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smack_mnt_opts*) ; 

__attribute__((used)) static void FUNC1(void *mnt_opts)
{
	struct smack_mnt_opts *opts = mnt_opts;
	FUNC0(opts->fsdefault);
	FUNC0(opts->fsfloor);
	FUNC0(opts->fshat);
	FUNC0(opts->fsroot);
	FUNC0(opts->fstransmute);
	FUNC0(opts);
}