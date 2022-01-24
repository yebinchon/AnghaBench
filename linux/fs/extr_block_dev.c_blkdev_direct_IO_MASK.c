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
struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int BIO_MAX_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct kiocb*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*,struct iov_iter*,int) ; 
 int FUNC2 (struct iov_iter*,int) ; 
 scalar_t__ FUNC3 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static ssize_t
FUNC5(struct kiocb *iocb, struct iov_iter *iter)
{
	int nr_pages;

	nr_pages = FUNC2(iter, BIO_MAX_PAGES + 1);
	if (!nr_pages)
		return 0;
	if (FUNC3(iocb) && nr_pages <= BIO_MAX_PAGES)
		return FUNC1(iocb, iter, nr_pages);

	return FUNC0(iocb, iter, FUNC4(nr_pages, BIO_MAX_PAGES));
}