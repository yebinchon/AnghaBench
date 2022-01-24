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
typedef  int /*<<< orphan*/  te ;
struct s390_cpumsf {int /*<<< orphan*/  machine_type; } ;
struct hws_trailer_entry {unsigned short bsdes; unsigned short dsdes; } ;
struct hws_diag_entry {int dummy; } ;
struct hws_basic_entry {int dummy; } ;

/* Variables and functions */
 char* PERF_COLOR_BLUE ; 
 size_t S390_CPUMSF_PAGESZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct hws_trailer_entry*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int /*<<< orphan*/ ,unsigned short,unsigned short) ; 
 scalar_t__ FUNC3 (char const*,size_t,struct hws_basic_entry*) ; 
 scalar_t__ FUNC4 (char const*,size_t,struct hws_diag_entry*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,size_t) ; 
 scalar_t__ FUNC6 (char const*,size_t,struct hws_trailer_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,size_t,unsigned short*,unsigned short*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC8(struct s390_cpumsf *sf,
			     unsigned char *buf, size_t len)
{
	const char *color = PERF_COLOR_BLUE;
	struct hws_basic_entry *basic;
	struct hws_diag_entry *diag;
	unsigned short bsdes, dsdes;
	size_t pos = 0;

	FUNC0(stdout, color,
		      ". ... s390 AUX data: size %zu bytes\n",
		      len);

	if (!FUNC7(sf->machine_type, buf, len, &bsdes,
				  &dsdes)) {
		FUNC2("Invalid AUX trace data block size:%zu"
		       " (type:%d bsdes:%hd dsdes:%hd)\n",
		       len, sf->machine_type, bsdes, dsdes);
		return;
	}

	/* s390 kernel always returns 4KB blocks fully occupied,
	 * no partially filled SDBs.
	 */
	while (pos < len) {
		/* Handle Basic entry */
		basic = (struct hws_basic_entry *)(buf + pos);
		if (FUNC3(color, pos, basic))
			pos += bsdes;
		else
			return;

		/* Handle Diagnostic entry */
		diag = (struct hws_diag_entry *)(buf + pos);
		if (FUNC4(color, pos, diag))
			pos += dsdes;
		else
			return;

		/* Check for trailer entry */
		if (!FUNC5(bsdes + dsdes, pos)) {
			/* Show trailer entry */
			struct hws_trailer_entry te;

			pos = (pos + S390_CPUMSF_PAGESZ)
			       & ~(S390_CPUMSF_PAGESZ - 1);
			pos -= sizeof(te);
			FUNC1(&te, buf + pos, sizeof(te));
			/* Set descriptor sizes in case of old hardware
			 * where these values are not set.
			 */
			te.bsdes = bsdes;
			te.dsdes = dsdes;
			if (FUNC6(color, pos, &te))
				pos += sizeof(te);
			else
				return;
		}
	}
}