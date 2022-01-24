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
typedef  int /*<<< orphan*/  u32 ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int EIR_APPEARANCE ; 
 int EIR_FLAGS ; 
 int EIR_NAME_COMPLETE ; 
 int EIR_NAME_SHORT ; 
 int EIR_TX_POWER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct hci_dev *hdev, u32 adv_flags, u8 *data,
			      u8 len, bool is_adv_data)
{
	int i, cur_len;
	u8 max_len;

	max_len = FUNC3(hdev, adv_flags, is_adv_data);

	if (len > max_len)
		return false;

	/* Make sure that the data is correctly formatted. */
	for (i = 0, cur_len = 0; i < len; i += (cur_len + 1)) {
		cur_len = data[i];

		if (data[i + 1] == EIR_FLAGS &&
		    (!is_adv_data || FUNC1(adv_flags)))
			return false;

		if (data[i + 1] == EIR_TX_POWER && FUNC4(adv_flags))
			return false;

		if (data[i + 1] == EIR_NAME_COMPLETE && FUNC2(adv_flags))
			return false;

		if (data[i + 1] == EIR_NAME_SHORT && FUNC2(adv_flags))
			return false;

		if (data[i + 1] == EIR_APPEARANCE &&
		    FUNC0(adv_flags))
			return false;

		/* If the current field length would exceed the total data
		 * length, then it's invalid.
		 */
		if (i + cur_len >= len)
			return false;
	}

	return true;
}