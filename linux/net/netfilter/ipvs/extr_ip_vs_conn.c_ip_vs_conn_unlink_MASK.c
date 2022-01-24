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
struct ip_vs_conn {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  c_list; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int IP_VS_CONN_F_HASHED ; 
 int IP_VS_CONN_F_ONE_PACKET ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (struct ip_vs_conn*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC7(struct ip_vs_conn *cp)
{
	unsigned int hash;
	bool ret = false;

	if (cp->flags & IP_VS_CONN_F_ONE_PACKET)
		return FUNC4(&cp->refcnt);

	hash = FUNC3(cp);

	FUNC0(hash);
	FUNC5(&cp->lock);

	if (cp->flags & IP_VS_CONN_F_HASHED) {
		/* Decrease refcnt and unlink conn only if we are last user */
		if (FUNC4(&cp->refcnt)) {
			FUNC2(&cp->c_list);
			cp->flags &= ~IP_VS_CONN_F_HASHED;
			ret = true;
		}
	}

	FUNC6(&cp->lock);
	FUNC1(hash);

	return ret;
}