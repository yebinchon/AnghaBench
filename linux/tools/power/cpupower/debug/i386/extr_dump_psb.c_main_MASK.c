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
 int LEN ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  info_opts ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* relevant ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int
FUNC11(int argc, char *argv[])
{
	int fd;
	int numpst=-1;
	int ret=0, cont=1;
	char *mem = NULL;
	char *p;

	do {
		ret = FUNC3(argc, argv, "hr:n:", info_opts, NULL);
		switch (ret){
		case '?':
		case 'h':
			FUNC8();
			cont = 0;
			break;
		case 'r':
			relevant = FUNC10(optarg, NULL, 16);
			break;
		case 'n':
			numpst = FUNC10(optarg, NULL, 10);
			break;
		case -1:
			cont = 0;
			break;
		}

	} while(cont);

	fd = FUNC7("/dev/mem", O_RDONLY);
	if (fd < 0) {
		FUNC9 ("Couldn't open /dev/mem. Are you root?\n");
		FUNC2(1);
	}

	mem = FUNC5(mem, 0x100000 - 0xc0000, PROT_READ, MAP_SHARED, fd, 0xc0000);
	FUNC0(fd);

	for (p = mem; p - mem < LEN; p+=16) {
		if (FUNC4(p, "AMDK7PNOW!", 10) == 0) {
			FUNC1(p, numpst);
			break;
		}
	}

	FUNC6(mem, LEN);
	return 0;
}