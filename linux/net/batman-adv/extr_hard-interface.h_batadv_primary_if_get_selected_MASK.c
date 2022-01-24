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
struct batadv_priv {int /*<<< orphan*/  primary_if; } ;
struct batadv_hard_iface {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_hard_iface* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline struct batadv_hard_iface *
FUNC4(struct batadv_priv *bat_priv)
{
	struct batadv_hard_iface *hard_iface;

	FUNC2();
	hard_iface = FUNC1(bat_priv->primary_if);
	if (!hard_iface)
		goto out;

	if (!FUNC0(&hard_iface->refcount))
		hard_iface = NULL;

out:
	FUNC3();
	return hard_iface;
}