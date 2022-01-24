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
typedef  int /*<<< orphan*/  va_list ;
struct bpf_verifier_log {char* kbuf; int len_total; int len_used; int /*<<< orphan*/ * ubuf; } ;

/* Variables and functions */
 int BPF_VERIFIER_TMP_LOG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned int FUNC2 (int,unsigned int) ; 
 unsigned int FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(struct bpf_verifier_log *log, const char *fmt,
		       va_list args)
{
	unsigned int n;

	n = FUNC3(log->kbuf, BPF_VERIFIER_TMP_LOG_SIZE, fmt, args);

	FUNC0(n >= BPF_VERIFIER_TMP_LOG_SIZE - 1,
		  "verifier log line truncated - local buffer too short\n");

	n = FUNC2(log->len_total - log->len_used - 1, n);
	log->kbuf[n] = '\0';

	if (!FUNC1(log->ubuf + log->len_used, log->kbuf, n + 1))
		log->len_used += n;
	else
		log->ubuf = NULL;
}