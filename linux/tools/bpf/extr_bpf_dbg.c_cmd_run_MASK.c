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
typedef  scalar_t__ uint32_t ;
struct pcap_pkthdr {int /*<<< orphan*/  len; int /*<<< orphan*/  caplen; } ;

/* Variables and functions */
 int CMD_ERR ; 
 int CMD_OK ; 
 int /*<<< orphan*/  bpf_image ; 
 int /*<<< orphan*/  bpf_prog_len ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcap_pkthdr* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (char*) ; 
 int FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(char *num)
{
	static uint32_t pass, fail;
	bool has_limit = true;
	int pkts = 0, i = 0;

	if (!FUNC0() || !FUNC4())
		return CMD_ERR;

	pkts = FUNC9(num, NULL, 10);
	if (pkts == 0 || FUNC8(num) == 0)
		has_limit = false;

	do {
		struct pcap_pkthdr *hdr = FUNC3();
		int ret = FUNC2(bpf_image, bpf_prog_len,
				      (uint8_t *) hdr + sizeof(*hdr),
				      hdr->caplen, hdr->len);
		if (ret > 0)
			pass++;
		else if (ret == 0)
			fail++;
		else
			return CMD_OK;
		FUNC1();
	} while (FUNC5() && (!has_limit || (has_limit && ++i < pkts)));

	FUNC7("bpf passes:%u fails:%u\n", pass, fail);

	FUNC6();
	FUNC1();

	pass = fail = 0;
	return CMD_OK;
}