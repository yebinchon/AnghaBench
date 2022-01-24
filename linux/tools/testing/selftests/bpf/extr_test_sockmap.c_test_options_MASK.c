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
 int OPTSTRING ; 
 scalar_t__ ktls ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ peek_flag ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int txmsg_apply ; 
 int txmsg_cork ; 
 scalar_t__ txmsg_drop ; 
 int txmsg_end ; 
 scalar_t__ txmsg_ingress ; 
 scalar_t__ txmsg_noisy ; 
 scalar_t__ txmsg_pass ; 
 int txmsg_pop ; 
 scalar_t__ txmsg_redir ; 
 scalar_t__ txmsg_redir_noisy ; 
 scalar_t__ txmsg_skb ; 
 int txmsg_start ; 
 int txmsg_start_pop ; 

__attribute__((used)) static void FUNC3(char *options)
{
	char tstr[OPTSTRING];

	FUNC0(options, 0, OPTSTRING);

	if (txmsg_pass)
		FUNC2(options, "pass,", OPTSTRING);
	if (txmsg_noisy)
		FUNC2(options, "pass_noisy,", OPTSTRING);
	if (txmsg_redir)
		FUNC2(options, "redir,", OPTSTRING);
	if (txmsg_redir_noisy)
		FUNC2(options, "redir_noisy,", OPTSTRING);
	if (txmsg_drop)
		FUNC2(options, "drop,", OPTSTRING);
	if (txmsg_apply) {
		FUNC1(tstr, OPTSTRING, "apply %d,", txmsg_apply);
		FUNC2(options, tstr, OPTSTRING);
	}
	if (txmsg_cork) {
		FUNC1(tstr, OPTSTRING, "cork %d,", txmsg_cork);
		FUNC2(options, tstr, OPTSTRING);
	}
	if (txmsg_start) {
		FUNC1(tstr, OPTSTRING, "start %d,", txmsg_start);
		FUNC2(options, tstr, OPTSTRING);
	}
	if (txmsg_end) {
		FUNC1(tstr, OPTSTRING, "end %d,", txmsg_end);
		FUNC2(options, tstr, OPTSTRING);
	}
	if (txmsg_start_pop) {
		FUNC1(tstr, OPTSTRING, "pop (%d,%d),",
			 txmsg_start_pop, txmsg_start_pop + txmsg_pop);
		FUNC2(options, tstr, OPTSTRING);
	}
	if (txmsg_ingress)
		FUNC2(options, "ingress,", OPTSTRING);
	if (txmsg_skb)
		FUNC2(options, "skb,", OPTSTRING);
	if (ktls)
		FUNC2(options, "ktls,", OPTSTRING);
	if (peek_flag)
		FUNC2(options, "peek,", OPTSTRING);
}