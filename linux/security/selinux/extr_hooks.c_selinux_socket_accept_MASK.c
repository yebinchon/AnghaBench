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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct socket {int /*<<< orphan*/  sk; } ;
struct inode_security_struct {int /*<<< orphan*/  initialized; int /*<<< orphan*/  sid; int /*<<< orphan*/  sclass; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LABEL_INITIALIZED ; 
 int /*<<< orphan*/  SOCKET__ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 struct inode_security_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct socket *newsock)
{
	int err;
	struct inode_security_struct *isec;
	struct inode_security_struct *newisec;
	u16 sclass;
	u32 sid;

	err = FUNC2(sock->sk, SOCKET__ACCEPT);
	if (err)
		return err;

	isec = FUNC1(FUNC0(sock));
	FUNC3(&isec->lock);
	sclass = isec->sclass;
	sid = isec->sid;
	FUNC4(&isec->lock);

	newisec = FUNC1(FUNC0(newsock));
	newisec->sclass = sclass;
	newisec->sid = sid;
	newisec->initialized = LABEL_INITIALIZED;

	return 0;
}