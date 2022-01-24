#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct at73c213_board_info* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct snd_card {char* driver; char* shortname; int /*<<< orphan*/  longname; struct snd_at73c213* private_data; } ;
struct snd_at73c213 {int irq; int /*<<< orphan*/  ssc; struct at73c213_board_info* board; struct spi_device* spi; } ;
struct at73c213_board_info {int ssc_id; char* shortname; int /*<<< orphan*/  dac_clk; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct snd_card*) ; 
 int FUNC4 (struct snd_card*,struct spi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_card*) ; 
 int FUNC6 (TYPE_1__*,int,char*,int /*<<< orphan*/ ,int,struct snd_card**) ; 
 int FUNC7 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	struct snd_card			*card;
	struct snd_at73c213		*chip;
	struct at73c213_board_info	*board;
	int				retval;
	char				id[16];

	board = spi->dev.platform_data;
	if (!board) {
		FUNC2(&spi->dev, "no platform_data\n");
		return -ENXIO;
	}

	if (!board->dac_clk) {
		FUNC2(&spi->dev, "no DAC clk\n");
		return -ENXIO;
	}

	if (FUNC0(board->dac_clk)) {
		FUNC2(&spi->dev, "no DAC clk\n");
		return FUNC1(board->dac_clk);
	}

	/* Allocate "card" using some unused identifiers. */
	FUNC8(id, sizeof id, "at73c213_%d", board->ssc_id);
	retval = FUNC6(&spi->dev, -1, id, THIS_MODULE,
			      sizeof(struct snd_at73c213), &card);
	if (retval < 0)
		goto out;

	chip = card->private_data;
	chip->spi = spi;
	chip->board = board;

	chip->ssc = FUNC11(board->ssc_id);
	if (FUNC0(chip->ssc)) {
		FUNC2(&spi->dev, "could not get ssc%d device\n",
				board->ssc_id);
		retval = FUNC1(chip->ssc);
		goto out_card;
	}

	retval = FUNC4(card, spi);
	if (retval)
		goto out_ssc;

	FUNC12(card->driver, "at73c213");
	FUNC12(card->shortname, board->shortname);
	FUNC9(card->longname, "%s on irq %d", card->shortname, chip->irq);

	retval = FUNC7(card);
	if (retval)
		goto out_ssc;

	FUNC3(&spi->dev, card);

	goto out;

out_ssc:
	FUNC10(chip->ssc);
out_card:
	FUNC5(card);
out:
	return retval;
}