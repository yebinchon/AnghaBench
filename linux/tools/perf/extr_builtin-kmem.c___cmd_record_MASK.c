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
 unsigned int FUNC0 (char const* const*) ; 
 int ENOMEM ; 
 char** FUNC1 (unsigned int,int) ; 
 int FUNC2 (unsigned int,char const**) ; 
 scalar_t__ kmem_page ; 
 scalar_t__ kmem_slab ; 
 char* FUNC3 (char const* const) ; 

__attribute__((used)) static int FUNC4(int argc, const char **argv)
{
	const char * const record_args[] = {
	"record", "-a", "-R", "-c", "1",
	};
	const char * const slab_events[] = {
	"-e", "kmem:kmalloc",
	"-e", "kmem:kmalloc_node",
	"-e", "kmem:kfree",
	"-e", "kmem:kmem_cache_alloc",
	"-e", "kmem:kmem_cache_alloc_node",
	"-e", "kmem:kmem_cache_free",
	};
	const char * const page_events[] = {
	"-e", "kmem:mm_page_alloc",
	"-e", "kmem:mm_page_free",
	};
	unsigned int rec_argc, i, j;
	const char **rec_argv;

	rec_argc = FUNC0(record_args) + argc - 1;
	if (kmem_slab)
		rec_argc += FUNC0(slab_events);
	if (kmem_page)
		rec_argc += FUNC0(page_events) + 1; /* for -g */

	rec_argv = FUNC1(rec_argc + 1, sizeof(char *));

	if (rec_argv == NULL)
		return -ENOMEM;

	for (i = 0; i < FUNC0(record_args); i++)
		rec_argv[i] = FUNC3(record_args[i]);

	if (kmem_slab) {
		for (j = 0; j < FUNC0(slab_events); j++, i++)
			rec_argv[i] = FUNC3(slab_events[j]);
	}
	if (kmem_page) {
		rec_argv[i++] = FUNC3("-g");

		for (j = 0; j < FUNC0(page_events); j++, i++)
			rec_argv[i] = FUNC3(page_events[j]);
	}

	for (j = 1; j < (unsigned int)argc; j++, i++)
		rec_argv[i] = argv[j];

	return FUNC2(i, rec_argv);
}