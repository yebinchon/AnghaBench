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
struct trace_kprobe {int /*<<< orphan*/  tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_INSN_BNDRY ; 
 int /*<<< orphan*/  BAD_MAXACT ; 
 int /*<<< orphan*/  BAD_PROBE_ADDR ; 
 int /*<<< orphan*/  BAD_RETPROBE ; 
 int ECANCELED ; 
 int EEXIST ; 
 int EILSEQ ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FAIL_REG_PROBE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct trace_kprobe*) ; 
 char* KPROBE_EVENT_SYSTEM ; 
 int KRETPROBE_MAXACTIVE_MAX ; 
 int /*<<< orphan*/  MAXACT_NO_KPROBE ; 
 int /*<<< orphan*/  MAXACT_TOO_BIG ; 
 int MAX_EVENT_NAME_LEN ; 
 int MAX_TRACE_ARGS ; 
 int FUNC1 (struct trace_kprobe*) ; 
 unsigned int TPARG_FL_FENTRY ; 
 unsigned int TPARG_FL_KERNEL ; 
 unsigned int TPARG_FL_RETURN ; 
 long UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct trace_kprobe* FUNC3 (char const*,char const*,void*,char*,long,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_kprobe*) ; 
 scalar_t__ FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,long) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 int FUNC12 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char,void*,...) ; 
 char* FUNC15 (char const*,char) ; 
 int FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char const**) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int FUNC21 (char const**,char const**,char*,int) ; 
 int FUNC22 (int /*<<< orphan*/ *,int,char*,unsigned int) ; 
 int FUNC23 (int /*<<< orphan*/ *,int) ; 
 int FUNC24 (char*,long*) ; 

