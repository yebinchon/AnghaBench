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
struct xt_hashlimit_htable {int dummy; } ;
struct dsthash_ent {int /*<<< orphan*/  expires; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(const struct xt_hashlimit_htable *ht,
		      const struct dsthash_ent *he)
{
	return FUNC0(jiffies, he->expires);
}