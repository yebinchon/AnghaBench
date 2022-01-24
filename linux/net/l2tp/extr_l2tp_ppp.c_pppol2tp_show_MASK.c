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
struct seq_file {int dummy; } ;
struct pppox_sock {int /*<<< orphan*/  chan; } ;
struct l2tp_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC1 (struct l2tp_session*) ; 
 struct pppox_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct seq_file *m, void *arg)
{
	struct l2tp_session *session = arg;
	struct sock *sk;

	sk = FUNC1(session);
	if (sk) {
		struct pppox_sock *po = FUNC2(sk);

		FUNC3(m, "   interface %s\n", FUNC0(&po->chan));
		FUNC4(sk);
	}
}