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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int payload; } ;
struct intel_pt_decoder {int have_tma; int timestamp; scalar_t__ tsc_slip; scalar_t__ last_packet_type; scalar_t__ cyc_ref_timestamp; int have_calc_cyc_to_tsc; scalar_t__ cycle_cnt; scalar_t__ timestamp_insn_cnt; scalar_t__ tsc_timestamp; TYPE_1__ packet; scalar_t__ ref_timestamp; } ;

/* Variables and functions */
 scalar_t__ INTEL_PT_CYC ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_pt_decoder*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct intel_pt_decoder *decoder)
{
	uint64_t timestamp;

	decoder->have_tma = false;

	if (decoder->ref_timestamp) {
		timestamp = FUNC0(decoder->packet.payload,
					    decoder->ref_timestamp);
		decoder->tsc_timestamp = timestamp;
		decoder->timestamp = timestamp;
		decoder->ref_timestamp = 0;
		decoder->timestamp_insn_cnt = 0;
	} else if (decoder->timestamp) {
		timestamp = decoder->packet.payload |
			    (decoder->timestamp & (0xffULL << 56));
		decoder->tsc_timestamp = timestamp;
		if (timestamp < decoder->timestamp &&
		    decoder->timestamp - timestamp < decoder->tsc_slip) {
			FUNC2("Suppressing backwards timestamp",
					timestamp);
			timestamp = decoder->timestamp;
		}
		if (timestamp < decoder->timestamp) {
			FUNC2("Wraparound timestamp", timestamp);
			timestamp += (1ULL << 56);
			decoder->tsc_timestamp = timestamp;
		}
		decoder->timestamp = timestamp;
		decoder->timestamp_insn_cnt = 0;
	}

	if (decoder->last_packet_type == INTEL_PT_CYC) {
		decoder->cyc_ref_timestamp = decoder->timestamp;
		decoder->cycle_cnt = 0;
		decoder->have_calc_cyc_to_tsc = false;
		FUNC1(decoder, false);
	}

	FUNC2("Setting timestamp", decoder->timestamp);
}