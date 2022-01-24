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
struct static_key_true {int dummy; } ;
struct once_work {int /*<<< orphan*/  work; struct static_key_true* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct once_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  once_deferred ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct static_key_true *key)
{
	struct once_work *w;

	w = FUNC1(sizeof(*w), GFP_ATOMIC);
	if (!w)
		return;

	FUNC0(&w->work, once_deferred);
	w->key = key;
	FUNC2(&w->work);
}