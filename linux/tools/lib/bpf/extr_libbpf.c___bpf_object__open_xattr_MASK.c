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
struct bpf_object_open_attr {int /*<<< orphan*/  prog_type; int /*<<< orphan*/  file; } ;
struct bpf_object {int dummy; } ;

/* Variables and functions */
 struct bpf_object* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

struct bpf_object *FUNC3(struct bpf_object_open_attr *attr,
					    int flags)
{
	/* param validation */
	if (!attr->file)
		return NULL;

	FUNC2("loading %s\n", attr->file);

	return FUNC0(attr->file, NULL, 0,
				  FUNC1(attr->prog_type),
				  flags);
}