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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct machine {int dummy; } ;
struct TYPE_2__ {scalar_t__ file_size; } ;
struct dso {TYPE_1__ data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct dso*,struct machine*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct dso*,struct machine*) ; 

__attribute__((used)) static ssize_t FUNC2(struct dso *dso, struct machine *machine,
				u64 offset, u8 *data, ssize_t size)
{
	if (FUNC1(dso, machine))
		return -1;

	/* Check the offset sanity. */
	if (offset > dso->data.file_size)
		return -1;

	if (offset + size < offset)
		return -1;

	return FUNC0(dso, machine, offset, data, size);
}