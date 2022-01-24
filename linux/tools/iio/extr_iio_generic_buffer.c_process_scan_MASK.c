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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iio_channel_info {int bytes; int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iio_channel_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct iio_channel_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct iio_channel_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iio_channel_info*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(char *data,
		  struct iio_channel_info *channels,
		  int num_channels)
{
	int k;

	for (k = 0; k < num_channels; k++)
		switch (channels[k].bytes) {
			/* only a few cases implemented so far */
		case 1:
			FUNC0(*(uint8_t *)(data + channels[k].location),
				   &channels[k]);
			break;
		case 2:
			FUNC1(*(uint16_t *)(data + channels[k].location),
				   &channels[k]);
			break;
		case 4:
			FUNC2(*(uint32_t *)(data + channels[k].location),
				   &channels[k]);
			break;
		case 8:
			FUNC3(*(uint64_t *)(data + channels[k].location),
				   &channels[k]);
			break;
		default:
			break;
		}
	FUNC4("\n");
}