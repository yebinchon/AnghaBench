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
typedef  int u32 ;
typedef  int /*<<< orphan*/  testir2 ;
typedef  int /*<<< orphan*/  testir1 ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
struct input_event {scalar_t__ type; scalar_t__ code; int value; } ;
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_LIRC_MODE2 ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_LIRC_MODE2 ; 
 scalar_t__ ENOENT ; 
 scalar_t__ EV_MSC ; 
 scalar_t__ EV_REL ; 
 scalar_t__ MSC_SCAN ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  POLLIN ; 
 scalar_t__ REL_Y ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 scalar_t__ errno ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int,struct input_event*,int) ; 
 int FUNC8 (int,int*,int) ; 

int FUNC9(int argc, char **argv)
{
	struct bpf_object *obj;
	int ret, lircfd, progfd, inputfd;
	int testir1 = 0x1dead;
	int testir2 = 0x20101;
	u32 prog_ids[10], prog_flags[10], prog_cnt;

	if (argc != 3) {
		FUNC6("Usage: %s /dev/lircN /dev/input/eventM\n", argv[0]);
		return 2;
	}

	ret = FUNC2("test_lirc_mode2_kern.o",
			    BPF_PROG_TYPE_LIRC_MODE2, &obj, &progfd);
	if (ret) {
		FUNC6("Failed to load bpf program\n");
		return 1;
	}

	lircfd = FUNC4(argv[1], O_RDWR | O_NONBLOCK);
	if (lircfd == -1) {
		FUNC6("failed to open lirc device %s: %m\n", argv[1]);
		return 1;
	}

	/* Let's try detach it before it was ever attached */
	ret = FUNC1(progfd, lircfd, BPF_LIRC_MODE2);
	if (ret != -1 || errno != ENOENT) {
		FUNC6("bpf_prog_detach2 not attached should fail: %m\n");
		return 1;
	}

	inputfd = FUNC4(argv[2], O_RDONLY | O_NONBLOCK);
	if (inputfd == -1) {
		FUNC6("failed to open input device %s: %m\n", argv[1]);
		return 1;
	}

	prog_cnt = 10;
	ret = FUNC3(lircfd, BPF_LIRC_MODE2, 0, prog_flags, prog_ids,
			     &prog_cnt);
	if (ret) {
		FUNC6("Failed to query bpf programs on lirc device: %m\n");
		return 1;
	}

	if (prog_cnt != 0) {
		FUNC6("Expected nothing to be attached\n");
		return 1;
	}

	ret = FUNC0(progfd, lircfd, BPF_LIRC_MODE2, 0);
	if (ret) {
		FUNC6("Failed to attach bpf to lirc device: %m\n");
		return 1;
	}

	/* Write raw IR */
	ret = FUNC8(lircfd, &testir1, sizeof(testir1));
	if (ret != sizeof(testir1)) {
		FUNC6("Failed to send test IR message: %m\n");
		return 1;
	}

	struct pollfd pfd = { .fd = inputfd, .events = POLLIN };
	struct input_event event;

	for (;;) {
		FUNC5(&pfd, 1, 100);

		/* Read decoded IR */
		ret = FUNC7(inputfd, &event, sizeof(event));
		if (ret != sizeof(event)) {
			FUNC6("Failed to read decoded IR: %m\n");
			return 1;
		}

		if (event.type == EV_MSC && event.code == MSC_SCAN &&
		    event.value == 0xdead) {
			break;
		}
	}

	/* Write raw IR */
	ret = FUNC8(lircfd, &testir2, sizeof(testir2));
	if (ret != sizeof(testir2)) {
		FUNC6("Failed to send test IR message: %m\n");
		return 1;
	}

	for (;;) {
		FUNC5(&pfd, 1, 100);

		/* Read decoded IR */
		ret = FUNC7(inputfd, &event, sizeof(event));
		if (ret != sizeof(event)) {
			FUNC6("Failed to read decoded IR: %m\n");
			return 1;
		}

		if (event.type == EV_REL && event.code == REL_Y &&
		    event.value == 1 ) {
			break;
		}
	}

	prog_cnt = 10;
	ret = FUNC3(lircfd, BPF_LIRC_MODE2, 0, prog_flags, prog_ids,
			     &prog_cnt);
	if (ret) {
		FUNC6("Failed to query bpf programs on lirc device: %m\n");
		return 1;
	}

	if (prog_cnt != 1) {
		FUNC6("Expected one program to be attached\n");
		return 1;
	}

	/* Let's try detaching it now it is actually attached */
	ret = FUNC1(progfd, lircfd, BPF_LIRC_MODE2);
	if (ret) {
		FUNC6("bpf_prog_detach2: returned %m\n");
		return 1;
	}

	return 0;
}