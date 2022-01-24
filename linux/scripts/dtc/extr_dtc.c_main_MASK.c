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
struct dt_info {char const* outname; long long boot_cpuid_phys; int dtsflags; int /*<<< orphan*/  dt; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DEFAULT_FDT_VERSION ; 
 int DTSF_PLUGIN ; 
 int EOF ; 
 int /*<<< orphan*/  PHANDLE_BOTH ; 
 int /*<<< orphan*/  PHANDLE_EPAPR ; 
 int /*<<< orphan*/  PHANDLE_LEGACY ; 
 char const* alignsize ; 
 scalar_t__ annotate ; 
 int auto_label_aliases ; 
 void* depfile ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct dt_info* FUNC1 (char const*) ; 
 struct dt_info* FUNC2 (char const*) ; 
 struct dt_info* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dt_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct dt_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct dt_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct dt_info*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (void*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char,void*) ; 
 int generate_fixups ; 
 int /*<<< orphan*/  FUNC14 (struct dt_info*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct dt_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct dt_info*,char*) ; 
 int generate_symbols ; 
 char* FUNC17 (char const*,char*) ; 
 char* FUNC18 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 void* minsize ; 
 char const* optarg ; 
 int optind ; 
 void* padsize ; 
 int /*<<< orphan*/  FUNC20 (int,int,char const*) ; 
 int /*<<< orphan*/  phandle_format ; 
 int /*<<< orphan*/  FUNC21 (int,struct dt_info*) ; 
 scalar_t__ quiet ; 
 void* reservenum ; 
 int /*<<< orphan*/  FUNC22 (struct dt_info*) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC24 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 void* FUNC26 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long long FUNC27 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 

int FUNC31(int argc, char *argv[])
{
	struct dt_info *dti;
	const char *inform = NULL;
	const char *outform = NULL;
	const char *outname = "-";
	const char *depname = NULL;
	bool force = false, sort = false;
	const char *arg;
	int opt;
	FILE *outf = NULL;
	int outversion = DEFAULT_FDT_VERSION;
	long long cmdline_boot_cpuid = -1;

	quiet      = 0;
	reservenum = 0;
	minsize    = 0;
	padsize    = 0;
	alignsize  = 0;

	while ((opt = FUNC29()) != EOF) {
		switch (opt) {
		case 'I':
			inform = optarg;
			break;
		case 'O':
			outform = optarg;
			break;
		case 'o':
			outname = optarg;
			break;
		case 'V':
			outversion = FUNC26(optarg, NULL, 0);
			break;
		case 'd':
			depname = optarg;
			break;
		case 'R':
			reservenum = FUNC26(optarg, NULL, 0);
			break;
		case 'S':
			minsize = FUNC26(optarg, NULL, 0);
			break;
		case 'p':
			padsize = FUNC26(optarg, NULL, 0);
			break;
		case 'a':
			alignsize = FUNC26(optarg, NULL, 0);
			if (!FUNC19(alignsize))
				FUNC0("Invalid argument \"%d\" to -a option\n",
				    alignsize);
			break;
		case 'f':
			force = true;
			break;
		case 'q':
			quiet++;
			break;
		case 'b':
			cmdline_boot_cpuid = FUNC27(optarg, NULL, 0);
			break;
		case 'i':
			FUNC23(optarg);
			break;
		case 'v':
			FUNC30();
		case 'H':
			if (FUNC24(optarg, "legacy"))
				phandle_format = PHANDLE_LEGACY;
			else if (FUNC24(optarg, "epapr"))
				phandle_format = PHANDLE_EPAPR;
			else if (FUNC24(optarg, "both"))
				phandle_format = PHANDLE_BOTH;
			else
				FUNC0("Invalid argument \"%s\" to -H option\n",
				    optarg);
			break;

		case 's':
			sort = true;
			break;

		case 'W':
			FUNC20(true, false, optarg);
			break;

		case 'E':
			FUNC20(false, true, optarg);
			break;

		case '@':
			generate_symbols = 1;
			break;
		case 'A':
			auto_label_aliases = 1;
			break;
		case 'T':
			annotate++;
			break;

		case 'h':
			FUNC28(NULL);
		default:
			FUNC28("unknown option");
		}
	}

	if (argc > (optind+1))
		FUNC28("missing files");
	else if (argc < (optind+1))
		arg = "-";
	else
		arg = argv[optind];

	/* minsize and padsize are mutually exclusive */
	if (minsize && padsize)
		FUNC0("Can't set both -p and -S\n");

	if (depname) {
		depfile = FUNC11(depname, "w");
		if (!depfile)
			FUNC0("Couldn't open dependency file %s: %s\n", depname,
			    FUNC25(errno));
		FUNC12(depfile, "%s:", outname);
	}

	if (inform == NULL)
		inform = FUNC17(arg, "dts");
	if (outform == NULL) {
		outform = FUNC18(outname, NULL);
		if (outform == NULL) {
			if (FUNC24(inform, "dts"))
				outform = "dtb";
			else
				outform = "dts";
		}
	}
	if (annotate && (!FUNC24(inform, "dts") || !FUNC24(outform, "dts")))
		FUNC0("--annotate requires -I dts -O dts\n");
	if (FUNC24(inform, "dts"))
		dti = FUNC3(arg);
	else if (FUNC24(inform, "fs"))
		dti = FUNC2(arg);
	else if(FUNC24(inform, "dtb"))
		dti = FUNC1(arg);
	else
		FUNC0("Unknown input format \"%s\"\n", inform);

	dti->outname = outname;

	if (depfile) {
		FUNC13('\n', depfile);
		FUNC9(depfile);
	}

	if (cmdline_boot_cpuid != -1)
		dti->boot_cpuid_phys = cmdline_boot_cpuid;

	FUNC10(dti->dt, "");

	/* on a plugin, generate by default */
	if (dti->dtsflags & DTSF_PLUGIN) {
		generate_fixups = 1;
	}

	FUNC21(force, dti);

	if (auto_label_aliases)
		FUNC15(dti, "aliases", false);

	if (generate_symbols)
		FUNC15(dti, "__symbols__", true);

	if (generate_fixups) {
		FUNC14(dti, "__fixups__");
		FUNC16(dti, "__local_fixups__");
	}

	if (sort)
		FUNC22(dti);

	if (FUNC24(outname, "-")) {
		outf = stdout;
	} else {
		outf = FUNC11(outname, "wb");
		if (! outf)
			FUNC0("Couldn't open output file %s: %s\n",
			    outname, FUNC25(errno));
	}

	if (FUNC24(outform, "dts")) {
		FUNC6(outf, dti);
#ifndef NO_YAML
	} else if (FUNC24(outform, "yaml")) {
		if (!FUNC24(inform, "dts"))
			FUNC0("YAML output format requires dts input format\n");
		FUNC7(outf, dti);
#endif
	} else if (FUNC24(outform, "dtb")) {
		FUNC5(outf, dti, outversion);
	} else if (FUNC24(outform, "asm")) {
		FUNC4(outf, dti, outversion);
	} else if (FUNC24(outform, "null")) {
		/* do nothing */
	} else {
		FUNC0("Unknown output format \"%s\"\n", outform);
	}

	FUNC8(0);
}