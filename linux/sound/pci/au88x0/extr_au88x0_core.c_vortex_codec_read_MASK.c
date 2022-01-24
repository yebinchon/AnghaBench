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
struct TYPE_4__ {TYPE_1__* card; int /*<<< orphan*/  mmio; } ;
typedef  TYPE_2__ vortex_t ;
typedef  unsigned short u32 ;
typedef  unsigned short u16 ;
struct snd_ac97 {unsigned short num; scalar_t__ private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_COUNT ; 
 unsigned short VORTEX_CODEC_ADDMASK ; 
 unsigned short VORTEX_CODEC_ADDSHIFT ; 
 int /*<<< orphan*/  VORTEX_CODEC_CTRL ; 
 unsigned short VORTEX_CODEC_DATMASK ; 
 unsigned short VORTEX_CODEC_ID_SHIFT ; 
 int /*<<< orphan*/  VORTEX_CODEC_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static unsigned short FUNC4(struct snd_ac97 * codec, unsigned short addr)
{

	vortex_t *card = (vortex_t *) codec->private_data;
	u32 read_addr, data;
	unsigned lifeboat = 0;

	/* wait for transactions to clear */
	while (!(FUNC1(card->mmio, VORTEX_CODEC_CTRL) & 0x100)) {
		FUNC3(100);
		if (lifeboat++ > POLL_COUNT) {
			FUNC0(card->card->dev, "ac97 codec stuck busy\n");
			return 0xffff;
		}
	}
	/* set up read address */
	read_addr = ((addr << VORTEX_CODEC_ADDSHIFT) & VORTEX_CODEC_ADDMASK) |
		(codec->num << VORTEX_CODEC_ID_SHIFT) ;
	FUNC2(card->mmio, VORTEX_CODEC_IO, read_addr);

	/* wait for address */
	do {
		FUNC3(100);
		data = FUNC1(card->mmio, VORTEX_CODEC_IO);
		if (lifeboat++ > POLL_COUNT) {
			FUNC0(card->card->dev,
				"ac97 address never arrived\n");
			return 0xffff;
		}
	} while ((data & VORTEX_CODEC_ADDMASK) !=
		 (addr << VORTEX_CODEC_ADDSHIFT));

	/* return data. */
	return (u16) (data & VORTEX_CODEC_DATMASK);
}