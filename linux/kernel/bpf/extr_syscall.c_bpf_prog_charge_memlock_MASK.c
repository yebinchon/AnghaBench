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
struct user_struct {int dummy; } ;
struct bpf_prog {TYPE_1__* aux; int /*<<< orphan*/  pages; } ;
struct TYPE_2__ {struct user_struct* user; } ;

/* Variables and functions */
 int FUNC0 (struct user_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct user_struct*) ; 
 struct user_struct* FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct bpf_prog *prog)
{
	struct user_struct *user = FUNC2();
	int ret;

	ret = FUNC0(user, prog->pages);
	if (ret) {
		FUNC1(user);
		return ret;
	}

	prog->aux->user = user;
	return 0;
}