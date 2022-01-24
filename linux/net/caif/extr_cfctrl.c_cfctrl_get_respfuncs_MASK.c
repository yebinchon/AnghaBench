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
struct cflayer {int dummy; } ;
struct cfctrl_rsp {int dummy; } ;
struct cfctrl {struct cfctrl_rsp res; } ;

/* Variables and functions */
 struct cfctrl* FUNC0 (struct cflayer*) ; 

struct cfctrl_rsp *FUNC1(struct cflayer *layer)
{
	struct cfctrl *this = FUNC0(layer);
	return &this->res;
}