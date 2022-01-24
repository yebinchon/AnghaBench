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
typedef  int /*<<< orphan*/  uint8_t ;
struct pcap_pkthdr {int /*<<< orphan*/  len; int /*<<< orphan*/  caplen; } ;
struct TYPE_2__ {scalar_t__ Rs; } ;

/* Variables and functions */
 int CMD_ERR ; 
 int CMD_OK ; 
 TYPE_1__ bpf_curr ; 
 int /*<<< orphan*/  bpf_image ; 
 int /*<<< orphan*/  bpf_prog_len ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pcap_pkthdr* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(char *num)
{
	struct pcap_pkthdr *hdr;
	int steps, ret;

	if (!FUNC0() || !FUNC5())
		return CMD_ERR;

	steps = FUNC10(num, NULL, 10);
	if (steps == 0 || FUNC9(num) == 0)
		steps = 1;
	if (steps < 0) {
		if (!FUNC2(steps))
			return CMD_ERR;
		steps = 1;
	}

	hdr = FUNC4();
	ret = FUNC3(bpf_image, bpf_prog_len,
			       (uint8_t *) hdr + sizeof(*hdr),
			       hdr->caplen, hdr->len, steps);
	if (ret >= 0 || bpf_curr.Rs) {
		FUNC1();
		if (!FUNC6()) {
			FUNC8("(going back to first packet)\n");
			FUNC7();
		} else {
			FUNC8("(next packet)\n");
		}
	}

	return CMD_OK;
}