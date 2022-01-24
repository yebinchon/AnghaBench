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
struct gss_svc_seq_data {int sd_max; int /*<<< orphan*/  sd_lock; int /*<<< orphan*/  sd_win; } ;
struct rsc {struct gss_svc_seq_data seqdata; } ;

/* Variables and functions */
 int GSS_SEQ_WIN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct rsc *rsci, int seq_num)
{
	struct gss_svc_seq_data *sd = &rsci->seqdata;

	FUNC4(&sd->sd_lock);
	if (seq_num > sd->sd_max) {
		if (seq_num >= sd->sd_max + GSS_SEQ_WIN) {
			FUNC3(sd->sd_win,0,sizeof(sd->sd_win));
			sd->sd_max = seq_num;
		} else while (sd->sd_max < seq_num) {
			sd->sd_max++;
			FUNC0(sd->sd_max % GSS_SEQ_WIN, sd->sd_win);
		}
		FUNC1(seq_num % GSS_SEQ_WIN, sd->sd_win);
		goto ok;
	} else if (seq_num <= sd->sd_max - GSS_SEQ_WIN) {
		goto drop;
	}
	/* sd_max - GSS_SEQ_WIN < seq_num <= sd_max */
	if (FUNC2(seq_num % GSS_SEQ_WIN, sd->sd_win))
		goto drop;
ok:
	FUNC5(&sd->sd_lock);
	return 1;
drop:
	FUNC5(&sd->sd_lock);
	return 0;
}