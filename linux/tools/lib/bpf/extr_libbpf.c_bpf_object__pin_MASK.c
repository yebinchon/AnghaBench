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

/* Variables and functions */
 int FUNC0 (struct bpf_object*,char const*) ; 
 int FUNC1 (struct bpf_object*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_object*,char const*) ; 

int FUNC3(struct bpf_object *obj, const char *path)
{
	int err;

	err = FUNC0(obj, path);
	if (err)
		return err;

	err = FUNC1(obj, path);
	if (err) {
		FUNC2(obj, path);
		return err;
	}

	return 0;
}