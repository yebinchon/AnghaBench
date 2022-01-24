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
struct ext4_lazy_init {int /*<<< orphan*/  li_state; int /*<<< orphan*/  li_list_mtx; int /*<<< orphan*/  li_request_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EXT4_LAZYINIT_QUIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ext4_lazy_init* ext4_li_info ; 
 struct ext4_lazy_init* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	struct ext4_lazy_init *eli = NULL;

	eli = FUNC1(sizeof(*eli), GFP_KERNEL);
	if (!eli)
		return -ENOMEM;

	FUNC0(&eli->li_request_list);
	FUNC2(&eli->li_list_mtx);

	eli->li_state |= EXT4_LAZYINIT_QUIT;

	ext4_li_info = eli;

	return 0;
}