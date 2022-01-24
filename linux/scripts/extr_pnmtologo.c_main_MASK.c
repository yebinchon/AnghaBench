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

/* Variables and functions */
#define  LINUX_LOGO_CLUT224 131 
#define  LINUX_LOGO_GRAY256 130 
#define  LINUX_LOGO_MONO 129 
#define  LINUX_LOGO_VGA16 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* filename ; 
 int FUNC1 (int,char**,char*) ; 
 int logo_type ; 
 void* logoname ; 
 void* optarg ; 
 scalar_t__ opterr ; 
 int optind ; 
 void* outputname ; 
 char* programname ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, char *argv[])
{
    int opt;

    programname = argv[0];

    opterr = 0;
    while (1) {
	opt = FUNC1(argc, argv, "hn:o:t:");
	if (opt == -1)
	    break;

	switch (opt) {
	    case 'h':
		FUNC4();
		break;

	    case 'n':
		logoname = optarg;
		break;

	    case 'o':
		outputname = optarg;
		break;

	    case 't':
		if (!FUNC3(optarg, "mono"))
		    logo_type = LINUX_LOGO_MONO;
		else if (!FUNC3(optarg, "vga16"))
		    logo_type = LINUX_LOGO_VGA16;
		else if (!FUNC3(optarg, "clut224"))
		    logo_type = LINUX_LOGO_CLUT224;
		else if (!FUNC3(optarg, "gray256"))
		    logo_type = LINUX_LOGO_GRAY256;
		else
		    FUNC4();
		break;

	    default:
		FUNC4();
		break;
	}
    }
    if (optind != argc-1)
	FUNC4();

    filename = argv[optind];

    FUNC2();
    switch (logo_type) {
	case LINUX_LOGO_MONO:
	    FUNC7();
	    break;

	case LINUX_LOGO_VGA16:
	    FUNC8();
	    break;

	case LINUX_LOGO_CLUT224:
	    FUNC5();
	    break;

	case LINUX_LOGO_GRAY256:
	    FUNC6();
	    break;
    }
    FUNC0(0);
}