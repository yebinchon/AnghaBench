#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct evsel_priv {struct bt_ctf_event_class* event_class; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {struct evsel_priv* priv; TYPE_2__ core; } ;
struct ctf_writer {int /*<<< orphan*/  stream_class; } ;
struct bt_ctf_event_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_TYPE_TRACEPOINT ; 
 int FUNC0 (struct ctf_writer*,struct bt_ctf_event_class*) ; 
 int FUNC1 (struct ctf_writer*,struct evsel*,struct bt_ctf_event_class*) ; 
 int FUNC2 (struct ctf_writer*,struct evsel*,struct bt_ctf_event_class*) ; 
 struct bt_ctf_event_class* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct bt_ctf_event_class*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct bt_ctf_event_class*) ; 
 struct evsel_priv* FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct evsel*) ; 
 char* FUNC8 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

__attribute__((used)) static int FUNC11(struct ctf_writer *cw, struct evsel *evsel)
{
	struct bt_ctf_event_class *event_class;
	struct evsel_priv *priv;
	const char *name = FUNC8(evsel);
	int ret;

	FUNC9("Adding event '%s' (type %d)\n", name, evsel->core.attr.type);

	event_class = FUNC3(name);
	if (!event_class)
		return -1;

	ret = FUNC1(cw, evsel, event_class);
	if (ret)
		goto err;

	if (evsel->core.attr.type == PERF_TYPE_TRACEPOINT) {
		ret = FUNC2(cw, evsel, event_class);
		if (ret)
			goto err;
	}

	if (FUNC7(evsel)) {
		ret = FUNC0(cw, event_class);
		if (ret)
			goto err;
	}

	ret = FUNC5(cw->stream_class, event_class);
	if (ret) {
		FUNC9("Failed to add event class into stream.\n");
		goto err;
	}

	priv = FUNC6(sizeof(*priv));
	if (!priv)
		goto err;

	priv->event_class = event_class;
	evsel->priv       = priv;
	return 0;

err:
	FUNC4(event_class);
	FUNC10("Failed to add event '%s'.\n", name);
	return -1;
}