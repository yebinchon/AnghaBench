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
struct sk_buff {int dummy; } ;
struct ncsi_cmd_pkt_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  common; } ;
struct ncsi_cmd_oem_pkt {TYPE_1__ cmd; int /*<<< orphan*/  mfr_id; } ;
struct ncsi_cmd_arg {int payload; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ncsi_cmd_arg*) ; 
 struct ncsi_cmd_oem_pkt* FUNC2 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
				struct ncsi_cmd_arg *nca)
{
	struct ncsi_cmd_oem_pkt *cmd;
	unsigned int len;

	len = sizeof(struct ncsi_cmd_pkt_hdr) + 4;
	if (nca->payload < 26)
		len += 26;
	else
		len += nca->payload;

	cmd = FUNC2(skb, len);
	FUNC0(&cmd->mfr_id, nca->data, nca->payload);
	FUNC1(&cmd->cmd.common, nca);

	return 0;
}