#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct map_symbol {TYPE_3__* sym; TYPE_2__* map; } ;
struct evsel {int dummy; } ;
struct annotation_options {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {TYPE_1__* dso; } ;
struct TYPE_4__ {char* long_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct evsel*,char*,int) ; 
 scalar_t__ FUNC6 (struct evsel*) ; 
 char* FUNC7 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,struct annotation_options*) ; 

int FUNC9(struct map_symbol *ms, struct evsel *evsel,
				struct annotation_options *opts)
{
	const char *ev_name = FUNC7(evsel);
	char buf[1024];
	char *filename;
	int err = -1;
	FILE *fp;

	if (FUNC0(&filename, "%s.annotation", ms->sym->name) < 0)
		return -1;

	fp = FUNC2(filename, "w");
	if (fp == NULL)
		goto out_free_filename;

	if (FUNC6(evsel)) {
		FUNC5(evsel, buf, sizeof(buf));
		ev_name = buf;
	}

	FUNC3(fp, "%s() %s\nEvent: %s\n\n",
		ms->sym->name, ms->map->dso->long_name, ev_name);
	FUNC8(ms->sym, fp, opts);

	FUNC1(fp);
	err = 0;
out_free_filename:
	FUNC4(filename);
	return err;
}