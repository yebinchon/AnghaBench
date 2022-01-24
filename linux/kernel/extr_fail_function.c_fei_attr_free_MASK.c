#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct fei_attr* symbol_name; } ;
struct fei_attr {TYPE_1__ kp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fei_attr*) ; 

__attribute__((used)) static void FUNC1(struct fei_attr *attr)
{
	if (attr) {
		FUNC0(attr->kp.symbol_name);
		FUNC0(attr);
	}
}