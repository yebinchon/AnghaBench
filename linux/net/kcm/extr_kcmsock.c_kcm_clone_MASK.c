#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; TYPE_1__* ops; int /*<<< orphan*/  type; } ;
struct sock {TYPE_2__* sk_prot_creator; } ;
struct file {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  mux; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENFILE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_KCM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcm_proto ; 
 TYPE_3__* FUNC3 (struct sock*) ; 
 struct sock* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct socket* FUNC5 () ; 
 struct file* FUNC6 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 

__attribute__((used)) static struct file *FUNC10(struct socket *osock)
{
	struct socket *newsock;
	struct sock *newsk;

	newsock = FUNC5();
	if (!newsock)
		return FUNC0(-ENFILE);

	newsock->type = osock->type;
	newsock->ops = osock->ops;

	FUNC1(newsock->ops->owner);

	newsk = FUNC4(FUNC8(osock->sk), PF_KCM, GFP_KERNEL,
			 &kcm_proto, false);
	if (!newsk) {
		FUNC9(newsock);
		return FUNC0(-ENOMEM);
	}
	FUNC7(newsock, newsk);
	FUNC2(FUNC3(newsk), FUNC3(osock->sk)->mux);

	return FUNC6(newsock, 0, osock->sk->sk_prot_creator->name);
}