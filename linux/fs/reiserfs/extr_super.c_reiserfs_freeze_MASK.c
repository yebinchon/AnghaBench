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
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int FUNC1 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 

__attribute__((used)) static int FUNC10(struct super_block *s)
{
	struct reiserfs_transaction_handle th;

	FUNC5(s);

	FUNC7(s);
	if (!FUNC9(s)) {
		int err = FUNC1(&th, s, 1);
		if (err) {
			FUNC4(&th);
		} else {
			FUNC6(s, FUNC0(s),
						     1);
			FUNC3(&th, FUNC0(s));
			FUNC4(&th);
			FUNC2(&th);
		}
	}
	FUNC8(s);
	return 0;
}