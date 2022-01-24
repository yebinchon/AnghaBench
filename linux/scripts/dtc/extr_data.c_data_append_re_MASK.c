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
typedef  int /*<<< orphan*/  uint64_t ;
struct fdt_reserve_entry {void* size; void* address; } ;
struct data {int dummy; } ;
typedef  int /*<<< orphan*/  re ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct data FUNC1 (struct data,struct fdt_reserve_entry*,int) ; 

struct data FUNC2(struct data d, uint64_t address, uint64_t size)
{
	struct fdt_reserve_entry re;

	re.address = FUNC0(address);
	re.size = FUNC0(size);

	return FUNC1(d, &re, sizeof(re));
}