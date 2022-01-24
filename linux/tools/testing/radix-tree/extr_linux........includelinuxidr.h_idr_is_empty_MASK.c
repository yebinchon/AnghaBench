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
struct idr {int /*<<< orphan*/  idr_rt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDR_FREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(const struct idr *idr)
{
	return FUNC0(&idr->idr_rt) &&
		FUNC1(&idr->idr_rt, IDR_FREE);
}