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
struct the_nilfs {int /*<<< orphan*/  ns_segctor_sem; int /*<<< orphan*/  ns_dat; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC3(struct the_nilfs *nilfs, __u64 *posp, int flags,
			 void *buf, size_t size, size_t nmembs)
{
	int ret;

	FUNC0(&nilfs->ns_segctor_sem);
	ret = FUNC1(nilfs->ns_dat, buf, size, nmembs);
	FUNC2(&nilfs->ns_segctor_sem);
	return ret;
}