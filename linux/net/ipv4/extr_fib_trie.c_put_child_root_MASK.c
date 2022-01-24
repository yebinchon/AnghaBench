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
typedef  int /*<<< orphan*/  t_key ;
struct key_vector {int /*<<< orphan*/ * tnode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC2 (struct key_vector*,int /*<<< orphan*/ ,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct key_vector*) ; 

__attribute__((used)) static inline void FUNC4(struct key_vector *tp, t_key key,
				  struct key_vector *n)
{
	if (FUNC0(tp))
		FUNC3(tp->tnode[0], n);
	else
		FUNC2(tp, FUNC1(key, tp), n);
}