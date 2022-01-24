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
struct inode {int /*<<< orphan*/  i_private; int /*<<< orphan*/  i_link; int /*<<< orphan*/  i_mode; } ;
typedef  enum bpf_type { ____Placeholder_bpf_type } bpf_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	enum bpf_type type;

	if (FUNC0(inode->i_mode))
		FUNC4(inode->i_link);
	if (!FUNC2(inode, &type))
		FUNC1(inode->i_private, type);
	FUNC3(inode);
}