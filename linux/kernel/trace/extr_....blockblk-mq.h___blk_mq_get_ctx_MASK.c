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
struct request_queue {int /*<<< orphan*/  queue_ctx; } ;
struct blk_mq_ctx {int dummy; } ;

/* Variables and functions */
 struct blk_mq_ctx* FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline struct blk_mq_ctx *FUNC1(struct request_queue *q,
					   unsigned int cpu)
{
	return FUNC0(q->queue_ctx, cpu);
}