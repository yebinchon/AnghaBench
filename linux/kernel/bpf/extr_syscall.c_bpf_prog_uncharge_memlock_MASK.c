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
struct bpf_prog {int /*<<< orphan*/  pages; TYPE_1__* aux; } ;
struct TYPE_2__ {struct user_struct* user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct user_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct user_struct*) ; 

__attribute__((used)) static void FUNC2(struct bpf_prog *prog)
{
	struct user_struct *user = prog->aux->user;

	FUNC0(user, prog->pages);
	FUNC1(user);
}