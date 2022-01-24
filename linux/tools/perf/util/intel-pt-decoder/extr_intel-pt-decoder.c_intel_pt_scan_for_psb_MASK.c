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
struct intel_pt_decoder {int buf; unsigned char* pkt_step; scalar_t__ len; int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_PT_PSB_LEN ; 
 int /*<<< orphan*/  INTEL_PT_PSB_STR ; 
 int FUNC0 (struct intel_pt_decoder*,int) ; 
 int FUNC1 (struct intel_pt_decoder*) ; 
 int FUNC2 (struct intel_pt_decoder*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct intel_pt_decoder*) ; 
 unsigned char* FUNC5 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct intel_pt_decoder *decoder)
{
	unsigned char *next;
	int ret;

	FUNC3("Scanning for PSB\n");
	while (1) {
		if (!decoder->len) {
			ret = FUNC0(decoder, false);
			if (ret)
				return ret;
		}

		next = FUNC5(decoder->buf, decoder->len, INTEL_PT_PSB_STR,
			      INTEL_PT_PSB_LEN);
		if (!next) {
			int part_psb;

			part_psb = FUNC4(decoder);
			if (part_psb) {
				ret = FUNC2(decoder, part_psb);
				if (ret)
					return ret;
			} else {
				decoder->pos += decoder->len;
				decoder->len = 0;
			}
			continue;
		}

		decoder->pkt_step = next - decoder->buf;
		return FUNC1(decoder);
	}
}