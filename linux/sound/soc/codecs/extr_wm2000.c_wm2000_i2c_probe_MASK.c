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
typedef  unsigned int u16 ;
struct wm2000_priv {int speech_clarity; int anc_download_size; int* anc_download; int anc_eng_ena; int anc_active; int spk_ena; TYPE_1__* supplies; struct i2c_client* i2c; int /*<<< orphan*/  mclk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  lock; } ;
struct wm2000_platform_data {char* download_file; int /*<<< orphan*/  speech_enh_disable; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int WM2000_NUM_SUPPLIES ; 
 int /*<<< orphan*/  WM2000_REG_ID1 ; 
 int /*<<< orphan*/  WM2000_REG_ID2 ; 
 int /*<<< orphan*/  WM2000_REG_REVISON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct wm2000_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wm2000_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC14 (int,TYPE_1__*) ; 
 int FUNC15 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct firmware const*) ; 
 int FUNC17 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soc_component_dev_wm2000 ; 
 int /*<<< orphan*/  wm2000_regmap ; 
 int /*<<< orphan*/  FUNC18 (struct wm2000_priv*) ; 
 int /*<<< orphan*/ * wm2000_supplies ; 

__attribute__((used)) static int FUNC19(struct i2c_client *i2c,
			    const struct i2c_device_id *i2c_id)
{
	struct wm2000_priv *wm2000;
	struct wm2000_platform_data *pdata;
	const char *filename;
	const struct firmware *fw = NULL;
	int ret, i;
	unsigned int reg;
	u16 id;

	wm2000 = FUNC7(&i2c->dev, sizeof(*wm2000), GFP_KERNEL);
	if (!wm2000)
		return -ENOMEM;

	FUNC12(&wm2000->lock);

	FUNC5(&i2c->dev, wm2000);

	wm2000->regmap = FUNC8(i2c, &wm2000_regmap);
	if (FUNC0(wm2000->regmap)) {
		ret = FUNC1(wm2000->regmap);
		FUNC2(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		goto out;
	}

	for (i = 0; i < WM2000_NUM_SUPPLIES; i++)
		wm2000->supplies[i].supply = wm2000_supplies[i];

	ret = FUNC9(&i2c->dev, WM2000_NUM_SUPPLIES,
				      wm2000->supplies);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to get supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC15(WM2000_NUM_SUPPLIES, wm2000->supplies);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	/* Verify that this is a WM2000 */
	ret = FUNC13(wm2000->regmap, WM2000_REG_ID1, &reg);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Unable to read ID1: %d\n", ret);
		return ret;
	}
	id = reg << 8;
	ret = FUNC13(wm2000->regmap, WM2000_REG_ID2, &reg);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Unable to read ID2: %d\n", ret);
		return ret;
	}
	id |= reg & 0xff;

	if (id != 0x2000) {
		FUNC2(&i2c->dev, "Device is not a WM2000 - ID %x\n", id);
		ret = -ENODEV;
		goto err_supplies;
	}

	ret = FUNC13(wm2000->regmap, WM2000_REG_REVISON, &reg);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Unable to read Revision: %d\n", ret);
		return ret;
	}
	FUNC4(&i2c->dev, "revision %c\n", reg + 'A');

	wm2000->mclk = FUNC6(&i2c->dev, "MCLK");
	if (FUNC0(wm2000->mclk)) {
		ret = FUNC1(wm2000->mclk);
		FUNC2(&i2c->dev, "Failed to get MCLK: %d\n", ret);
		goto err_supplies;
	}

	filename = "wm2000_anc.bin";
	pdata = FUNC3(&i2c->dev);
	if (pdata) {
		wm2000->speech_clarity = !pdata->speech_enh_disable;

		if (pdata->download_file)
			filename = pdata->download_file;
	}

	ret = FUNC17(&fw, filename, &i2c->dev);
	if (ret != 0) {
		FUNC2(&i2c->dev, "Failed to acquire ANC data: %d\n", ret);
		goto err_supplies;
	}

	/* Pre-cook the concatenation of the register address onto the image */
	wm2000->anc_download_size = fw->size + 2;
	wm2000->anc_download = FUNC7(&i2c->dev,
					    wm2000->anc_download_size,
					    GFP_KERNEL);
	if (wm2000->anc_download == NULL) {
		ret = -ENOMEM;
		goto err_supplies;
	}

	wm2000->anc_download[0] = 0x80;
	wm2000->anc_download[1] = 0x00;
	FUNC11(wm2000->anc_download + 2, fw->data, fw->size);

	wm2000->anc_eng_ena = 1;
	wm2000->anc_active = 1;
	wm2000->spk_ena = 1;
	wm2000->i2c = i2c;

	FUNC18(wm2000);

	ret = FUNC10(&i2c->dev,
					&soc_component_dev_wm2000, NULL, 0);

err_supplies:
	FUNC14(WM2000_NUM_SUPPLIES, wm2000->supplies);

out:
	FUNC16(fw);
	return ret;
}