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
struct tscs454 {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int COEFF_SIZE ; 
 int DACCRSTAT_MAX_TRYS ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct tscs454* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component, u8 *coeff_ram,
		unsigned int r_stat, unsigned int r_addr, unsigned int r_wr,
		unsigned int coeff_addr, unsigned int coeff_cnt)
{
	struct tscs454 *tscs454 = FUNC3(component);
	unsigned int val;
	int cnt;
	int trys;
	int ret;

	for (cnt = 0; cnt < coeff_cnt; cnt++, coeff_addr++) {

		for (trys = 0; trys < DACCRSTAT_MAX_TRYS; trys++) {
			ret = FUNC4(component, r_stat, &val);
			if (ret < 0) {
				FUNC0(component->dev,
					"Failed to read stat (%d)\n", ret);
				return ret;
			}
			if (!val)
				break;
		}

		if (trys == DACCRSTAT_MAX_TRYS) {
			ret = -EIO;
			FUNC0(component->dev,
				"Coefficient write error (%d)\n", ret);
			return ret;
		}

		ret = FUNC2(tscs454->regmap, r_addr, coeff_addr);
		if (ret < 0) {
			FUNC0(component->dev,
				"Failed to write dac ram address (%d)\n", ret);
			return ret;
		}

		ret = FUNC1(tscs454->regmap, r_wr,
			&coeff_ram[coeff_addr * COEFF_SIZE],
			COEFF_SIZE);
		if (ret < 0) {
			FUNC0(component->dev,
				"Failed to write dac ram (%d)\n", ret);
			return ret;
		}
	}

	return 0;
}