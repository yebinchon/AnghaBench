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
struct crush_work_bucket {int dummy; } ;
struct crush_bucket_uniform {int /*<<< orphan*/  h; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct crush_work_bucket*,int,int) ; 

__attribute__((used)) static int FUNC1(const struct crush_bucket_uniform *bucket,
				 struct crush_work_bucket *work, int x, int r)
{
	return FUNC0(&bucket->h, work, x, r);
}