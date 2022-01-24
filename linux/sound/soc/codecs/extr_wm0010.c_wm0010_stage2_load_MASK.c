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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  t ;
struct wm0010_priv {int sysclk; } ;
struct spi_transfer {int* rx_buf; int* tx_buf; int len; int bits_per_word; int speed_hz; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 struct wm0010_priv* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_message*) ; 
 int FUNC11 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wm0010_priv*) ; 

__attribute__((used)) static int FUNC14(struct snd_soc_component *component)
{
	struct spi_device *spi = FUNC12(component->dev);
	struct wm0010_priv *wm0010 = FUNC8(component);
	const struct firmware *fw;
	struct spi_message m;
	struct spi_transfer t;
	u32 *img;
	u8 *out;
	int i;
	int ret = 0;

	ret = FUNC7(&fw, "wm0010_stage2.bin", component->dev);
	if (ret != 0) {
		FUNC1(component->dev, "Failed to request stage2 loader: %d\n",
			ret);
		return ret;
	}

	FUNC0(component->dev, "Downloading %zu byte stage 2 loader\n", fw->size);

	/* Copy to local buffer first as vmalloc causes problems for dma */
	img = FUNC3(fw->size, GFP_KERNEL | GFP_DMA);
	if (!img) {
		ret = -ENOMEM;
		goto abort2;
	}

	out = FUNC3(fw->size, GFP_KERNEL | GFP_DMA);
	if (!out) {
		ret = -ENOMEM;
		goto abort1;
	}

	FUNC4(img, &fw->data[0], fw->size);

	FUNC10(&m);
	FUNC5(&t, 0, sizeof(t));
	t.rx_buf = out;
	t.tx_buf = img;
	t.len = fw->size;
	t.bits_per_word = 8;
	t.speed_hz = wm0010->sysclk / 10;
	FUNC9(&t, &m);

	FUNC0(component->dev, "Starting initial download at %dHz\n",
		t.speed_hz);

	ret = FUNC11(spi, &m);
	if (ret != 0) {
		FUNC1(component->dev, "Initial download failed: %d\n", ret);
		goto abort;
	}

	/* Look for errors from the boot ROM */
	for (i = 0; i < fw->size; i++) {
		if (out[i] != 0x55) {
			FUNC1(component->dev, "Boot ROM error: %x in %d\n",
				out[i], i);
			FUNC13(wm0010);
			ret = -EBUSY;
			goto abort;
		}
	}
abort:
	FUNC2(out);
abort1:
	FUNC2(img);
abort2:
	FUNC6(fw);

	return ret;
}