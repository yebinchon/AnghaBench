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
struct kprobe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kprobe*) ; 
 int FUNC1 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  text_mutex ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct kprobe *kp)
{
	if (FUNC7(FUNC4(kp)))
		return FUNC1(kp);

	FUNC2();
	FUNC5(&text_mutex);
	FUNC0(kp);
	FUNC6(&text_mutex);
	FUNC3();

	return 0;
}