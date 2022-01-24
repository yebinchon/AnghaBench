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
struct lbuf {struct lbuf* l_redrive_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  jfsIOthread ; 
 struct lbuf* log_redrive_list ; 
 int /*<<< orphan*/  log_redrive_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct lbuf *bp)
{
	unsigned long flags;

	FUNC0(&log_redrive_lock, flags);
	bp->l_redrive_next = log_redrive_list;
	log_redrive_list = bp;
	FUNC1(&log_redrive_lock, flags);

	FUNC2(jfsIOthread);
}