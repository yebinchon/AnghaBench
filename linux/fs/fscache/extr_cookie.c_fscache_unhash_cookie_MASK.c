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
struct hlist_bl_head {int dummy; } ;
struct fscache_cookie {int key_hash; int /*<<< orphan*/  hash_link; } ;

/* Variables and functions */
 int FUNC0 (struct hlist_bl_head*) ; 
 struct hlist_bl_head* fscache_cookie_hash ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hlist_bl_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct hlist_bl_head*) ; 

__attribute__((used)) static void FUNC4(struct fscache_cookie *cookie)
{
	struct hlist_bl_head *h;
	unsigned int bucket;

	bucket = cookie->key_hash & (FUNC0(fscache_cookie_hash) - 1);
	h = &fscache_cookie_hash[bucket];

	FUNC2(h);
	FUNC1(&cookie->hash_link);
	FUNC3(h);
}