__attribute__((used)) static int FUNC25(int argc, const char *argv[])
{
	/*
	 * Argument syntax:
	 *  - Add kprobe:
	 *      p[:[GRP/]EVENT] [MOD:]KSYM[+OFFS]|KADDR [FETCHARGS]
	 *  - Add kretprobe:
	 *      r[MAXACTIVE][:[GRP/]EVENT] [MOD:]KSYM[+0] [FETCHARGS]
	 * Fetch args:
	 *  $retval	: fetch return value
	 *  $stack	: fetch stack address
	 *  $stackN	: fetch Nth of stack (N:0-)
	 *  $comm       : fetch current task comm
	 *  @ADDR	: fetch memory at ADDR (ADDR should be in kernel)
	 *  @SYM[+|-offs] : fetch memory at SYM +|- offs (SYM is a data symbol)
	 *  %REG	: fetch register REG
	 * Dereferencing memory fetch:
	 *  +|-offs(ARG) : fetch memory at ARG +|- offs address.
	 * Alias name of args:
	 *  NAME=FETCHARG : set NAME as alias of FETCHARG.
	 * Type of args:
	 *  FETCHARG:TYPE : use TYPE instead of unsigned long.
	 */
	struct trace_kprobe *tk = NULL;
	int i, len, ret = 0;
	bool is_return = false;
	char *symbol = NULL, *tmp = NULL;
	const char *event = NULL, *group = KPROBE_EVENT_SYSTEM;
	int maxactive = 0;
	long offset = 0;
	void *addr = NULL;
	char buf[MAX_EVENT_NAME_LEN];
	unsigned int flags = TPARG_FL_KERNEL;

	switch (argv[0][0]) {
	case 'r':
		is_return = true;
		flags |= TPARG_FL_RETURN;
		break;
	case 'p':
		break;
	default:
		return -ECANCELED;
	}
	if (argc < 2)
		return -ECANCELED;

	FUNC19("trace_kprobe", argc, argv);

	event = FUNC15(&argv[0][1], ':');
	if (event)
		event++;

	if (FUNC5(argv[0][1])) {
		if (!is_return) {
			FUNC18(1, MAXACT_NO_KPROBE);
			goto parse_error;
		}
		if (event)
			len = event - &argv[0][1] - 1;
		else
			len = FUNC16(&argv[0][1]);
		if (len > MAX_EVENT_NAME_LEN - 1) {
			FUNC18(1, BAD_MAXACT);
			goto parse_error;
		}
		FUNC11(buf, &argv[0][1], len);
		buf[len] = '\0';
		ret = FUNC9(buf, 0, &maxactive);
		if (ret || !maxactive) {
			FUNC18(1, BAD_MAXACT);
			goto parse_error;
		}
		/* kretprobes instances are iterated over via a list. The
		 * maximum should stay reasonable.
		 */
		if (maxactive > KRETPROBE_MAXACTIVE_MAX) {
			FUNC18(1, MAXACT_TOO_BIG);
			goto parse_error;
		}
	}

	/* try to parse an address. if that fails, try to read the
	 * input as a symbol. */
	if (FUNC10(argv[1], 0, (unsigned long *)&addr)) {
		FUNC20(1);
		/* Check whether uprobe event specified */
		if (FUNC15(argv[1], '/') && FUNC15(argv[1], ':')) {
			ret = -ECANCELED;
			goto error;
		}
		/* a symbol specified */
		symbol = FUNC8(argv[1], GFP_KERNEL);
		if (!symbol)
			return -ENOMEM;
		/* TODO: support .init module functions */
		ret = FUNC24(symbol, &offset);
		if (ret || offset < 0 || offset > UINT_MAX) {
			FUNC18(0, BAD_PROBE_ADDR);
			goto parse_error;
		}
		if (FUNC7(NULL, symbol, offset))
			flags |= TPARG_FL_FENTRY;
		if (offset && is_return && !(flags & TPARG_FL_FENTRY)) {
			FUNC18(0, BAD_RETPROBE);
			goto parse_error;
		}
	}

	FUNC20(0);
	if (event) {
		ret = FUNC21(&event, &group, buf,
						  event - argv[0]);
		if (ret)
			goto parse_error;
	} else {
		/* Make a new event name */
		if (symbol)
			FUNC14(buf, MAX_EVENT_NAME_LEN, "%c_%s_%ld",
				 is_return ? 'r' : 'p', symbol, offset);
		else
			FUNC14(buf, MAX_EVENT_NAME_LEN, "%c_0x%p",
				 is_return ? 'r' : 'p', addr);
		FUNC13(buf);
		event = buf;
	}

	/* setup a probe */
	tk = FUNC3(group, event, addr, symbol, offset, maxactive,
			       argc - 2, is_return);
	if (FUNC0(tk)) {
		ret = FUNC1(tk);
		/* This must return -ENOMEM, else there is a bug */
		FUNC2(ret != -ENOMEM);
		goto out;	/* We know tk is not allocated */
	}
	argc -= 2; argv += 2;

	/* parse arguments */
	for (i = 0; i < argc && i < MAX_TRACE_ARGS; i++) {
		tmp = FUNC8(argv[i], GFP_KERNEL);
		if (!tmp) {
			ret = -ENOMEM;
			goto error;
		}

		FUNC20(i + 2);
		ret = FUNC22(&tk->tp, i, tmp, flags);
		FUNC6(tmp);
		if (ret)
			goto error;	/* This can be -ENOMEM */
	}

	ret = FUNC23(&tk->tp, is_return);
	if (ret < 0)
		goto error;

	ret = FUNC12(tk);
	if (ret) {
		FUNC20(1);
		if (ret == -EILSEQ)
			FUNC18(0, BAD_INSN_BNDRY);
		else if (ret == -ENOENT)
			FUNC18(0, BAD_PROBE_ADDR);
		else if (ret != -ENOMEM && ret != -EEXIST)
			FUNC18(0, FAIL_REG_PROBE);
		goto error;
	}

out:
	FUNC17();
	FUNC6(symbol);
	return ret;

parse_error:
	ret = -EINVAL;
error:
	FUNC4(tk);
	goto out;
}