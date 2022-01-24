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
struct TYPE_2__ {int /*<<< orphan*/  post_handler; int /*<<< orphan*/  pre_handler; int /*<<< orphan*/  symbol_name; } ;
struct fei_attr {int /*<<< orphan*/  list; int /*<<< orphan*/  retval; TYPE_1__ kp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fei_kprobe_handler ; 
 int /*<<< orphan*/  fei_post_handler ; 
 int /*<<< orphan*/  FUNC2 (struct fei_attr*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 struct fei_attr* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fei_attr *FUNC5(const char *sym, unsigned long addr)
{
	struct fei_attr *attr;

	attr = FUNC4(sizeof(*attr), GFP_KERNEL);
	if (attr) {
		attr->kp.symbol_name = FUNC3(sym, GFP_KERNEL);
		if (!attr->kp.symbol_name) {
			FUNC2(attr);
			return NULL;
		}
		attr->kp.pre_handler = fei_kprobe_handler;
		attr->kp.post_handler = fei_post_handler;
		attr->retval = FUNC1(addr, 0);
		FUNC0(&attr->list);
	}
	return attr;
}