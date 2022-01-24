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
struct sock_fprog {int /*<<< orphan*/  len; int /*<<< orphan*/  filter; } ;
struct bpf_prog {int /*<<< orphan*/ * orig_prog; int /*<<< orphan*/  len; int /*<<< orphan*/  insns; } ;
typedef  int /*<<< orphan*/  bpf_aux_classic_check_t ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct sock_fprog*) ; 
 struct bpf_prog* FUNC5 (struct bpf_prog*,int /*<<< orphan*/ ) ; 
 struct bpf_prog* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct bpf_prog*,struct sock_fprog*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC10(struct bpf_prog **pfp, struct sock_fprog *fprog,
			      bpf_aux_classic_check_t trans, bool save_orig)
{
	unsigned int fsize = FUNC4(fprog);
	struct bpf_prog *fp;
	int err;

	/* Make sure new filter is there and in the right amounts. */
	if (!FUNC3(fprog->filter, fprog->len))
		return -EINVAL;

	fp = FUNC6(FUNC7(fprog->len), 0);
	if (!fp)
		return -ENOMEM;

	if (FUNC9(fp->insns, fprog->filter, fsize)) {
		FUNC2(fp);
		return -EFAULT;
	}

	fp->len = fprog->len;
	fp->orig_prog = NULL;

	if (save_orig) {
		err = FUNC8(fp, fprog);
		if (err) {
			FUNC2(fp);
			return -ENOMEM;
		}
	}

	/* bpf_prepare_filter() already takes care of freeing
	 * memory in case something goes wrong.
	 */
	fp = FUNC5(fp, trans);
	if (FUNC0(fp))
		return FUNC1(fp);

	*pfp = fp;
	return 0;
}