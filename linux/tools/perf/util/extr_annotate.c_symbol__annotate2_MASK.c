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
struct symbol {int annotate2; } ;
struct map {int dummy; } ;
struct TYPE_2__ {int nr_members; } ;
struct evsel {TYPE_1__ core; } ;
struct arch {int dummy; } ;
struct annotation_options {int dummy; } ;
struct annotation_line {int dummy; } ;
struct annotation {int nr_events; int /*<<< orphan*/ * offsets; struct annotation_options* options; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct annotation*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct annotation*,struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct annotation*,struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct annotation*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct annotation*) ; 
 scalar_t__ FUNC5 (struct evsel*) ; 
 int FUNC6 (struct symbol*,struct map*,struct evsel*,int /*<<< orphan*/ ,struct annotation_options*,struct arch**) ; 
 struct annotation* FUNC7 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC8 (struct symbol*,struct evsel*) ; 
 size_t FUNC9 (struct symbol*) ; 
 int /*<<< orphan*/ * FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 

int FUNC12(struct symbol *sym, struct map *map, struct evsel *evsel,
		      struct annotation_options *options, struct arch **parch)
{
	struct annotation *notes = FUNC7(sym);
	size_t size = FUNC9(sym);
	int nr_pcnt = 1, err;

	notes->offsets = FUNC10(size * sizeof(struct annotation_line *));
	if (notes->offsets == NULL)
		return ENOMEM;

	if (FUNC5(evsel))
		nr_pcnt = evsel->core.nr_members;

	err = FUNC6(sym, map, evsel, 0, options, parch);
	if (err)
		goto out_free_offsets;

	notes->options = options;

	FUNC8(sym, evsel);

	FUNC3(notes, size);
	FUNC2(notes, sym);
	FUNC0(notes, size);
	FUNC1(notes, sym);
	notes->nr_events = nr_pcnt;

	FUNC4(notes);
	sym->annotate2 = true;

	return 0;

out_free_offsets:
	FUNC11(&notes->offsets);
	return err;
}