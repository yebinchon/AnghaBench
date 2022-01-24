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
typedef  int /*<<< orphan*/  u32 ;
struct ctf_writer {int /*<<< orphan*/  stream_class; int /*<<< orphan*/  writer; } ;
struct ctf_stream {int cpu; struct bt_ctf_stream* stream; } ;
struct bt_ctf_stream {int dummy; } ;
struct bt_ctf_field {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bt_ctf_field*) ; 
 struct bt_ctf_field* FUNC1 (struct bt_ctf_field*,char*) ; 
 int FUNC2 (struct bt_ctf_field*,int /*<<< orphan*/ ) ; 
 struct bt_ctf_field* FUNC3 (struct bt_ctf_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct bt_ctf_stream*) ; 
 struct bt_ctf_stream* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ctf_stream*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct ctf_stream* FUNC8 (int) ; 

__attribute__((used)) static struct ctf_stream *FUNC9(struct ctf_writer *cw, int cpu)
{
	struct ctf_stream *cs;
	struct bt_ctf_field *pkt_ctx   = NULL;
	struct bt_ctf_field *cpu_field = NULL;
	struct bt_ctf_stream *stream   = NULL;
	int ret;

	cs = FUNC8(sizeof(*cs));
	if (!cs) {
		FUNC7("Failed to allocate ctf stream\n");
		return NULL;
	}

	stream = FUNC5(cw->writer, cw->stream_class);
	if (!stream) {
		FUNC7("Failed to create CTF stream\n");
		goto out;
	}

	pkt_ctx = FUNC3(stream);
	if (!pkt_ctx) {
		FUNC7("Failed to obtain packet context\n");
		goto out;
	}

	cpu_field = FUNC1(pkt_ctx, "cpu_id");
	FUNC0(pkt_ctx);
	if (!cpu_field) {
		FUNC7("Failed to obtain cpu field\n");
		goto out;
	}

	ret = FUNC2(cpu_field, (u32) cpu);
	if (ret) {
		FUNC7("Failed to update CPU number\n");
		goto out;
	}

	FUNC0(cpu_field);

	cs->cpu    = cpu;
	cs->stream = stream;
	return cs;

out:
	if (cpu_field)
		FUNC0(cpu_field);
	if (stream)
		FUNC4(stream);

	FUNC6(cs);
	return NULL;
}