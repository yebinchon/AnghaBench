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
struct request_queue {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct request_queue*,struct bio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct request_queue*) ; 

__attribute__((used)) static inline bool
FUNC3(struct request_queue *q, struct bio *bio,
		unsigned int nr_segs)
{
	if (FUNC2(q) || !FUNC1(bio))
		return false;

	return FUNC0(q, bio, nr_segs);
}