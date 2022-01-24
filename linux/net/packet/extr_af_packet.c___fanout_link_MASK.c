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
struct packet_sock {struct packet_fanout* fanout; } ;
struct packet_fanout {size_t num_members; int /*<<< orphan*/  lock; int /*<<< orphan*/  prot_hook; struct sock** arr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, struct packet_sock *po)
{
	struct packet_fanout *f = po->fanout;

	FUNC2(&f->lock);
	f->arr[f->num_members] = sk;
	FUNC1();
	f->num_members++;
	if (f->num_members == 1)
		FUNC0(&f->prot_hook);
	FUNC3(&f->lock);
}