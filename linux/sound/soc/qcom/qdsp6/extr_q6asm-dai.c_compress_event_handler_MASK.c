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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct snd_compr_stream {int dummy; } ;
struct q6asm_dai_rtd {int /*<<< orphan*/  lock; scalar_t__ pcm_count; scalar_t__ bytes_sent; int /*<<< orphan*/  audio_client; scalar_t__ bytes_received; int /*<<< orphan*/  state; scalar_t__ copied_total; struct snd_compr_stream* cstream; } ;

/* Variables and functions */
#define  ASM_CLIENT_EVENT_CMD_EOS_DONE 130 
#define  ASM_CLIENT_EVENT_CMD_RUN_DONE 129 
#define  ASM_CLIENT_EVENT_DATA_WRITE_DONE 128 
 int /*<<< orphan*/  NO_TIMESTAMP ; 
 int /*<<< orphan*/  Q6ASM_STREAM_RUNNING ; 
 int /*<<< orphan*/  Q6ASM_STREAM_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_compr_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(uint32_t opcode, uint32_t token,
				   uint32_t *payload, void *priv)
{
	struct q6asm_dai_rtd *prtd = priv;
	struct snd_compr_stream *substream = prtd->cstream;
	unsigned long flags;
	uint64_t avail;

	switch (opcode) {
	case ASM_CLIENT_EVENT_CMD_RUN_DONE:
		FUNC2(&prtd->lock, flags);
		if (!prtd->bytes_sent) {
			FUNC0(prtd->audio_client, prtd->pcm_count,
					  0, 0, NO_TIMESTAMP);
			prtd->bytes_sent += prtd->pcm_count;
		}

		FUNC3(&prtd->lock, flags);
		break;

	case ASM_CLIENT_EVENT_CMD_EOS_DONE:
		prtd->state = Q6ASM_STREAM_STOPPED;
		break;

	case ASM_CLIENT_EVENT_DATA_WRITE_DONE:
		FUNC2(&prtd->lock, flags);

		prtd->copied_total += prtd->pcm_count;
		FUNC1(substream);

		if (prtd->state != Q6ASM_STREAM_RUNNING) {
			FUNC3(&prtd->lock, flags);
			break;
		}

		avail = prtd->bytes_received - prtd->bytes_sent;

		if (avail >= prtd->pcm_count) {
			FUNC0(prtd->audio_client,
					   prtd->pcm_count, 0, 0, NO_TIMESTAMP);
			prtd->bytes_sent += prtd->pcm_count;
		}

		FUNC3(&prtd->lock, flags);
		break;

	default:
		break;
	}
}