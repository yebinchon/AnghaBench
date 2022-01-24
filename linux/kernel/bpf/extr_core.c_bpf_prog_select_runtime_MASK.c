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
struct bpf_prog {int /*<<< orphan*/  jited; int /*<<< orphan*/  aux; scalar_t__ bpf_func; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int FUNC0 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC1 (struct bpf_prog*) ; 
 int FUNC2 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_prog*) ; 
 int FUNC7 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_prog*) ; 

struct bpf_prog *FUNC9(struct bpf_prog *fp, int *err)
{
	/* In case of BPF to BPF calls, verifier did all the prep
	 * work with regards to JITing, etc.
	 */
	if (fp->bpf_func)
		goto finalize;

	FUNC8(fp);

	/* eBPF JITs can rewrite the program in case constant
	 * blinding is active. However, in case of error during
	 * blinding, bpf_int_jit_compile() must always return a
	 * valid program, which in this case would simply not
	 * be JITed, but falls back to the interpreter.
	 */
	if (!FUNC5(fp->aux)) {
		*err = FUNC2(fp);
		if (*err)
			return fp;

		fp = FUNC1(fp);
		if (!fp->jited) {
			FUNC3(fp);
#ifdef CONFIG_BPF_JIT_ALWAYS_ON
			*err = -ENOTSUPP;
			return fp;
#endif
		} else {
			FUNC4(fp);
		}
	} else {
		*err = FUNC7(fp);
		if (*err)
			return fp;
	}

finalize:
	FUNC6(fp);

	/* The tail call compatibility check can only be done at
	 * this late stage as we need to determine, if we deal
	 * with JITed or non JITed program concatenations and not
	 * all eBPF JITs might immediately support all features.
	 */
	*err = FUNC0(fp);

	return fp;
}