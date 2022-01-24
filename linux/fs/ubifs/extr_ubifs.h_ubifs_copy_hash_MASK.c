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
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_info {int /*<<< orphan*/  hash_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ubifs_info const*) ; 

__attribute__((used)) static inline void FUNC2(const struct ubifs_info *c, const u8 *from,
				   u8 *to)
{
	if (FUNC1(c))
		FUNC0(to, from, c->hash_len);
}