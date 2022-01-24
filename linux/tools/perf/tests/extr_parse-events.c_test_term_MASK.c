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
struct terms_test {int (* check ) (struct list_head*) ;int /*<<< orphan*/  str; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int FUNC1 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct list_head*) ; 

__attribute__((used)) static int FUNC5(struct terms_test *t)
{
	struct list_head terms;
	int ret;

	FUNC0(&terms);

	ret = FUNC1(&terms, t->str);
	if (ret) {
		FUNC3("failed to parse terms '%s', err %d\n",
			 t->str , ret);
		return ret;
	}

	ret = t->check(&terms);
	FUNC2(&terms);

	return ret;
}