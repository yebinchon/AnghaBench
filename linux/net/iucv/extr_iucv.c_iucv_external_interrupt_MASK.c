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
struct iucv_irq_list {int /*<<< orphan*/  list; int /*<<< orphan*/  data; } ;
struct iucv_irq_data {scalar_t__ ippathid; int iptype; } ;
struct ext_code {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IRQEXT_IUC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iucv_error_no_listener ; 
 struct iucv_irq_data** iucv_irq_data ; 
 scalar_t__ iucv_max_pathid ; 
 int /*<<< orphan*/  iucv_queue_lock ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iucv_task_queue ; 
 int /*<<< orphan*/  iucv_tasklet ; 
 int /*<<< orphan*/  iucv_work ; 
 int /*<<< orphan*/  iucv_work_queue ; 
 struct iucv_irq_list* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct iucv_irq_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ext_code ext_code,
				    unsigned int param32, unsigned long param64)
{
	struct iucv_irq_data *p;
	struct iucv_irq_list *work;

	FUNC2(IRQEXT_IUC);
	p = iucv_irq_data[FUNC9()];
	if (p->ippathid >= iucv_max_pathid) {
		FUNC1(p->ippathid >= iucv_max_pathid);
		FUNC3(p->ippathid, iucv_error_no_listener);
		return;
	}
	FUNC0(p->iptype  < 0x01 || p->iptype > 0x09);
	work = FUNC4(sizeof(struct iucv_irq_list), GFP_ATOMIC);
	if (!work) {
		FUNC7("iucv_external_interrupt: out of memory\n");
		return;
	}
	FUNC6(&work->data, p, sizeof(work->data));
	FUNC10(&iucv_queue_lock);
	if (p->iptype == 0x01) {
		/* Path pending interrupt. */
		FUNC5(&work->list, &iucv_work_queue);
		FUNC8(&iucv_work);
	} else {
		/* The other interrupts. */
		FUNC5(&work->list, &iucv_task_queue);
		FUNC12(&iucv_tasklet);
	}
	FUNC11(&iucv_queue_lock);
}