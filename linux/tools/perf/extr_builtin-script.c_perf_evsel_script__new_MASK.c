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
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
struct perf_data {TYPE_1__ file; } ;
struct evsel_script {int /*<<< orphan*/  filename; int /*<<< orphan*/ * fp; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct evsel_script*) ; 
 int /*<<< orphan*/  FUNC3 (struct evsel*) ; 
 struct evsel_script* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct evsel_script *FUNC6(struct evsel *evsel,
							struct perf_data *data)
{
	struct evsel_script *es = FUNC4(sizeof(*es));

	if (es != NULL) {
		if (FUNC0(&es->filename, "%d.%d.dump", data->file.path, FUNC3(evsel)) < 0)
			goto out_free;
		es->fp = FUNC1(es->filename, "w");
		if (es->fp == NULL)
			goto out_free_filename;
	}

	return es;
out_free_filename:
	FUNC5(&es->filename);
out_free:
	FUNC2(es);
	return NULL;
}