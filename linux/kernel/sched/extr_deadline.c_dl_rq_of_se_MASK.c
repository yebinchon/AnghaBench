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
struct task_struct {int dummy; } ;
struct sched_dl_entity {int dummy; } ;
struct dl_rq {int dummy; } ;
struct rq {struct dl_rq dl; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (struct sched_dl_entity*) ; 
 struct rq* FUNC1 (struct task_struct*) ; 

__attribute__((used)) static inline struct dl_rq *FUNC2(struct sched_dl_entity *dl_se)
{
	struct task_struct *p = FUNC0(dl_se);
	struct rq *rq = FUNC1(p);

	return &rq->dl;
}