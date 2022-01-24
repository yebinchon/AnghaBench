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

/* Variables and functions */
 scalar_t__ GPIOEVENT_REQUEST_BOTH_EDGES ; 
 scalar_t__ GPIOEVENT_REQUEST_FALLING_EDGE ; 
 scalar_t__ GPIOEVENT_REQUEST_RISING_EDGE ; 
 scalar_t__ GPIOHANDLE_REQUEST_INPUT ; 
 scalar_t__ GPIOHANDLE_REQUEST_OPEN_DRAIN ; 
 scalar_t__ GPIOHANDLE_REQUEST_OPEN_SOURCE ; 
 int FUNC0 (int,char**,char*) ; 
 int FUNC1 (char const*,unsigned int,scalar_t__,scalar_t__,unsigned int) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned int FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC5(int argc, char **argv)
{
	const char *device_name = NULL;
	unsigned int line = -1;
	unsigned int loops = 0;
	uint32_t handleflags = GPIOHANDLE_REQUEST_INPUT;
	uint32_t eventflags = 0;
	int c;

	while ((c = FUNC0(argc, argv, "c:n:o:dsrf?")) != -1) {
		switch (c) {
		case 'c':
			loops = FUNC4(optarg, NULL, 10);
			break;
		case 'n':
			device_name = optarg;
			break;
		case 'o':
			line = FUNC4(optarg, NULL, 10);
			break;
		case 'd':
			handleflags |= GPIOHANDLE_REQUEST_OPEN_DRAIN;
			break;
		case 's':
			handleflags |= GPIOHANDLE_REQUEST_OPEN_SOURCE;
			break;
		case 'r':
			eventflags |= GPIOEVENT_REQUEST_RISING_EDGE;
			break;
		case 'f':
			eventflags |= GPIOEVENT_REQUEST_FALLING_EDGE;
			break;
		case '?':
			FUNC2();
			return -1;
		}
	}

	if (!device_name || line == -1) {
		FUNC2();
		return -1;
	}
	if (!eventflags) {
		FUNC3("No flags specified, listening on both rising and "
		       "falling edges\n");
		eventflags = GPIOEVENT_REQUEST_BOTH_EDGES;
	}
	return FUNC1(device_name, line, handleflags,
			      eventflags, loops);
}