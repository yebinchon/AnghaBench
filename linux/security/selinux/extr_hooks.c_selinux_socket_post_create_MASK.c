#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
typedef  void* u16 ;
struct task_security_struct {int dummy; } ;
struct socket {TYPE_1__* sk; } ;
struct sk_security_struct {scalar_t__ sclass; int /*<<< orphan*/  sctp_assoc_state; void* sid; } ;
struct inode_security_struct {int /*<<< orphan*/  initialized; void* sid; void* sclass; } ;
struct TYPE_2__ {struct sk_security_struct* sk_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  LABEL_INITIALIZED ; 
 int /*<<< orphan*/  SCTP_ASSOC_UNSET ; 
 scalar_t__ SECCLASS_SCTP_SOCKET ; 
 void* SECINITSID_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct inode_security_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 struct task_security_struct* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (struct task_security_struct const*,void*,void**) ; 
 void* FUNC6 (int,int,int) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, int family,
				      int type, int protocol, int kern)
{
	const struct task_security_struct *tsec = FUNC3(FUNC1());
	struct inode_security_struct *isec = FUNC2(FUNC0(sock));
	struct sk_security_struct *sksec;
	u16 sclass = FUNC6(family, type, protocol);
	u32 sid = SECINITSID_KERNEL;
	int err = 0;

	if (!kern) {
		err = FUNC5(tsec, sclass, &sid);
		if (err)
			return err;
	}

	isec->sclass = sclass;
	isec->sid = sid;
	isec->initialized = LABEL_INITIALIZED;

	if (sock->sk) {
		sksec = sock->sk->sk_security;
		sksec->sclass = sclass;
		sksec->sid = sid;
		/* Allows detection of the first association on this socket */
		if (sksec->sclass == SECCLASS_SCTP_SOCKET)
			sksec->sctp_assoc_state = SCTP_ASSOC_UNSET;

		err = FUNC4(sock->sk, family);
	}

	return err;
}