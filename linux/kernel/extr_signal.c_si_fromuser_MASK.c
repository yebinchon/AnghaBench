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
struct kernel_siginfo {int dummy; } ;

/* Variables and functions */
 struct kernel_siginfo const* SEND_SIG_NOINFO ; 
 scalar_t__ FUNC0 (struct kernel_siginfo const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernel_siginfo const*) ; 

__attribute__((used)) static inline bool FUNC2(const struct kernel_siginfo *info)
{
	return info == SEND_SIG_NOINFO ||
		(!FUNC1(info) && FUNC0(info));
}