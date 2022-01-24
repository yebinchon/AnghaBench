#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_motu {TYPE_2__* spec; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {TYPE_1__* protocol; } ;
struct TYPE_3__ {int (* switch_fetching_mode ) (struct snd_motu*,int) ;} ;

/* Variables and functions */
 int CHANGE_RX_ISOC_COMM_STATE ; 
 int CHANGE_TX_ISOC_COMM_STATE ; 
 int /*<<< orphan*/  ISOC_COMM_CONTROL_OFFSET ; 
 int RX_ISOC_COMM_IS_ACTIVATED ; 
 int TX_ISOC_COMM_IS_ACTIVATED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct snd_motu*,int) ; 

__attribute__((used)) static void FUNC5(struct snd_motu *motu)
{
	__be32 reg;
	u32 data;
	int err;

	err = motu->spec->protocol->switch_fetching_mode(motu, false);
	if (err < 0)
		return;

	err = FUNC2(motu, ISOC_COMM_CONTROL_OFFSET, &reg,
					sizeof(reg));
	if (err < 0)
		return;
	data = FUNC0(reg);

	data &= ~(RX_ISOC_COMM_IS_ACTIVATED | TX_ISOC_COMM_IS_ACTIVATED);
	data |= CHANGE_RX_ISOC_COMM_STATE | CHANGE_TX_ISOC_COMM_STATE;

	reg = FUNC1(data);
	FUNC3(motu, ISOC_COMM_CONTROL_OFFSET, &reg,
				   sizeof(reg));
}