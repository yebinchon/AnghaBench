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
struct symbol {int dummy; } ;
struct annotation {struct annotated_source* src; } ;
struct annotated_source {int /*<<< orphan*/ * histograms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct annotated_source*,int /*<<< orphan*/ ,int) ; 
 struct annotated_source* FUNC1 () ; 
 struct annotation* FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*) ; 

struct annotated_source *FUNC4(struct symbol *sym, int nr_hists)
{
	struct annotation *notes = FUNC2(sym);

	if (notes->src == NULL) {
		notes->src = FUNC1();
		if (notes->src == NULL)
			return NULL;
		goto alloc_histograms;
	}

	if (notes->src->histograms == NULL) {
alloc_histograms:
		FUNC0(notes->src, FUNC3(sym),
						   nr_hists);
	}

	return notes->src;
}