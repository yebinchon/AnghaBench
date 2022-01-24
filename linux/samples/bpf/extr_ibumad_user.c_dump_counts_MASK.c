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
typedef  scalar_t__ __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 

__attribute__((used)) static void FUNC2(int fd)
{
	__u32 key;
	__u64 value;

	for (key = 0; key < 256; key++) {
		if (FUNC0(fd, &key, &value)) {
			FUNC1("failed to read key %u\n", key);
			continue;
		}
		if (value)
			FUNC1("0x%02x : %llu\n", key, value);
	}
}