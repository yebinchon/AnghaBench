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
struct sock_fprog_kern {int /*<<< orphan*/  len; int /*<<< orphan*/  filter; } ;
struct bpf_prog {int /*<<< orphan*/ * orig_prog; int /*<<< orphan*/  len; int /*<<< orphan*/  insns; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct sock_fprog_kern*) ; 
 struct bpf_prog* FUNC4 (struct bpf_prog*,int /*<<< orphan*/ *) ; 
 struct bpf_prog* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC8(struct bpf_prog **pfp, struct sock_fprog_kern *fprog)
{
	unsigned int fsize = FUNC3(fprog);
	struct bpf_prog *fp;

	/* Make sure new filter is there and in the right amounts. */
	if (!FUNC2(fprog->filter, fprog->len))
		return -EINVAL;

	fp = FUNC5(FUNC6(fprog->len), 0);
	if (!fp)
		return -ENOMEM;

	FUNC7(fp->insns, fprog->filter, fsize);

	fp->len = fprog->len;
	/* Since unattached filters are not copied back to user
	 * space through sk_get_filter(), we do not need to hold
	 * a copy here, and can spare us the work.
	 */
	fp->orig_prog = NULL;

	/* bpf_prepare_filter() already takes care of freeing
	 * memory in case something goes wrong.
	 */
	fp = FUNC4(fp, NULL);
	if (FUNC0(fp))
		return FUNC1(fp);

	*pfp = fp;
	return 0;
}