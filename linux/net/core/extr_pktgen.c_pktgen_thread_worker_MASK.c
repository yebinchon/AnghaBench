#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pktgen_thread {int cpu; int control; TYPE_2__* tsk; int /*<<< orphan*/  queue; TYPE_1__* net; int /*<<< orphan*/  start_done; } ;
struct pktgen_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;
struct TYPE_3__ {scalar_t__ pktgen_exiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int T_REMDEV ; 
 int T_REMDEVALL ; 
 int T_RUN ; 
 int T_STOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct pktgen_dev*) ; 
 scalar_t__ FUNC7 () ; 
 struct pktgen_dev* FUNC8 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC11 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC12 (struct pktgen_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC14 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC15 (struct pktgen_dev*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC23(void *arg)
{
	FUNC1(wait);
	struct pktgen_thread *t = arg;
	struct pktgen_dev *pkt_dev = NULL;
	int cpu = t->cpu;

	FUNC0(FUNC18() != cpu);

	FUNC4(&t->queue);
	FUNC2(&t->start_done);

	FUNC16("starting pktgen/%d:  pid=%d\n", cpu, FUNC19(current));

	FUNC17();

	while (!FUNC5()) {
		pkt_dev = FUNC8(t);

		if (FUNC21(!pkt_dev && t->control == 0)) {
			if (t->net->pktgen_exiting)
				break;
			FUNC22(t->queue,
							 t->control != 0,
							 HZ/10);
			FUNC20();
			continue;
		}

		if (FUNC6(pkt_dev)) {
			FUNC15(pkt_dev);

			if (FUNC7())
				FUNC12(pkt_dev);
			else
				FUNC3();
		}

		if (t->control & T_STOP) {
			FUNC14(t);
			t->control &= ~(T_STOP);
		}

		if (t->control & T_RUN) {
			FUNC13(t);
			t->control &= ~(T_RUN);
		}

		if (t->control & T_REMDEVALL) {
			FUNC9(t);
			t->control &= ~(T_REMDEVALL);
		}

		if (t->control & T_REMDEV) {
			FUNC10(t);
			t->control &= ~(T_REMDEV);
		}

		FUNC20();
	}

	FUNC16("%s stopping all device\n", t->tsk->comm);
	FUNC14(t);

	FUNC16("%s removing all device\n", t->tsk->comm);
	FUNC9(t);

	FUNC16("%s removing thread\n", t->tsk->comm);
	FUNC11(t);

	return 0;
}