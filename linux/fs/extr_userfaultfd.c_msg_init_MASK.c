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
struct uffd_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct uffd_msg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct uffd_msg *msg)
{
	FUNC0(sizeof(struct uffd_msg) != 32);
	/*
	 * Must use memset to zero out the paddings or kernel data is
	 * leaked to userland.
	 */
	FUNC1(msg, 0, sizeof(struct uffd_msg));
}