#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_failaddr_t ;
struct TYPE_4__ {int b_error; } ;
typedef  TYPE_1__ xfs_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

void
FUNC2(
	xfs_buf_t		*bp,
	int			error,
	xfs_failaddr_t		failaddr)
{
	FUNC0(error <= 0 && error >= -1000);
	bp->b_error = error;
	FUNC1(bp, error, failaddr);
}