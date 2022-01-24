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
struct lola {TYPE_1__* pcm; int /*<<< orphan*/  reg_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int num_streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR0 ; 
 int /*<<< orphan*/  BAR1 ; 
 size_t CAPT ; 
 int /*<<< orphan*/  CORBSTS ; 
 int /*<<< orphan*/  DIINTSTS ; 
 int /*<<< orphan*/  DINTSTS ; 
 int /*<<< orphan*/  DOINTSTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char LOLA_CORB_INT_MASK ; 
 unsigned int LOLA_DINT_CTRL ; 
 unsigned int LOLA_DINT_FIFOERR ; 
 unsigned int LOLA_DINT_MUERR ; 
 unsigned int LOLA_DSD_STS_BCIS ; 
 unsigned int LOLA_DSD_STS_DESE ; 
 unsigned char LOLA_RIRB_INT_MASK ; 
 int MAX_STREAM_IN_COUNT ; 
 size_t PLAY ; 
 int /*<<< orphan*/  RIRBSTS ; 
 int /*<<< orphan*/  STS ; 
 unsigned int FUNC1 (struct lola*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lola*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct lola*,TYPE_1__*,unsigned int) ; 
 unsigned char FUNC4 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lola*) ; 
 int /*<<< orphan*/  FUNC7 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct lola *chip = dev_id;
	unsigned int notify_ins, notify_outs, error_ins, error_outs;
	int handled = 0;
	int i;

	notify_ins = notify_outs = error_ins = error_outs = 0;
	FUNC9(&chip->reg_lock);
	for (;;) {
		unsigned int status, in_sts, out_sts;
		unsigned int reg;

		status = FUNC5(chip, BAR1, DINTSTS);
		if (!status || status == -1)
			break;

		in_sts = FUNC5(chip, BAR1, DIINTSTS);
		out_sts = FUNC5(chip, BAR1, DOINTSTS);

		/* clear Input Interrupts */
		for (i = 0; in_sts && i < chip->pcm[CAPT].num_streams; i++) {
			if (!(in_sts & (1 << i)))
				continue;
			in_sts &= ~(1 << i);
			reg = FUNC1(chip, i, STS);
			if (reg & LOLA_DSD_STS_DESE) /* error */
				error_ins |= (1 << i);
			if (reg & LOLA_DSD_STS_BCIS) /* notify */
				notify_ins |= (1 << i);
			/* clear */
			FUNC2(chip, i, STS, reg);
		}

		/* clear Output Interrupts */
		for (i = 0; out_sts && i < chip->pcm[PLAY].num_streams; i++) {
			if (!(out_sts & (1 << i)))
				continue;
			out_sts &= ~(1 << i);
			reg = FUNC1(chip, i + MAX_STREAM_IN_COUNT, STS);
			if (reg & LOLA_DSD_STS_DESE) /* error */
				error_outs |= (1 << i);
			if (reg & LOLA_DSD_STS_BCIS) /* notify */
				notify_outs |= (1 << i);
			FUNC2(chip, i + MAX_STREAM_IN_COUNT, STS, reg);
		}

		if (status & LOLA_DINT_CTRL) {
			unsigned char rbsts; /* ring status is byte access */
			rbsts = FUNC4(chip, BAR0, RIRBSTS);
			rbsts &= LOLA_RIRB_INT_MASK;
			if (rbsts)
				FUNC7(chip, BAR0, RIRBSTS, rbsts);
			rbsts = FUNC4(chip, BAR0, CORBSTS);
			rbsts &= LOLA_CORB_INT_MASK;
			if (rbsts)
				FUNC7(chip, BAR0, CORBSTS, rbsts);

			FUNC6(chip);
		}

		if (status & (LOLA_DINT_FIFOERR | LOLA_DINT_MUERR)) {
			/* clear global fifo error interrupt */
			FUNC8(chip, BAR1, DINTSTS,
				    (status & (LOLA_DINT_FIFOERR | LOLA_DINT_MUERR)));
		}
		handled = 1;
	}
	FUNC10(&chip->reg_lock);

	FUNC3(chip, &chip->pcm[CAPT], notify_ins);
	FUNC3(chip, &chip->pcm[PLAY], notify_outs);

	return FUNC0(handled);
}