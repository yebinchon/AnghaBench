#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock_fprog_kern {unsigned int len; void* filter; } ;
struct bpf_prog {unsigned int len; TYPE_1__* aux; int /*<<< orphan*/  insnsi; int /*<<< orphan*/  type; } ;
struct bpf_insn {int dummy; } ;
typedef  int __u8 ;
struct TYPE_4__ {int aux; int expected_errcode; int /*<<< orphan*/  stack_depth; } ;
struct TYPE_3__ {int /*<<< orphan*/  stack_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_SOCKET_FILTER ; 
#define  CLASSIC 129 
 int EINVAL ; 
 int ENOMEM ; 
 int FLAG_EXPECTED_FAIL ; 
#define  INTERNAL 128 
 int TEST_TYPE_MASK ; 
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bpf_prog**,struct sock_fprog_kern*) ; 
 struct bpf_prog* FUNC2 (struct bpf_prog*,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 TYPE_2__* tests ; 

__attribute__((used)) static struct bpf_prog *FUNC8(int which, int *err)
{
	__u8 test_type = tests[which].aux & TEST_TYPE_MASK;
	unsigned int flen = FUNC4(which);
	void *fptr = FUNC5(which);
	struct sock_fprog_kern fprog;
	struct bpf_prog *fp;

	switch (test_type) {
	case CLASSIC:
		fprog.filter = fptr;
		fprog.len = flen;

		*err = FUNC1(&fp, &fprog);
		if (tests[which].aux & FLAG_EXPECTED_FAIL) {
			if (*err == tests[which].expected_errcode) {
				FUNC7("PASS\n");
				/* Verifier rejected filter as expected. */
				*err = 0;
				return NULL;
			} else {
				FUNC7("UNEXPECTED_PASS\n");
				/* Verifier didn't reject the test that's
				 * bad enough, just return!
				 */
				*err = -EINVAL;
				return NULL;
			}
		}
		if (*err) {
			FUNC7("FAIL to prog_create err=%d len=%d\n",
				*err, fprog.len);
			return NULL;
		}
		break;

	case INTERNAL:
		fp = FUNC0(FUNC3(flen), 0);
		if (fp == NULL) {
			FUNC7("UNEXPECTED_FAIL no memory left\n");
			*err = -ENOMEM;
			return NULL;
		}

		fp->len = flen;
		/* Type doesn't really matter here as long as it's not unspec. */
		fp->type = BPF_PROG_TYPE_SOCKET_FILTER;
		FUNC6(fp->insnsi, fptr, fp->len * sizeof(struct bpf_insn));
		fp->aux->stack_depth = tests[which].stack_depth;

		/* We cannot error here as we don't need type compatibility
		 * checks.
		 */
		fp = FUNC2(fp, err);
		if (*err) {
			FUNC7("FAIL to select_runtime err=%d\n", *err);
			return NULL;
		}
		break;
	}

	*err = 0;
	return fp;
}