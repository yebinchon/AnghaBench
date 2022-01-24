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
struct sock {int dummy; } ;
struct sco_conn {struct sock* sk; } ;
struct TYPE_2__ {struct sco_conn* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sco_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sock*,int) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sco_conn *conn, struct sock *sk,
			   struct sock *parent)
{
	FUNC0("conn %p", conn);

	FUNC2(sk)->conn = conn;
	conn->sk = sk;

	if (parent)
		FUNC1(parent, sk, true);
}