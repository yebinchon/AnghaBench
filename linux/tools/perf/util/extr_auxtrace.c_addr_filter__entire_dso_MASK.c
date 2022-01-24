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
struct TYPE_2__ {int /*<<< orphan*/  file_size; } ;
struct dso {TYPE_1__ data; } ;
struct addr_filter {int /*<<< orphan*/  size; scalar_t__ addr; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dso*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct addr_filter *filt, struct dso *dso)
{
	if (FUNC0(dso, NULL)) {
		FUNC1("Failed to determine filter for %s\nCannot determine file size.\n",
		       filt->filename);
		return -EINVAL;
	}

	filt->addr = 0;
	filt->size = dso->data.file_size;

	return 0;
}