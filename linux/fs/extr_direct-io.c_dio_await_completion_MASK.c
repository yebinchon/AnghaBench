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
struct dio {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct bio* FUNC0 (struct dio*) ; 
 int /*<<< orphan*/  FUNC1 (struct dio*,struct bio*) ; 

__attribute__((used)) static void FUNC2(struct dio *dio)
{
	struct bio *bio;
	do {
		bio = FUNC0(dio);
		if (bio)
			FUNC1(dio, bio);
	} while (bio);
}