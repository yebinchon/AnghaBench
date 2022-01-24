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
struct ocfs2_lock_res {int /*<<< orphan*/  l_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_LOCK_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct ocfs2_lock_res *lockres)

{
	FUNC1(lockres->l_event,
		   !FUNC0(lockres, OCFS2_LOCK_BUSY));
}