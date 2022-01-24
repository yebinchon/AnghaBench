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
struct cs_etm_packet_queue {int dummy; } ;
struct cs_etm_traceid_queue {TYPE_1__* packet; struct cs_etm_packet_queue packet_queue; } ;
struct cs_etm_queue {int dummy; } ;
struct TYPE_2__ {int sample_type; } ;

/* Variables and functions */
#define  CS_ETM_DISCONTINUITY 132 
#define  CS_ETM_EMPTY 131 
#define  CS_ETM_EXCEPTION 130 
#define  CS_ETM_EXCEPTION_RET 129 
#define  CS_ETM_RANGE 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cs_etm_traceid_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ; 
 int FUNC3 (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ; 
 int FUNC4 (struct cs_etm_packet_queue*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct cs_etm_queue *etmq,
					 struct cs_etm_traceid_queue *tidq)
{
	int ret;
	struct cs_etm_packet_queue *packet_queue;

	packet_queue = &tidq->packet_queue;

	/* Process each packet in this chunk */
	while (1) {
		ret = FUNC4(packet_queue,
						 tidq->packet);
		if (ret <= 0)
			/*
			 * Stop processing this chunk on
			 * end of data or error
			 */
			break;

		/*
		 * Since packet addresses are swapped in packet
		 * handling within below switch() statements,
		 * thus setting sample flags must be called
		 * prior to switch() statement to use address
		 * information before packets swapping.
		 */
		ret = FUNC3(etmq, tidq);
		if (ret < 0)
			break;

		switch (tidq->packet->sample_type) {
		case CS_ETM_RANGE:
			/*
			 * If the packet contains an instruction
			 * range, generate instruction sequence
			 * events.
			 */
			FUNC2(etmq, tidq);
			break;
		case CS_ETM_EXCEPTION:
		case CS_ETM_EXCEPTION_RET:
			/*
			 * If the exception packet is coming,
			 * make sure the previous instruction
			 * range packet to be handled properly.
			 */
			FUNC0(tidq);
			break;
		case CS_ETM_DISCONTINUITY:
			/*
			 * Discontinuity in trace, flush
			 * previous branch stack
			 */
			FUNC1(etmq, tidq);
			break;
		case CS_ETM_EMPTY:
			/*
			 * Should not receive empty packet,
			 * report error.
			 */
			FUNC5("CS ETM Trace: empty packet\n");
			return -EINVAL;
		default:
			break;
		}
	}

	return ret;
}