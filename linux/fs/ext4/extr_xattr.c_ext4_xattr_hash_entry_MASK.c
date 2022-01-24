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
typedef  int /*<<< orphan*/  hash ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int NAME_HASH_SHIFT ; 
 int VALUE_HASH_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __le32 FUNC2(char *name, size_t name_len, __le32 *value,
				    size_t value_count)
{
	__u32 hash = 0;

	while (name_len--) {
		hash = (hash << NAME_HASH_SHIFT) ^
		       (hash >> (8*sizeof(hash) - NAME_HASH_SHIFT)) ^
		       *name++;
	}
	while (value_count--) {
		hash = (hash << VALUE_HASH_SHIFT) ^
		       (hash >> (8*sizeof(hash) - VALUE_HASH_SHIFT)) ^
		       FUNC1(*value++);
	}
	return FUNC0(hash);
}