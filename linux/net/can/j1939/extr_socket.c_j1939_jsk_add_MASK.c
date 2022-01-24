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
struct j1939_sock {int /*<<< orphan*/  list; struct j1939_priv* priv; int /*<<< orphan*/  state; } ;
struct j1939_priv {int /*<<< orphan*/  j1939_socks_lock; int /*<<< orphan*/  j1939_socks; } ;

/* Variables and functions */
 int /*<<< orphan*/  J1939_SOCK_BOUND ; 
 int /*<<< orphan*/  FUNC0 (struct j1939_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct j1939_priv *priv, struct j1939_sock *jsk)
{
	jsk->state |= J1939_SOCK_BOUND;
	FUNC0(priv);
	jsk->priv = priv;

	FUNC2(&priv->j1939_socks_lock);
	FUNC1(&jsk->list, &priv->j1939_socks);
	FUNC3(&priv->j1939_socks_lock);
}