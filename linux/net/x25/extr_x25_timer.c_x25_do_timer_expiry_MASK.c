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
struct x25_sock {int state; int condition; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  X25_CLEAR_REQUEST ; 
 int X25_COND_ACK_PENDING ; 
#define  X25_STATE_1 131 
#define  X25_STATE_2 130 
#define  X25_STATE_3 129 
#define  X25_STATE_4 128 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct x25_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct sock * sk)
{
	struct x25_sock *x25 = FUNC2(sk);

	switch (x25->state) {

		case X25_STATE_3:	/* T2 */
			if (x25->condition & X25_COND_ACK_PENDING) {
				x25->condition &= ~X25_COND_ACK_PENDING;
				FUNC1(sk);
			}
			break;

		case X25_STATE_1:	/* T21 */
		case X25_STATE_4:	/* T22 */
			FUNC4(sk, X25_CLEAR_REQUEST);
			x25->state = X25_STATE_2;
			FUNC3(sk);
			break;

		case X25_STATE_2:	/* T23 */
			FUNC0(sk, ETIMEDOUT, 0, 0);
			break;
	}
}