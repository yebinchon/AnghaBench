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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 scalar_t__ SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(int fd)
{
	unsigned int nr_cpus = FUNC1();
	__u64 values[nr_cpus];
	__u32 key;

	FUNC2(values, 0, sizeof(values));
	for (key = 0; key < SLOTS; key++)
		FUNC0(fd, &key, values, BPF_ANY);
}