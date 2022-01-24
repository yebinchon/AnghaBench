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
struct TYPE_2__ {int /*<<< orphan*/ * area; } ;
struct snd_korg1212 {scalar_t__ irq; int /*<<< orphan*/  pci; TYPE_1__ dma_shared; TYPE_1__ dma_rec; TYPE_1__ dma_play; TYPE_1__ dma_dsp; int /*<<< orphan*/ * iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_korg1212*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_korg1212*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_korg1212*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_korg1212*) ; 

__attribute__((used)) static int
FUNC8(struct snd_korg1212 *korg1212)
{
        FUNC7(korg1212);

        if (korg1212->irq >= 0) {
                FUNC6(korg1212);
                FUNC0(korg1212->irq, korg1212);
                korg1212->irq = -1;
        }
        
        if (korg1212->iobase != NULL) {
                FUNC1(korg1212->iobase);
                korg1212->iobase = NULL;
        }
        
	FUNC4(korg1212->pci);

        // ----------------------------------------------------
        // free up memory resources used for the DSP download.
        // ----------------------------------------------------
        if (korg1212->dma_dsp.area) {
        	FUNC5(&korg1212->dma_dsp);
        	korg1212->dma_dsp.area = NULL;
        }

#ifndef K1212_LARGEALLOC

        // ------------------------------------------------------
        // free up memory resources used for the Play/Rec Buffers
        // ------------------------------------------------------
	if (korg1212->dma_play.area) {
		FUNC5(&korg1212->dma_play);
		korg1212->dma_play.area = NULL;
        }

	if (korg1212->dma_rec.area) {
		FUNC5(&korg1212->dma_rec);
		korg1212->dma_rec.area = NULL;
        }

#endif

        // ----------------------------------------------------
        // free up memory resources used for the Shared Buffers
        // ----------------------------------------------------
	if (korg1212->dma_shared.area) {
		FUNC5(&korg1212->dma_shared);
		korg1212->dma_shared.area = NULL;
        }
        
	FUNC3(korg1212->pci);
        FUNC2(korg1212);
        return 0;
}