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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  t ;
struct wm0010_priv {scalar_t__ state; int sysclk; int pll_running; int /*<<< orphan*/  core_supplies; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  pll_clkctrl1; scalar_t__ max_spi_freq; int /*<<< orphan*/  boot_completion; int /*<<< orphan*/  gpio_reset_value; int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  dbvdd; int /*<<< orphan*/  dev; } ;
struct spi_transfer {int length; int len; int bits_per_word; int speed_hz; int /*<<< orphan*/ * tx_buf; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  clkctrl1; int /*<<< orphan*/  command; } ;
struct spi_message {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int /*<<< orphan*/ * dev; } ;
struct dfw_pllrec {int length; int len; int bits_per_word; int speed_hz; int /*<<< orphan*/ * tx_buf; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  clkctrl1; int /*<<< orphan*/  command; } ;
typedef  int /*<<< orphan*/  pll_rec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFW_CMD_PLL ; 
 int ECANCELED ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ WM0010_BOOTROM ; 
 scalar_t__ WM0010_FIRMWARE ; 
 scalar_t__ WM0010_OUT_OF_RESET ; 
 scalar_t__ WM0010_POWER_OFF ; 
 scalar_t__ WM0010_STAGE2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct wm0010_priv* FUNC15 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC17 (struct spi_message*) ; 
 int FUNC18 (struct spi_device*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 struct spi_device* FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC23 (char*,struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC24 (struct snd_soc_component*) ; 
 int FUNC25 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC26(struct snd_soc_component *component)
{
	struct spi_device *spi = FUNC21(component->dev);
	struct wm0010_priv *wm0010 = FUNC15(component);
	unsigned long flags;
	int ret;
	struct spi_message m;
	struct spi_transfer t;
	struct dfw_pllrec pll_rec;
	u32 *p, len;
	u64 *img_swap;
	u8 *out;
	int i;

	FUNC19(&wm0010->irq_lock, flags);
	if (wm0010->state != WM0010_POWER_OFF)
		FUNC4(wm0010->dev, "DSP already powered up!\n");
	FUNC20(&wm0010->irq_lock, flags);

	if (wm0010->sysclk > 26000000) {
		FUNC3(component->dev, "Max DSP clock frequency is 26MHz\n");
		ret = -ECANCELED;
		goto err;
	}

	FUNC10(&wm0010->lock);
	wm0010->pll_running = false;

	FUNC2(component->dev, "max_spi_freq: %d\n", wm0010->max_spi_freq);

	ret = FUNC13(FUNC0(wm0010->core_supplies),
				    wm0010->core_supplies);
	if (ret != 0) {
		FUNC3(&spi->dev, "Failed to enable core supplies: %d\n",
			ret);
		FUNC11(&wm0010->lock);
		goto err;
	}

	ret = FUNC14(wm0010->dbvdd);
	if (ret != 0) {
		FUNC3(&spi->dev, "Failed to enable DBVDD: %d\n", ret);
		goto err_core;
	}

	/* Release reset */
	FUNC5(wm0010->gpio_reset, !wm0010->gpio_reset_value);
	FUNC19(&wm0010->irq_lock, flags);
	wm0010->state = WM0010_OUT_OF_RESET;
	FUNC20(&wm0010->irq_lock, flags);

	if (!FUNC22(&wm0010->boot_completion,
					 FUNC9(20)))
		FUNC3(component->dev, "Failed to get interrupt from DSP\n");

	FUNC19(&wm0010->irq_lock, flags);
	wm0010->state = WM0010_BOOTROM;
	FUNC20(&wm0010->irq_lock, flags);

	ret = FUNC25(component);
	if (ret)
		goto abort;

	if (!FUNC22(&wm0010->boot_completion,
					 FUNC9(20)))
		FUNC3(component->dev, "Failed to get interrupt from DSP loader.\n");

	FUNC19(&wm0010->irq_lock, flags);
	wm0010->state = WM0010_STAGE2;
	FUNC20(&wm0010->irq_lock, flags);

	/* Only initialise PLL if max_spi_freq initialised */
	if (wm0010->max_spi_freq) {

		/* Initialise a PLL record */
		FUNC8(&pll_rec, 0, sizeof(pll_rec));
		pll_rec.command = DFW_CMD_PLL;
		pll_rec.length = (sizeof(pll_rec) - 8);

		/* On wm0010 only the CLKCTRL1 value is used */
		pll_rec.clkctrl1 = wm0010->pll_clkctrl1;

		ret = -ENOMEM;
		len = pll_rec.length + 8;
		out = FUNC7(len, GFP_KERNEL | GFP_DMA);
		if (!out)
			goto abort;

		img_swap = FUNC7(len, GFP_KERNEL | GFP_DMA);
		if (!img_swap)
			goto abort_out;

		/* We need to re-order for 0010 */
		FUNC1((u64 *)&pll_rec, img_swap, len);

		FUNC17(&m);
		FUNC8(&t, 0, sizeof(t));
		t.rx_buf = out;
		t.tx_buf = img_swap;
		t.len = len;
		t.bits_per_word = 8;
		t.speed_hz = wm0010->sysclk / 6;
		FUNC16(&t, &m);

		ret = FUNC18(spi, &m);
		if (ret) {
			FUNC3(component->dev, "First PLL write failed: %d\n", ret);
			goto abort_swap;
		}

		/* Use a second send of the message to get the return status */
		ret = FUNC18(spi, &m);
		if (ret) {
			FUNC3(component->dev, "Second PLL write failed: %d\n", ret);
			goto abort_swap;
		}

		p = (u32 *)out;

		/* Look for PLL active code from the DSP */
		for (i = 0; i < len / 4; i++) {
			if (*p == 0x0e00ed0f) {
				FUNC2(component->dev, "PLL packet received\n");
				wm0010->pll_running = true;
				break;
			}
			p++;
		}

		FUNC6(img_swap);
		FUNC6(out);
	} else
		FUNC2(component->dev, "Not enabling DSP PLL.");

	ret = FUNC23("wm0010.dfw", component);

	if (ret != 0)
		goto abort;

	FUNC19(&wm0010->irq_lock, flags);
	wm0010->state = WM0010_FIRMWARE;
	FUNC20(&wm0010->irq_lock, flags);

	FUNC11(&wm0010->lock);

	return 0;

abort_swap:
	FUNC6(img_swap);
abort_out:
	FUNC6(out);
abort:
	/* Put the chip back into reset */
	FUNC24(component);
	FUNC11(&wm0010->lock);
	return ret;

err_core:
	FUNC11(&wm0010->lock);
	FUNC12(FUNC0(wm0010->core_supplies),
			       wm0010->core_supplies);
err:
	return ret;
}