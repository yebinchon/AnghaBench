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
struct snd_sb {int /*<<< orphan*/  alt_port; int /*<<< orphan*/  mpu_port; int /*<<< orphan*/  mixer_lock; TYPE_1__* rmidi; scalar_t__ capture_substream; scalar_t__ playback_substream; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 unsigned int ALS4K_IOB_0E_CR1E_IRQ ; 
 int /*<<< orphan*/  ALS4K_IOB_0E_IRQTYPE_SB_CR1E_MPU ; 
 unsigned int ALS4K_IOB_0E_MPU_IRQ ; 
 unsigned int ALS4K_IOB_0E_SB_DMA_IRQ ; 
 int /*<<< orphan*/  ALS4K_IOB_16_ACK_FOR_CR1E ; 
 unsigned int ALS4K_IRQTYPE_CR1E_DMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SB_DSP4_IRQSTATUS ; 
 unsigned int SB_IRQTYPE_16BIT ; 
 unsigned int SB_IRQTYPE_8BIT ; 
 unsigned int SB_IRQTYPE_MPUIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_sb*) ; 
 unsigned int FUNC8 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct snd_sb *chip = dev_id;
	unsigned pci_irqstatus;
	unsigned sb_irqstatus;

	/* find out which bit of the ALS4000 PCI block produced the interrupt,
	   SPECS_PAGE: 38, 5 */
	pci_irqstatus = FUNC2(chip->alt_port,
				 ALS4K_IOB_0E_IRQTYPE_SB_CR1E_MPU);
	if ((pci_irqstatus & ALS4K_IOB_0E_SB_DMA_IRQ)
	 && (chip->playback_substream)) /* playback */
		FUNC5(chip->playback_substream);
	if ((pci_irqstatus & ALS4K_IOB_0E_CR1E_IRQ)
	 && (chip->capture_substream)) /* capturing */
		FUNC5(chip->capture_substream);
	if ((pci_irqstatus & ALS4K_IOB_0E_MPU_IRQ)
	 && (chip->rmidi)) /* MPU401 interrupt */
		FUNC4(irq, chip->rmidi->private_data);
	/* ACK the PCI block IRQ */
	FUNC3(chip->alt_port,
			 ALS4K_IOB_0E_IRQTYPE_SB_CR1E_MPU, pci_irqstatus);
	
	FUNC9(&chip->mixer_lock);
	/* SPECS_PAGE: 20 */
	sb_irqstatus = FUNC8(chip, SB_DSP4_IRQSTATUS);
	FUNC10(&chip->mixer_lock);
	
	if (sb_irqstatus & SB_IRQTYPE_8BIT)
		FUNC7(chip);
	if (sb_irqstatus & SB_IRQTYPE_16BIT)
		FUNC6(chip);
	if (sb_irqstatus & SB_IRQTYPE_MPUIN)
		FUNC1(chip->mpu_port);
	if (sb_irqstatus & ALS4K_IRQTYPE_CR1E_DMA)
		FUNC2(chip->alt_port,
					ALS4K_IOB_16_ACK_FOR_CR1E);

	/* dev_dbg(chip->card->dev, "als4000: irq 0x%04x 0x%04x\n",
					 pci_irqstatus, sb_irqstatus); */

	/* only ack the things we actually handled above */
	return FUNC0(
	     (pci_irqstatus & (ALS4K_IOB_0E_SB_DMA_IRQ|ALS4K_IOB_0E_CR1E_IRQ|
				ALS4K_IOB_0E_MPU_IRQ))
	  || (sb_irqstatus & (SB_IRQTYPE_8BIT|SB_IRQTYPE_16BIT|
				SB_IRQTYPE_MPUIN|ALS4K_IRQTYPE_CR1E_DMA))
	);
}