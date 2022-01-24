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
struct unix_diag_req {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct sk_buff*,struct unix_diag_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb, struct unix_diag_req *req,
		u32 portid, u32 seq, u32 flags)
{
	int sk_ino;

	FUNC2(sk);
	sk_ino = FUNC1(sk);
	FUNC3(sk);

	if (!sk_ino)
		return 0;

	return FUNC0(sk, skb, req, portid, seq, flags, sk_ino);
}