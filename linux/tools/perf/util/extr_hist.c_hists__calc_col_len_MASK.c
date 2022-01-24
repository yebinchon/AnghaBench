#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_19__ ;
typedef  struct TYPE_28__   TYPE_18__ ;
typedef  struct TYPE_27__   TYPE_17__ ;
typedef  struct TYPE_26__   TYPE_16__ ;
typedef  struct TYPE_25__   TYPE_15__ ;
typedef  struct TYPE_24__   TYPE_14__ ;
typedef  struct TYPE_23__   TYPE_13__ ;
typedef  struct TYPE_22__   TYPE_12__ ;
typedef  struct TYPE_21__   TYPE_11__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
typedef  int u16 ;
struct hists {int dummy; } ;
struct TYPE_32__ {TYPE_2__* map; TYPE_1__* sym; } ;
struct hist_entry {scalar_t__ trace_output; scalar_t__ transaction; scalar_t__ srcfile; scalar_t__ srcline; TYPE_17__* mem_info; TYPE_11__* branch_info; TYPE_4__* parent; TYPE_3__ ms; int /*<<< orphan*/  thread; } ;
struct TYPE_38__ {int /*<<< orphan*/  dso; } ;
struct TYPE_37__ {scalar_t__ namelen; } ;
struct TYPE_36__ {TYPE_6__* map; TYPE_5__* sym; } ;
struct TYPE_35__ {int /*<<< orphan*/  dso; } ;
struct TYPE_34__ {scalar_t__ namelen; } ;
struct TYPE_33__ {int namelen; } ;
struct TYPE_31__ {int /*<<< orphan*/  dso; } ;
struct TYPE_30__ {int namelen; } ;
struct TYPE_29__ {scalar_t__ se_header; } ;
struct TYPE_28__ {scalar_t__ nanosecs; } ;
struct TYPE_25__ {TYPE_16__* map; TYPE_12__* sym; } ;
struct TYPE_24__ {TYPE_13__* sym; } ;
struct TYPE_27__ {TYPE_15__ daddr; TYPE_14__ iaddr; } ;
struct TYPE_26__ {int /*<<< orphan*/  dso; } ;
struct TYPE_23__ {scalar_t__ namelen; } ;
struct TYPE_22__ {scalar_t__ namelen; } ;
struct TYPE_20__ {TYPE_9__* map; TYPE_8__* sym; } ;
struct TYPE_21__ {scalar_t__ srcline_to; scalar_t__ srcline_from; TYPE_10__ to; TYPE_7__ from; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  HISTC_CGROUP_ID ; 
 int /*<<< orphan*/  HISTC_COMM ; 
 int /*<<< orphan*/  HISTC_CPU ; 
 int /*<<< orphan*/  HISTC_DSO ; 
 int /*<<< orphan*/  HISTC_DSO_FROM ; 
 int /*<<< orphan*/  HISTC_DSO_TO ; 
 int /*<<< orphan*/  HISTC_GLOBAL_WEIGHT ; 
 int /*<<< orphan*/  HISTC_LOCAL_WEIGHT ; 
 int /*<<< orphan*/  HISTC_MEM_DADDR_DSO ; 
 int /*<<< orphan*/  HISTC_MEM_DADDR_SYMBOL ; 
 int /*<<< orphan*/  HISTC_MEM_DCACHELINE ; 
 int /*<<< orphan*/  HISTC_MEM_IADDR_SYMBOL ; 
 int /*<<< orphan*/  HISTC_MEM_LOCKED ; 
 int /*<<< orphan*/  HISTC_MEM_LVL ; 
 int /*<<< orphan*/  HISTC_MEM_PHYS_DADDR ; 
 int /*<<< orphan*/  HISTC_MEM_SNOOP ; 
 int /*<<< orphan*/  HISTC_MEM_TLB ; 
 int /*<<< orphan*/  HISTC_PARENT ; 
 int /*<<< orphan*/  HISTC_SOCKET ; 
 int /*<<< orphan*/  HISTC_SRCFILE ; 
 int /*<<< orphan*/  HISTC_SRCLINE ; 
 int /*<<< orphan*/  HISTC_SRCLINE_FROM ; 
 int /*<<< orphan*/  HISTC_SRCLINE_TO ; 
 int /*<<< orphan*/  HISTC_SYMBOL ; 
 int /*<<< orphan*/  HISTC_SYMBOL_FROM ; 
 int /*<<< orphan*/  HISTC_SYMBOL_TO ; 
 int /*<<< orphan*/  HISTC_THREAD ; 
 int /*<<< orphan*/  HISTC_TIME ; 
 int /*<<< orphan*/  HISTC_TRACE ; 
 int /*<<< orphan*/  HISTC_TRANSACTION ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (struct hists*,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC4 (struct hists*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hists*,int /*<<< orphan*/ ) ; 
 TYPE_19__ sort_srcline ; 
 int FUNC6 (scalar_t__) ; 
 TYPE_18__ symbol_conf ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

void FUNC8(struct hists *hists, struct hist_entry *h)
{
	const unsigned int unresolved_col_width = BITS_PER_LONG / 4;
	int symlen;
	u16 len;

	/*
	 * +4 accounts for '[x] ' priv level info
	 * +2 accounts for 0x prefix on raw addresses
	 * +3 accounts for ' y ' symtab origin info
	 */
	if (h->ms.sym) {
		symlen = h->ms.sym->namelen + 4;
		if (verbose > 0)
			symlen += BITS_PER_LONG / 4 + 2 + 3;
		FUNC3(hists, HISTC_SYMBOL, symlen);
	} else {
		symlen = unresolved_col_width + 4 + 2;
		FUNC3(hists, HISTC_SYMBOL, symlen);
		FUNC5(hists, HISTC_DSO);
	}

	len = FUNC7(h->thread);
	if (FUNC3(hists, HISTC_COMM, len))
		FUNC4(hists, HISTC_THREAD, len + 8);

	if (h->ms.map) {
		len = FUNC1(h->ms.map->dso);
		FUNC3(hists, HISTC_DSO, len);
	}

	if (h->parent)
		FUNC3(hists, HISTC_PARENT, h->parent->namelen);

	if (h->branch_info) {
		if (h->branch_info->from.sym) {
			symlen = (int)h->branch_info->from.sym->namelen + 4;
			if (verbose > 0)
				symlen += BITS_PER_LONG / 4 + 2 + 3;
			FUNC3(hists, HISTC_SYMBOL_FROM, symlen);

			symlen = FUNC1(h->branch_info->from.map->dso);
			FUNC3(hists, HISTC_DSO_FROM, symlen);
		} else {
			symlen = unresolved_col_width + 4 + 2;
			FUNC3(hists, HISTC_SYMBOL_FROM, symlen);
			FUNC5(hists, HISTC_DSO_FROM);
		}

		if (h->branch_info->to.sym) {
			symlen = (int)h->branch_info->to.sym->namelen + 4;
			if (verbose > 0)
				symlen += BITS_PER_LONG / 4 + 2 + 3;
			FUNC3(hists, HISTC_SYMBOL_TO, symlen);

			symlen = FUNC1(h->branch_info->to.map->dso);
			FUNC3(hists, HISTC_DSO_TO, symlen);
		} else {
			symlen = unresolved_col_width + 4 + 2;
			FUNC3(hists, HISTC_SYMBOL_TO, symlen);
			FUNC5(hists, HISTC_DSO_TO);
		}

		if (h->branch_info->srcline_from)
			FUNC3(hists, HISTC_SRCLINE_FROM,
					FUNC6(h->branch_info->srcline_from));
		if (h->branch_info->srcline_to)
			FUNC3(hists, HISTC_SRCLINE_TO,
					FUNC6(h->branch_info->srcline_to));
	}

	if (h->mem_info) {
		if (h->mem_info->daddr.sym) {
			symlen = (int)h->mem_info->daddr.sym->namelen + 4
			       + unresolved_col_width + 2;
			FUNC3(hists, HISTC_MEM_DADDR_SYMBOL,
					   symlen);
			FUNC3(hists, HISTC_MEM_DCACHELINE,
					   symlen + 1);
		} else {
			symlen = unresolved_col_width + 4 + 2;
			FUNC3(hists, HISTC_MEM_DADDR_SYMBOL,
					   symlen);
			FUNC3(hists, HISTC_MEM_DCACHELINE,
					   symlen);
		}

		if (h->mem_info->iaddr.sym) {
			symlen = (int)h->mem_info->iaddr.sym->namelen + 4
			       + unresolved_col_width + 2;
			FUNC3(hists, HISTC_MEM_IADDR_SYMBOL,
					   symlen);
		} else {
			symlen = unresolved_col_width + 4 + 2;
			FUNC3(hists, HISTC_MEM_IADDR_SYMBOL,
					   symlen);
		}

		if (h->mem_info->daddr.map) {
			symlen = FUNC1(h->mem_info->daddr.map->dso);
			FUNC3(hists, HISTC_MEM_DADDR_DSO,
					   symlen);
		} else {
			symlen = unresolved_col_width + 4 + 2;
			FUNC5(hists, HISTC_MEM_DADDR_DSO);
		}

		FUNC3(hists, HISTC_MEM_PHYS_DADDR,
				   unresolved_col_width + 4 + 2);

	} else {
		symlen = unresolved_col_width + 4 + 2;
		FUNC3(hists, HISTC_MEM_DADDR_SYMBOL, symlen);
		FUNC3(hists, HISTC_MEM_IADDR_SYMBOL, symlen);
		FUNC5(hists, HISTC_MEM_DADDR_DSO);
	}

	FUNC3(hists, HISTC_CGROUP_ID, 20);
	FUNC3(hists, HISTC_CPU, 3);
	FUNC3(hists, HISTC_SOCKET, 6);
	FUNC3(hists, HISTC_MEM_LOCKED, 6);
	FUNC3(hists, HISTC_MEM_TLB, 22);
	FUNC3(hists, HISTC_MEM_SNOOP, 12);
	FUNC3(hists, HISTC_MEM_LVL, 21 + 3);
	FUNC3(hists, HISTC_LOCAL_WEIGHT, 12);
	FUNC3(hists, HISTC_GLOBAL_WEIGHT, 12);
	if (symbol_conf.nanosecs)
		FUNC3(hists, HISTC_TIME, 16);
	else
		FUNC3(hists, HISTC_TIME, 12);

	if (h->srcline) {
		len = FUNC0(FUNC6(h->srcline), FUNC6(sort_srcline.se_header));
		FUNC3(hists, HISTC_SRCLINE, len);
	}

	if (h->srcfile)
		FUNC3(hists, HISTC_SRCFILE, FUNC6(h->srcfile));

	if (h->transaction)
		FUNC3(hists, HISTC_TRANSACTION,
				   FUNC2());

	if (h->trace_output)
		FUNC3(hists, HISTC_TRACE, FUNC6(h->trace_output));
}