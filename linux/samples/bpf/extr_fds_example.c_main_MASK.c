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
typedef  int uint32_t ;

/* Variables and functions */
 int BPF_F_GET ; 
 int BPF_F_KEY ; 
 int BPF_F_PIN ; 
 int BPF_F_PIN_GET ; 
 int BPF_F_VAL ; 
#define  BPF_M_MAP 129 
#define  BPF_M_PROG 128 
 int BPF_M_UNSPEC ; 
 int FUNC0 (char const*,int,int,int) ; 
 int FUNC1 (char const*,int,char const*) ; 
 int FUNC2 (int,char**,char*) ; 
 char* optarg ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(int argc, char **argv)
{
	const char *file = NULL, *object = NULL;
	uint32_t key = 0, value = 0, flags = 0;
	int opt, mode = BPF_M_UNSPEC;

	while ((opt = FUNC2(argc, argv, "F:PGmk:v:po:")) != -1) {
		switch (opt) {
		/* General args */
		case 'F':
			file = optarg;
			break;
		case 'P':
			flags |= BPF_F_PIN;
			break;
		case 'G':
			flags |= BPF_F_GET;
			break;
		/* Map-related args */
		case 'm':
			mode = BPF_M_MAP;
			break;
		case 'k':
			key = FUNC3(optarg, NULL, 0);
			flags |= BPF_F_KEY;
			break;
		case 'v':
			value = FUNC3(optarg, NULL, 0);
			flags |= BPF_F_VAL;
			break;
		/* Prog-related args */
		case 'p':
			mode = BPF_M_PROG;
			break;
		case 'o':
			object = optarg;
			break;
		default:
			goto out;
		}
	}

	if (!(flags & BPF_F_PIN_GET) || !file)
		goto out;

	switch (mode) {
	case BPF_M_MAP:
		return FUNC0(file, flags, key, value);
	case BPF_M_PROG:
		return FUNC1(file, flags, object);
	}
out:
	FUNC4();
	return -1;
}