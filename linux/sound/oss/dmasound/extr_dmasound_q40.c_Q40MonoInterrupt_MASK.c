#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/ * DAC_LEFT ; 
 int /*<<< orphan*/ * DAC_RIGHT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SAMPLE_CLEAR_REG ; 
 TYPE_1__ dmasound ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * q40_pp ; 
 scalar_t__ q40_sc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dummy)
{
	FUNC2(&dmasound.lock);
        if (q40_sc>0){
            *DAC_LEFT=*q40_pp;
	    *DAC_RIGHT=*q40_pp++;
	    q40_sc --;
	    FUNC1(1,SAMPLE_CLEAR_REG);
	}else FUNC0();
	FUNC3(&dmasound.lock);
	return IRQ_HANDLED;
}