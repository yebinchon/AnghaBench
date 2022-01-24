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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct sst_dsp {int /*<<< orphan*/  spinlock; } ;
struct sst_byt_stream {int /*<<< orphan*/  pdata; int /*<<< orphan*/  (* notify_position ) (struct sst_byt_stream*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  running; } ;
struct sst_byt {struct sst_dsp* dsp; } ;

/* Variables and functions */
#define  IPC_IA_FW_INIT_CMPLT 129 
#define  IPC_SST_PERIOD_ELAPSED 128 
 int /*<<< orphan*/  SST_IPCD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sst_byt*,int /*<<< orphan*/ ) ; 
 struct sst_byt_stream* FUNC3 (struct sst_byt*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sst_byt_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sst_byt *byt,
					unsigned long *flags)
{
	struct sst_dsp *sst = byt->dsp;
	struct sst_byt_stream *stream;
	u64 header;
	u8 msg_id, stream_id;

	header = FUNC6(sst, SST_IPCD);
	msg_id = FUNC4(header);

	switch (msg_id) {
	case IPC_SST_PERIOD_ELAPSED:
		stream_id = FUNC5(header);
		stream = FUNC3(byt, stream_id);
		if (stream && stream->running && stream->notify_position) {
			FUNC1(&sst->spinlock, *flags);
			stream->notify_position(stream, stream->pdata);
			FUNC0(&sst->spinlock, *flags);
		}
		break;
	case IPC_IA_FW_INIT_CMPLT:
		FUNC2(byt, header);
		break;
	}

	return 1;
}