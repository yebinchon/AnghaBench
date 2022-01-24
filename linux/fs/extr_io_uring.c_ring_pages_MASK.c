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
struct io_uring_sqe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC3(unsigned sq_entries, unsigned cq_entries)
{
	size_t pages;

	pages = (size_t)1 << FUNC1(
		FUNC2(sq_entries, cq_entries, NULL));
	pages += (size_t)1 << FUNC1(
		FUNC0(sizeof(struct io_uring_sqe), sq_entries));

	return pages;
}