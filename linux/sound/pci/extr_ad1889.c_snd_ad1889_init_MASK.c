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
struct snd_ad1889 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_DMA_DISR ; 
 int AD_DMA_DISR_PMAE ; 
 int AD_DMA_DISR_PTAE ; 
 int /*<<< orphan*/  AD_DS_CCS ; 
 int /*<<< orphan*/  AD_DS_CCS_CLKEN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1889*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ad1889*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int
FUNC4(struct snd_ad1889 *chip) 
{
	FUNC2(chip, AD_DS_CCS, AD_DS_CCS_CLKEN); /* turn on clock */
	FUNC0(chip, AD_DS_CCS);	/* flush posted write */

	FUNC3(10000, 11000);

	/* enable Master and Target abort interrupts */
	FUNC1(chip, AD_DMA_DISR, AD_DMA_DISR_PMAE | AD_DMA_DISR_PTAE);

	return 0;
}