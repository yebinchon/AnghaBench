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
struct packet_fanout {int /*<<< orphan*/  list; int /*<<< orphan*/  sk_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  fanout_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct packet_sock* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct packet_fanout *FUNC5(struct sock *sk)
{
	struct packet_sock *po = FUNC3(sk);
	struct packet_fanout *f;

	FUNC1(&fanout_mutex);
	f = po->fanout;
	if (f) {
		po->fanout = NULL;

		if (FUNC4(&f->sk_ref))
			FUNC0(&f->list);
		else
			f = NULL;
	}
	FUNC2(&fanout_mutex);

	return f;
}