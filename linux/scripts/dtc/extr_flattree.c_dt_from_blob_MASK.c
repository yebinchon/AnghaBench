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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  totalsize_buf ;
typedef  int /*<<< orphan*/  totalsize ;
struct reserve_info {int dummy; } ;
struct node {int dummy; } ;
struct inbuf {int dummy; } ;
struct fdt_header {char off_dt_struct; char off_dt_strings; char off_mem_rsvmap; char version; char boot_cpuid_phys; char size_dt_strings; char size_dt_struct; void* totalsize; void* magic; } ;
struct dt_info {int dummy; } ;
typedef  int /*<<< orphan*/  magic_buf ;
typedef  int /*<<< orphan*/  magic ;
typedef  char fdt32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DTSF_V1 ; 
 scalar_t__ FDT_BEGIN_NODE ; 
 scalar_t__ FDT_END ; 
 scalar_t__ FDT_MAGIC ; 
 scalar_t__ FDT_V1_SIZE ; 
 int FTF_FULLPATH ; 
 int FTF_NAMEPROPS ; 
 int FTF_NOPS ; 
 int FTF_VARALIGN ; 
 struct dt_info* FUNC0 (int /*<<< orphan*/ ,struct reserve_info*,struct node*,scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct reserve_info* FUNC7 (struct inbuf*) ; 
 scalar_t__ FUNC8 (struct inbuf*) ; 
 int FUNC9 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct inbuf*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct node* FUNC14 (struct inbuf*,struct inbuf*,char*,int) ; 
 char* FUNC15 (scalar_t__) ; 

struct dt_info *FUNC16(const char *fname)
{
	FILE *f;
	fdt32_t magic_buf, totalsize_buf;
	uint32_t magic, totalsize, version, size_dt, boot_cpuid_phys;
	uint32_t off_dt, off_str, off_mem_rsvmap;
	int rc;
	char *blob;
	struct fdt_header *fdt;
	char *p;
	struct inbuf dtbuf, strbuf;
	struct inbuf memresvbuf;
	int sizeleft;
	struct reserve_info *reservelist;
	struct node *tree;
	uint32_t val;
	int flags = 0;

	f = FUNC12(fname, NULL);

	rc = FUNC9(&magic_buf, sizeof(magic_buf), 1, f);
	if (FUNC6(f))
		FUNC2("Error reading DT blob magic number: %s\n",
		    FUNC13(errno));
	if (rc < 1) {
		if (FUNC5(f))
			FUNC2("EOF reading DT blob magic number\n");
		else
			FUNC2("Mysterious short read reading magic number\n");
	}

	magic = FUNC4(magic_buf);
	if (magic != FDT_MAGIC)
		FUNC2("Blob has incorrect magic number\n");

	rc = FUNC9(&totalsize_buf, sizeof(totalsize_buf), 1, f);
	if (FUNC6(f))
		FUNC2("Error reading DT blob size: %s\n", FUNC13(errno));
	if (rc < 1) {
		if (FUNC5(f))
			FUNC2("EOF reading DT blob size\n");
		else
			FUNC2("Mysterious short read reading blob size\n");
	}

	totalsize = FUNC4(totalsize_buf);
	if (totalsize < FDT_V1_SIZE)
		FUNC2("DT blob size (%d) is too small\n", totalsize);

	blob = FUNC15(totalsize);

	fdt = (struct fdt_header *)blob;
	fdt->magic = FUNC1(magic);
	fdt->totalsize = FUNC1(totalsize);

	sizeleft = totalsize - sizeof(magic) - sizeof(totalsize);
	p = blob + sizeof(magic)  + sizeof(totalsize);

	while (sizeleft) {
		if (FUNC5(f))
			FUNC2("EOF before reading %d bytes of DT blob\n",
			    totalsize);

		rc = FUNC9(p, 1, sizeleft, f);
		if (FUNC6(f))
			FUNC2("Error reading DT blob: %s\n",
			    FUNC13(errno));

		sizeleft -= rc;
		p += rc;
	}

	off_dt = FUNC4(fdt->off_dt_struct);
	off_str = FUNC4(fdt->off_dt_strings);
	off_mem_rsvmap = FUNC4(fdt->off_mem_rsvmap);
	version = FUNC4(fdt->version);
	boot_cpuid_phys = FUNC4(fdt->boot_cpuid_phys);

	if (off_mem_rsvmap >= totalsize)
		FUNC2("Mem Reserve structure offset exceeds total size\n");

	if (off_dt >= totalsize)
		FUNC2("DT structure offset exceeds total size\n");

	if (off_str > totalsize)
		FUNC2("String table offset exceeds total size\n");

	if (version >= 3) {
		uint32_t size_str = FUNC4(fdt->size_dt_strings);
		if ((off_str+size_str < off_str) || (off_str+size_str > totalsize))
			FUNC2("String table extends past total size\n");
		FUNC11(&strbuf, blob + off_str, blob + off_str + size_str);
	} else {
		FUNC11(&strbuf, blob + off_str, blob + totalsize);
	}

	if (version >= 17) {
		size_dt = FUNC4(fdt->size_dt_struct);
		if ((off_dt+size_dt < off_dt) || (off_dt+size_dt > totalsize))
			FUNC2("Structure block extends past total size\n");
	}

	if (version < 16) {
		flags |= FTF_FULLPATH | FTF_NAMEPROPS | FTF_VARALIGN;
	} else {
		flags |= FTF_NOPS;
	}

	FUNC11(&memresvbuf,
		   blob + off_mem_rsvmap, blob + totalsize);
	FUNC11(&dtbuf, blob + off_dt, blob + totalsize);

	reservelist = FUNC7(&memresvbuf);

	val = FUNC8(&dtbuf);

	if (val != FDT_BEGIN_NODE)
		FUNC2("Device tree blob doesn't begin with FDT_BEGIN_NODE (begins with 0x%08x)\n", val);

	tree = FUNC14(&dtbuf, &strbuf, "", flags);

	val = FUNC8(&dtbuf);
	if (val != FDT_END)
		FUNC2("Device tree blob doesn't end with FDT_END\n");

	FUNC10(blob);

	FUNC3(f);

	return FUNC0(DTSF_V1, reservelist, tree, boot_cpuid_phys);
}