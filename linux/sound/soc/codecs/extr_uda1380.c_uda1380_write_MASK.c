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
struct uda1380_priv {int /*<<< orphan*/  i2c; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int UDA1380_MVOL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 struct uda1380_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  uda1380_cache_dirty ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component, unsigned int reg,
	unsigned int value)
{
	struct uda1380_priv *uda1380 = FUNC4(component);
	u8 data[3];

	/* data is
	 *   data[0] is register offset
	 *   data[1] is MS byte
	 *   data[2] is LS byte
	 */
	data[0] = reg;
	data[1] = (value & 0xff00) >> 8;
	data[2] = value & 0x00ff;

	FUNC6(component, reg, value);

	/* the interpolator & decimator regs must only be written when the
	 * codec DAI is active.
	 */
	if (!FUNC5(component) && (reg >= UDA1380_MVOL))
		return 0;
	FUNC3("uda1380: hw write %x val %x\n", reg, value);
	if (FUNC2(uda1380->i2c, data, 3) == 3) {
		unsigned int val;
		FUNC2(uda1380->i2c, data, 1);
		FUNC1(uda1380->i2c, data, 2);
		val = (data[0]<<8) | data[1];
		if (val != value) {
			FUNC3("uda1380: READ BACK VAL %x\n",
					(data[0]<<8) | data[1]);
			return -EIO;
		}
		if (reg >= 0x10)
			FUNC0(reg - 0x10, &uda1380_cache_dirty);
		return 0;
	} else
		return -EIO;
}