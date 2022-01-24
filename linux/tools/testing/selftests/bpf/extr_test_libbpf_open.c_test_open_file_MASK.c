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
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  err_buf ;

/* Variables and functions */
 int EXIT_FAIL_LIBBPF ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_object*) ; 
 char* FUNC1 (struct bpf_object*) ; 
 struct bpf_object* FUNC2 (char*) ; 
 long FUNC3 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC4 (long,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_object*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_object*,int) ; 

int FUNC8(char *filename, bool verbose)
{
	struct bpf_object *bpfobj = NULL;
	long err;

	if (verbose)
		FUNC5("Open BPF ELF-file with libbpf: %s\n", filename);

	/* Load BPF ELF object file and check for errors */
	bpfobj = FUNC2(filename);
	err = FUNC3(bpfobj);
	if (err) {
		char err_buf[128];
		FUNC4(err, err_buf, sizeof(err_buf));
		if (verbose)
			FUNC5("Unable to load eBPF objects in file '%s': %s\n",
			       filename, err_buf);
		return EXIT_FAIL_LIBBPF;
	}
	FUNC7(bpfobj, verbose);
	FUNC6(bpfobj, verbose);

	if (verbose)
		FUNC5("Close BPF ELF-file with libbpf: %s\n",
		       FUNC1(bpfobj));
	FUNC0(bpfobj);

	return 0;
}