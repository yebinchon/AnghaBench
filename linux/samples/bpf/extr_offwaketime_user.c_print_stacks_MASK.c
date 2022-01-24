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
struct key_t {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct key_t*,struct key_t*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct key_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct key_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int fd)
{
	struct key_t key = {}, next_key;
	__u64 value;

	while (FUNC0(fd, &key, &next_key) == 0) {
		FUNC1(fd, &next_key, &value);
		FUNC2(&next_key, value);
		key = next_key;
	}
}