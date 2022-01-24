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
struct hfsc_class {scalar_t__ cl_cumul; int /*<<< orphan*/  cl_deadline; int /*<<< orphan*/  cl_d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC1(struct hfsc_class *cl, unsigned int next_len)
{
	cl->cl_d = FUNC0(&cl->cl_deadline, cl->cl_cumul + next_len);
}