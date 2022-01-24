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
struct sk_psock_link {int dummy; } ;
struct sk_psock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_psock_link*) ; 
 struct sk_psock_link* FUNC1 (struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_psock_link*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, struct sk_psock *psock)
{
	struct sk_psock_link *link;

	while ((link = FUNC1(psock))) {
		FUNC2(sk, link);
		FUNC0(link);
	}
}