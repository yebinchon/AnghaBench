#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct unix_sock {int /*<<< orphan*/  bindlock; int /*<<< orphan*/  addr; } ;
struct unix_address {size_t hash; scalar_t__ len; TYPE_1__* name; int /*<<< orphan*/  refcnt; } ;
struct socket {int /*<<< orphan*/  type; struct sock* sk; } ;
struct sock {size_t sk_type; } ;
struct net {int dummy; } ;
struct TYPE_3__ {scalar_t__ sun_path; int /*<<< orphan*/  sun_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct net*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct unix_address*) ; 
 struct unix_address* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct unix_address*) ; 
 struct net* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (scalar_t__,char*,int) ; 
 size_t FUNC15 (int /*<<< orphan*/ ) ; 
 struct unix_sock* FUNC16 (struct sock*) ; 
 int /*<<< orphan*/ * unix_socket_table ; 
 int /*<<< orphan*/  unix_table_lock ; 

__attribute__((used)) static int FUNC17(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct net *net = FUNC11(sk);
	struct unix_sock *u = FUNC16(sk);
	static u32 ordernum = 1;
	struct unix_address *addr;
	int err;
	unsigned int retries = 0;

	err = FUNC7(&u->bindlock);
	if (err)
		return err;

	err = 0;
	if (u->addr)
		goto out;

	err = -ENOMEM;
	addr = FUNC6(sizeof(*addr) + sizeof(short) + 16, GFP_KERNEL);
	if (!addr)
		goto out;

	addr->name->sun_family = AF_UNIX;
	FUNC9(&addr->refcnt, 1);

retry:
	addr->len = FUNC14(addr->name->sun_path+1, "%05x", ordernum) + 1 + sizeof(short);
	addr->hash = FUNC15(FUNC4(addr->name, addr->len, 0));

	FUNC12(&unix_table_lock);
	ordernum = (ordernum+1)&0xFFFFF;

	if (FUNC0(net, addr->name, addr->len, sock->type,
				      addr->hash)) {
		FUNC13(&unix_table_lock);
		/*
		 * __unix_find_socket_byname() may take long time if many names
		 * are already in use.
		 */
		FUNC3();
		/* Give up if all names seems to be in use. */
		if (retries++ == 0xFFFFF) {
			err = -ENOSPC;
			FUNC5(addr);
			goto out;
		}
		goto retry;
	}
	addr->hash ^= sk->sk_type;

	FUNC2(sk);
	FUNC10(&u->addr, addr);
	FUNC1(&unix_socket_table[addr->hash], sk);
	FUNC13(&unix_table_lock);
	err = 0;

out:	FUNC8(&u->bindlock);
	return err;
}