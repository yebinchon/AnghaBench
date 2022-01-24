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
struct virtio_net_hdr {int dummy; } ;

/* Variables and functions */
 int DATA_LEN ; 
 int cfg_payload_len ; 
 int /*<<< orphan*/  cfg_use_vlan ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ tbuf ; 

__attribute__((used)) static void FUNC6(void)
{
	int fdr, fds, total_len;

	fdr = FUNC4();
	fds = FUNC5();

	total_len = FUNC2();

	/* BPF filter accepts only this length, vlan changes MAC */
	if (cfg_payload_len == DATA_LEN && !cfg_use_vlan)
		FUNC1(fds, total_len - sizeof(struct virtio_net_hdr),
		      tbuf + sizeof(struct virtio_net_hdr));

	FUNC1(fdr, cfg_payload_len, tbuf + total_len - cfg_payload_len);

	if (FUNC0(fds))
		FUNC3(1, errno, "close s");
	if (FUNC0(fdr))
		FUNC3(1, errno, "close r");
}