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
struct TYPE_2__ {int /*<<< orphan*/  u32; } ;
struct ctf_writer {TYPE_1__ data; struct bt_ctf_stream_class* stream_class; struct bt_ctf_clock* clock; struct bt_ctf_writer* writer; } ;
struct bt_ctf_writer {int dummy; } ;
struct bt_ctf_stream_class {int dummy; } ;
struct bt_ctf_field_type {int dummy; } ;
struct bt_ctf_clock {int dummy; } ;

/* Variables and functions */
 struct bt_ctf_clock* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bt_ctf_field_type*) ; 
 int FUNC2 (struct bt_ctf_field_type*,int /*<<< orphan*/ ,char*) ; 
 struct bt_ctf_stream_class* FUNC3 (char*) ; 
 struct bt_ctf_field_type* FUNC4 (struct bt_ctf_stream_class*) ; 
 scalar_t__ FUNC5 (struct bt_ctf_stream_class*,struct bt_ctf_clock*) ; 
 scalar_t__ FUNC6 (struct bt_ctf_writer*,struct bt_ctf_clock*) ; 
 struct bt_ctf_writer* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ctf_writer*) ; 
 scalar_t__ FUNC9 (struct ctf_writer*) ; 
 scalar_t__ FUNC10 (struct ctf_writer*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(struct ctf_writer *cw, const char *path)
{
	struct bt_ctf_writer		*writer;
	struct bt_ctf_stream_class	*stream_class;
	struct bt_ctf_clock		*clock;
	struct bt_ctf_field_type	*pkt_ctx_type;
	int				ret;

	/* CTF writer */
	writer = FUNC7(path);
	if (!writer)
		goto err;

	cw->writer = writer;

	/* CTF clock */
	clock = FUNC0("perf_clock");
	if (!clock) {
		FUNC11("Failed to create CTF clock.\n");
		goto err_cleanup;
	}

	cw->clock = clock;

	if (FUNC10(cw)) {
		FUNC11("Failed to setup CTF clock.\n");
		goto err_cleanup;
	}

	/* CTF stream class */
	stream_class = FUNC3("perf_stream");
	if (!stream_class) {
		FUNC11("Failed to create CTF stream class.\n");
		goto err_cleanup;
	}

	cw->stream_class = stream_class;

	/* CTF clock stream setup */
	if (FUNC5(stream_class, clock)) {
		FUNC11("Failed to assign CTF clock to stream class.\n");
		goto err_cleanup;
	}

	if (FUNC9(cw))
		goto err_cleanup;

	/* Add cpu_id for packet context */
	pkt_ctx_type = FUNC4(stream_class);
	if (!pkt_ctx_type)
		goto err_cleanup;

	ret = FUNC2(pkt_ctx_type, cw->data.u32, "cpu_id");
	FUNC1(pkt_ctx_type);
	if (ret)
		goto err_cleanup;

	/* CTF clock writer setup */
	if (FUNC6(writer, clock)) {
		FUNC11("Failed to assign CTF clock to writer.\n");
		goto err_cleanup;
	}

	return 0;

err_cleanup:
	FUNC8(cw);
err:
	FUNC12("Failed to setup CTF writer.\n");
	return -1;
}