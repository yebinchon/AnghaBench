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
struct strbuf {scalar_t__ buf; } ;
struct child_process {char const** argv; int err; int stdout_to_stderr; } ;
typedef  int /*<<< orphan*/  ec_process ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct child_process*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct child_process*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (struct strbuf*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct strbuf buffer = STRBUF_INIT;
	struct child_process ec_process;
	const char *argv_ec[] = { "emacsclient", "--version", NULL };
	int version;
	int ret = -1;

	/* emacsclient prints its version number on stderr */
	FUNC4(&ec_process, 0, sizeof(ec_process));
	ec_process.argv = argv_ec;
	ec_process.err = -1;
	ec_process.stdout_to_stderr = 1;
	if (FUNC5(&ec_process)) {
		FUNC3(stderr, "Failed to start emacsclient.\n");
		return -1;
	}
	if (FUNC6(&buffer, ec_process.err, 20) < 0) {
		FUNC3(stderr, "Failed to read emacsclient version\n");
		goto out;
	}
	FUNC1(ec_process.err);

	/*
	 * Don't bother checking return value, because "emacsclient --version"
	 * seems to always exits with code 1.
	 */
	FUNC2(&ec_process);

	if (!FUNC9(buffer.buf, "emacsclient")) {
		FUNC3(stderr, "Failed to parse emacsclient version.\n");
		goto out;
	}

	version = FUNC0(buffer.buf + FUNC8("emacsclient"));

	if (version < 22) {
		FUNC3(stderr,
			"emacsclient version '%d' too old (< 22).\n",
			version);
	} else
		ret = 0;
out:
	FUNC7(&buffer);
	return ret;
}