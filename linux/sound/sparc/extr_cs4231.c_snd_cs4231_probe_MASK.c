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
struct snd_cs4231 {int* image; int /*<<< orphan*/  lock; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 size_t CS4231_ALT_FEATURE_1 ; 
 size_t CS4231_ALT_FEATURE_2 ; 
 size_t CS4231_IFACE_CTRL ; 
 int CS4231_INIT ; 
 size_t CS4231_MISC_INFO ; 
 int CS4231_MODE2 ; 
 int CS4231_SINGLE_DMA ; 
 size_t CS4231_VERSION ; 
 int ENODEV ; 
 int /*<<< orphan*/  REGSEL ; 
 int /*<<< orphan*/  STATUS ; 
 int FUNC1 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs4231*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct snd_cs4231*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_cs4231*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct snd_cs4231 *chip)
{
	unsigned long flags;
	int i;
	int id = 0;
	int vers = 0;
	unsigned char *ptr;

	for (i = 0; i < 50; i++) {
		FUNC3();
		if (FUNC1(chip, FUNC0(chip, REGSEL)) & CS4231_INIT)
			FUNC5(2);
		else {
			FUNC11(&chip->lock, flags);
			FUNC9(chip, CS4231_MISC_INFO, CS4231_MODE2);
			id = FUNC6(chip, CS4231_MISC_INFO) & 0x0f;
			vers = FUNC6(chip, CS4231_VERSION);
			FUNC12(&chip->lock, flags);
			if (id == 0x0a)
				break;	/* this is valid value */
		}
	}
	FUNC10("cs4231: port = %p, id = 0x%x\n", chip->port, id);
	if (id != 0x0a)
		return -ENODEV;	/* no valid device found */

	FUNC11(&chip->lock, flags);

	/* clear any pendings IRQ */
	FUNC1(chip, FUNC0(chip, STATUS));
	FUNC2(chip, 0, FUNC0(chip, STATUS));
	FUNC3();

	FUNC12(&chip->lock, flags);

	chip->image[CS4231_MISC_INFO] = CS4231_MODE2;
	chip->image[CS4231_IFACE_CTRL] =
		chip->image[CS4231_IFACE_CTRL] & ~CS4231_SINGLE_DMA;
	chip->image[CS4231_ALT_FEATURE_1] = 0x80;
	chip->image[CS4231_ALT_FEATURE_2] = 0x01;
	if (vers & 0x20)
		chip->image[CS4231_ALT_FEATURE_2] |= 0x02;

	ptr = (unsigned char *) &chip->image;

	FUNC7(chip);

	FUNC11(&chip->lock, flags);

	for (i = 0; i < 32; i++)	/* ok.. fill all CS4231 registers */
		FUNC9(chip, i, *ptr++);

	FUNC12(&chip->lock, flags);

	FUNC8(chip);

	FUNC7(chip);

	FUNC4(2);

	return 0;		/* all things are ok.. */
}