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
struct item {int index; } ;
struct idr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct item*) ; 
 struct item* FUNC2 (struct idr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct idr*,int) ; 

void FUNC4(struct idr *idr, int id)
{
	struct item *item = FUNC2(idr, id);
	FUNC0(item->index == id);
	FUNC3(idr, id);
	FUNC1(item);
}