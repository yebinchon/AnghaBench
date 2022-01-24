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
typedef  int u32 ;
struct flow_keys {int dummy; } ;
typedef  int /*<<< orphan*/  siphash_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_keys*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline u32 FUNC4(struct flow_keys *keys,
					const siphash_key_t *keyval)
{
	u32 hash;

	FUNC0(keys);

	hash = FUNC3(FUNC2(keys),
		       FUNC1(keys), keyval);
	if (!hash)
		hash = 1;

	return hash;
}