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
struct sock {int dummy; } ;
struct inet_timewait_sock {struct inet_bind_bucket* tw_tb; int /*<<< orphan*/  tw_bind_node; } ;
struct inet_hashinfo {int /*<<< orphan*/  bind_bucket_cachep; } ;
struct inet_bind_bucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inet_bind_bucket*) ; 

void FUNC3(struct inet_timewait_sock *tw,
			  struct inet_hashinfo *hashinfo)
{
	struct inet_bind_bucket *tb = tw->tw_tb;

	if (!tb)
		return;

	FUNC0(&tw->tw_bind_node);
	tw->tw_tb = NULL;
	FUNC2(hashinfo->bind_bucket_cachep, tb);
	FUNC1((struct sock *)tw);
}