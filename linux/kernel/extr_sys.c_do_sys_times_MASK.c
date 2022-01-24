#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct tms {void* tms_cstime; void* tms_cutime; void* tms_stime; void* tms_utime; } ;
struct TYPE_5__ {TYPE_1__* signal; } ;
struct TYPE_4__ {int /*<<< orphan*/  cstime; int /*<<< orphan*/  cutime; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct tms *tms)
{
	u64 tgutime, tgstime, cutime, cstime;

	FUNC1(current, &tgutime, &tgstime);
	cutime = current->signal->cutime;
	cstime = current->signal->cstime;
	tms->tms_utime = FUNC0(tgutime);
	tms->tms_stime = FUNC0(tgstime);
	tms->tms_cutime = FUNC0(cutime);
	tms->tms_cstime = FUNC0(cstime);
}