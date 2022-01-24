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
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  bf ;

/* Variables and functions */
 int FUNC0 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 

int FUNC3(struct bpf_object *obj)
{
	int err;

	err = FUNC0(obj);
	if (err) {
		char bf[128];
		FUNC1(err, bf, sizeof(bf));
		FUNC2("bpf: load objects failed: err=%d: (%s)\n", err, bf);
		return err;
	}
	return 0;
}