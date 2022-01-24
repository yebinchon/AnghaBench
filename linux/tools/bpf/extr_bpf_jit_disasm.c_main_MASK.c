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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFFILEMODE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * FUNC5 (char*,unsigned int,unsigned int*) ; 
 char* FUNC6 (char*,unsigned int*) ; 
 unsigned int FUNC7 (int,char**,char*) ; 
 int FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC13(int argc, char **argv)
{
	unsigned int len, klen, opt, opcodes = 0;
	char *kbuff, *file = NULL;
	char *ofile = NULL;
	int ofd;
	ssize_t nr;
	uint8_t *pos;
	uint8_t *image = NULL;

	while ((opt = FUNC7(argc, argv, "of:O:")) != -1) {
		switch (opt) {
		case 'o':
			opcodes = 1;
			break;
		case 'O':
			ofile = optarg;
			break;
		case 'f':
			file = optarg;
			break;
		default:
			FUNC11();
			return -1;
		}
	}

	FUNC0();

	kbuff = FUNC6(file, &klen);
	if (!kbuff) {
		FUNC2(stderr, "Could not retrieve log buffer!\n");
		return -1;
	}

	image = FUNC5(kbuff, klen, &len);
	if (!image) {
		FUNC2(stderr, "No JIT image found!\n");
		goto done;
	}
	if (!ofile) {
		FUNC4(image, len, opcodes);
		goto done;
	}

	ofd = FUNC8(ofile, O_WRONLY | O_CREAT | O_TRUNC, DEFFILEMODE);
	if (ofd < 0) {
		FUNC2(stderr, "Could not open file %s for writing: ", ofile);
		FUNC9(NULL);
		goto done;
	}
	pos = image;
	do {
		nr = FUNC12(ofd, pos, len);
		if (nr < 0) {
			FUNC2(stderr, "Could not write data to %s: ", ofile);
			FUNC9(NULL);
			goto done;
		}
		len -= nr;
		pos += nr;
	} while (len);
	FUNC1(ofd);

done:
	FUNC10(kbuff);
	FUNC3(image);
	return 0;
}