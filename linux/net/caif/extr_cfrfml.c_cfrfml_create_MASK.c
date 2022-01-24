#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct dev_info {int dummy; } ;
struct cflayer {int /*<<< orphan*/  name; int /*<<< orphan*/  transmit; int /*<<< orphan*/  receive; } ;
struct TYPE_2__ {struct cflayer layer; int /*<<< orphan*/  release; } ;
struct cfrfml {int fragment_size; TYPE_1__ serv; int /*<<< orphan*/  sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIF_LAYER_NAME_SZ ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int RFM_HEAD_SIZE ; 
 int /*<<< orphan*/  cfrfml_receive ; 
 int /*<<< orphan*/  cfrfml_release ; 
 int /*<<< orphan*/  cfrfml_transmit ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,struct dev_info*,int) ; 
 struct cfrfml* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct cflayer *FUNC4(u8 channel_id, struct dev_info *dev_info,
			      int mtu_size)
{
	int tmp;
	struct cfrfml *this = FUNC1(sizeof(struct cfrfml), GFP_ATOMIC);

	if (!this)
		return NULL;

	FUNC0(&this->serv, channel_id, dev_info, false);
	this->serv.release = cfrfml_release;
	this->serv.layer.receive = cfrfml_receive;
	this->serv.layer.transmit = cfrfml_transmit;

	/* Round down to closest multiple of 16 */
	tmp = (mtu_size - RFM_HEAD_SIZE - 6) / 16;
	tmp *= 16;

	this->fragment_size = tmp;
	FUNC3(&this->sync);
	FUNC2(this->serv.layer.name, CAIF_LAYER_NAME_SZ,
		"rfm%d", channel_id);

	return &this->serv.layer;
}