#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct res_sample {int dummy; } ;
struct TYPE_23__ {int /*<<< orphan*/  map; } ;
struct TYPE_17__ {int /*<<< orphan*/  node; } ;
struct TYPE_19__ {int /*<<< orphan*/  map; } ;
struct TYPE_18__ {int /*<<< orphan*/  map; } ;
struct TYPE_24__ {TYPE_3__ to; TYPE_2__ from; } ;
struct hist_entry {size_t callchain_size; int leaf; TYPE_8__* stat_acc; TYPE_7__ ms; TYPE_6__* mem_info; TYPE_8__* branch_info; TYPE_8__* raw_data; TYPE_8__* srcline; void* hroot_out; void* hroot_in; int /*<<< orphan*/  thread; TYPE_1__ pairs; int /*<<< orphan*/  res_samples; int /*<<< orphan*/  raw_size; int /*<<< orphan*/  callchain; TYPE_8__ stat; } ;
struct TYPE_25__ {int /*<<< orphan*/  report_hierarchy; scalar_t__ res_sample; scalar_t__ use_callchain; scalar_t__ cumulate_callchain; } ;
struct TYPE_21__ {int /*<<< orphan*/  map; } ;
struct TYPE_20__ {int /*<<< orphan*/  map; } ;
struct TYPE_22__ {TYPE_5__ daddr; TYPE_4__ iaddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* RB_ROOT_CACHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 scalar_t__ FUNC3 (struct hist_entry*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,TYPE_8__*,int) ; 
 TYPE_8__* FUNC9 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 TYPE_8__* FUNC11 (TYPE_8__*) ; 
 TYPE_9__ symbol_conf ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__**) ; 

__attribute__((used)) static int FUNC14(struct hist_entry *he,
			    struct hist_entry *template,
			    bool sample_self,
			    size_t callchain_size)
{
	*he = *template;
	he->callchain_size = callchain_size;

	if (symbol_conf.cumulate_callchain) {
		he->stat_acc = FUNC4(sizeof(he->stat));
		if (he->stat_acc == NULL)
			return -ENOMEM;
		FUNC8(he->stat_acc, &he->stat, sizeof(he->stat));
		if (!sample_self)
			FUNC10(&he->stat, 0, sizeof(he->stat));
	}

	FUNC5(he->ms.map);

	if (he->branch_info) {
		/*
		 * This branch info is (a part of) allocated from
		 * sample__resolve_bstack() and will be freed after
		 * adding new entries.  So we need to save a copy.
		 */
		he->branch_info = FUNC4(sizeof(*he->branch_info));
		if (he->branch_info == NULL)
			goto err;

		FUNC8(he->branch_info, template->branch_info,
		       sizeof(*he->branch_info));

		FUNC5(he->branch_info->from.map);
		FUNC5(he->branch_info->to.map);
	}

	if (he->mem_info) {
		FUNC5(he->mem_info->iaddr.map);
		FUNC5(he->mem_info->daddr.map);
	}

	if (FUNC3(he) && symbol_conf.use_callchain)
		FUNC1(he->callchain);

	if (he->raw_data) {
		he->raw_data = FUNC9(he->raw_data, he->raw_size);
		if (he->raw_data == NULL)
			goto err_infos;
	}

	if (he->srcline) {
		he->srcline = FUNC11(he->srcline);
		if (he->srcline == NULL)
			goto err_rawdata;
	}

	if (symbol_conf.res_sample) {
		he->res_samples = FUNC2(sizeof(struct res_sample),
					symbol_conf.res_sample);
		if (!he->res_samples)
			goto err_srcline;
	}

	FUNC0(&he->pairs.node);
	FUNC12(he->thread);
	he->hroot_in  = RB_ROOT_CACHED;
	he->hroot_out = RB_ROOT_CACHED;

	if (!symbol_conf.report_hierarchy)
		he->leaf = true;

	return 0;

err_srcline:
	FUNC13(&he->srcline);

err_rawdata:
	FUNC13(&he->raw_data);

err_infos:
	if (he->branch_info) {
		FUNC6(he->branch_info->from.map);
		FUNC6(he->branch_info->to.map);
		FUNC13(&he->branch_info);
	}
	if (he->mem_info) {
		FUNC6(he->mem_info->iaddr.map);
		FUNC6(he->mem_info->daddr.map);
	}
err:
	FUNC7(he->ms.map);
	FUNC13(&he->stat_acc);
	return -ENOMEM;
}