#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int unw_word_t ;
typedef  int /*<<< orphan*/  unw_proc_info_t ;
struct TYPE_11__ {int segbase; int table_data; int table_len; } ;
struct TYPE_12__ {TYPE_1__ rti; } ;
struct TYPE_13__ {int start_ip; TYPE_2__ u; int /*<<< orphan*/  end_ip; int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ unw_dyn_info_t ;
typedef  int /*<<< orphan*/  unw_addr_space_t ;
typedef  int u64 ;
struct unwind_info {int /*<<< orphan*/  machine; } ;
struct table_entry {int dummy; } ;
struct map {int start; int pgoff; int /*<<< orphan*/  end; TYPE_4__* dso; } ;
typedef  int /*<<< orphan*/  di ;
struct TYPE_14__ {char* name; scalar_t__ symsrc_filename; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UNW_INFO_FORMAT_REMOTE_TABLE ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int,int,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,TYPE_3__*,int /*<<< orphan*/ *,int,void*) ; 
 int FUNC4 (int,char*) ; 
 struct map* FUNC5 (int,struct unwind_info*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int*,int*,int*) ; 

__attribute__((used)) static int
FUNC10(unw_addr_space_t as, unw_word_t ip, unw_proc_info_t *pi,
	       int need_unwind_info, void *arg)
{
	struct unwind_info *ui = arg;
	struct map *map;
	unw_dyn_info_t di;
	u64 table_data, segbase, fde_count;
	int ret = -EINVAL;

	map = FUNC5(ip, ui);
	if (!map || !map->dso)
		return -EINVAL;

	FUNC7("unwind: find_proc_info dso %s\n", map->dso->name);

	/* Check the .eh_frame section for unwinding info */
	if (!FUNC9(map->dso, ui->machine,
				       &table_data, &segbase, &fde_count)) {
		FUNC6(&di, 0, sizeof(di));
		di.format   = UNW_INFO_FORMAT_REMOTE_TABLE;
		di.start_ip = map->start;
		di.end_ip   = map->end;
		di.u.rti.segbase    = map->start + segbase - map->pgoff;
		di.u.rti.table_data = map->start + table_data - map->pgoff;
		di.u.rti.table_len  = fde_count * sizeof(struct table_entry)
				      / sizeof(unw_word_t);
		ret = FUNC3(as, ip, &di, pi,
						need_unwind_info, arg);
	}

#ifndef NO_LIBUNWIND_DEBUG_FRAME
	/* Check the .debug_frame section for unwinding info */
	if (ret < 0 &&
	    !FUNC8(map->dso, ui->machine, &segbase)) {
		int fd = FUNC0(map->dso, ui->machine);
		int is_exec = FUNC4(fd, map->dso->name);
		unw_word_t base = is_exec ? 0 : map->start;
		const char *symfile;

		if (fd >= 0)
			FUNC1(map->dso);

		symfile = map->dso->symsrc_filename ?: map->dso->name;

		FUNC6(&di, 0, sizeof(di));
		if (FUNC2(0, &di, ip, base, symfile,
					   map->start, map->end))
			return FUNC3(as, ip, &di, pi,
							 need_unwind_info, arg);
	}
#endif

	return ret;
}