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
struct rdma_cm_id {int dummy; } ;
struct rdma_cm_event {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rdma_cm_id*,struct rdma_cm_event*,int) ; 

int FUNC1(struct rdma_cm_id *cm_id,
			      struct rdma_cm_event *event)
{
	return FUNC0(cm_id, event, false);
}