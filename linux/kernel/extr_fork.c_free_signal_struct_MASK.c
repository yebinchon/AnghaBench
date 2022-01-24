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
struct signal_struct {scalar_t__ oom_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct signal_struct*) ; 
 int /*<<< orphan*/  signal_cachep ; 
 int /*<<< orphan*/  FUNC3 (struct signal_struct*) ; 

__attribute__((used)) static inline void FUNC4(struct signal_struct *sig)
{
	FUNC3(sig);
	FUNC2(sig);
	/*
	 * __mmdrop is not safe to call from softirq context on x86 due to
	 * pgd_dtor so postpone it to the async context
	 */
	if (sig->oom_mm)
		FUNC1(sig->oom_mm);
	FUNC0(signal_cachep, sig);
}