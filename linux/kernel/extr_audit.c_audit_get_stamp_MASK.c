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
struct timespec64 {int dummy; } ;
struct audit_context {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct audit_context*,struct timespec64*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec64*) ; 

__attribute__((used)) static inline void FUNC3(struct audit_context *ctx,
				   struct timespec64 *t, unsigned int *serial)
{
	if (!ctx || !FUNC1(ctx, t, serial)) {
		FUNC2(t);
		*serial = FUNC0();
	}
}