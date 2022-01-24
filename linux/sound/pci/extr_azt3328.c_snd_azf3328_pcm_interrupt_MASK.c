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
typedef  int u8 ;
struct snd_azf3328_codec_data {int /*<<< orphan*/  name; scalar_t__ substream; int /*<<< orphan*/  lock; } ;
struct snd_azf3328 {TYPE_1__* card; } ;
typedef  enum snd_azf3328_codec_type { ____Placeholder_snd_azf3328_codec_type } snd_azf3328_codec_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AZF_CODEC_I2S_OUT ; 
 int AZF_CODEC_PLAYBACK ; 
 int /*<<< orphan*/  IDX_IO_CODEC_DMA_CURRPOS ; 
 int /*<<< orphan*/  IDX_IO_CODEC_IRQTYPE ; 
 int IRQ_SOMETHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct snd_azf3328_codec_data const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_azf3328_codec_data const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_azf3328_codec_data const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_azf3328*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC9(struct snd_azf3328 *chip,
			  const struct snd_azf3328_codec_data *first_codec,
			  u8 status
)
{
	u8 which;
	enum snd_azf3328_codec_type codec_type;
	const struct snd_azf3328_codec_data *codec = first_codec;

	for (codec_type = AZF_CODEC_PLAYBACK;
		 codec_type <= AZF_CODEC_I2S_OUT;
			 ++codec_type, ++codec) {

		/* skip codec if there's no interrupt for it */
		if (!(status & (1 << codec_type)))
			continue;

		FUNC7(codec->lock);
		which = FUNC2(codec, IDX_IO_CODEC_IRQTYPE);
		/* ack all IRQ types immediately */
		FUNC4(codec, IDX_IO_CODEC_IRQTYPE, which);
		FUNC8(codec->lock);

		if (codec->substream) {
			FUNC6(codec->substream);
			FUNC0(chip->card->dev, "%s period done (#%x), @ %x\n",
				codec->name,
				which,
				FUNC3(
					codec, IDX_IO_CODEC_DMA_CURRPOS));
		} else
			FUNC1(chip->card->dev, "irq handler problem!\n");
		if (which & IRQ_SOMETHING)
			FUNC5(chip, which);
	}
}