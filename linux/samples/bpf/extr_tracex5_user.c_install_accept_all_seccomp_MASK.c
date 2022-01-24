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
struct sock_fprog {unsigned short len; struct sock_filter* filter; } ;
struct sock_filter {int dummy; } ;
typedef  int /*<<< orphan*/  filter ;

/* Variables and functions */
 scalar_t__ BPF_K ; 
 scalar_t__ BPF_RET ; 
 struct sock_filter FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PR_SET_SECCOMP ; 
 int /*<<< orphan*/  SECCOMP_RET_ALLOW ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,struct sock_fprog*) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct sock_filter filter[] = {
		FUNC0(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
	};
	struct sock_fprog prog = {
		.len = (unsigned short)(sizeof(filter)/sizeof(filter[0])),
		.filter = filter,
	};
	if (FUNC2(PR_SET_SECCOMP, 2, &prog))
		FUNC1("prctl");
}