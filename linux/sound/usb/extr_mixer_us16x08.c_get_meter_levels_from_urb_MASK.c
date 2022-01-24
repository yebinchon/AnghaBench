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
struct snd_us16x08_meter_store {int* meter_level; int* comp_level; int* master_level; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(int s,
	struct snd_us16x08_meter_store *store,
	u8 *meter_urb)
{
	int val = FUNC6(meter_urb, s) + (FUNC7(meter_urb, s) << 8);

	if (FUNC0(meter_urb, s) == 0x61 && FUNC1(meter_urb, s) == 0x02 &&
		FUNC2(meter_urb, s) == 0x04 && FUNC3(meter_urb, s) == 0x62) {
		if (FUNC5(meter_urb, s) == 0x72)
			store->meter_level[FUNC4(meter_urb, s) - 1] = val;
		if (FUNC5(meter_urb, s) == 0xb2)
			store->comp_level[FUNC4(meter_urb, s) - 1] = val;
	}
	if (FUNC0(meter_urb, s) == 0x61 && FUNC1(meter_urb, s) == 0x02 &&
		FUNC2(meter_urb, s) == 0x02 && FUNC3(meter_urb, s) == 0x62)
		store->master_level[FUNC4(meter_urb, s) - 1] = val;
}