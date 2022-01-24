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
typedef  union evrec {int dummy; } evrec ;
struct seq_oss_readq {scalar_t__ qlen; size_t head; int /*<<< orphan*/ * q; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (union evrec*,int /*<<< orphan*/ *,int) ; 

int
FUNC1(struct seq_oss_readq *q, union evrec *rec)
{
	if (q->qlen == 0)
		return -EAGAIN;
	FUNC0(rec, &q->q[q->head], sizeof(*rec));
	return 0;
}