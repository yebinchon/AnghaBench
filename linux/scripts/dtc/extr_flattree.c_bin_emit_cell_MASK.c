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
struct data {int dummy; } ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 struct data FUNC0 (struct data,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *e, cell_t val)
{
	struct data *dtbuf = e;

	*dtbuf = FUNC0(*dtbuf, val);
}