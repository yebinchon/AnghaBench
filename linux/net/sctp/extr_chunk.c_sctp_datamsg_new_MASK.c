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
struct sctp_datamsg {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  datamsg ; 
 struct sctp_datamsg* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_datamsg*) ; 

__attribute__((used)) static struct sctp_datamsg *FUNC3(gfp_t gfp)
{
	struct sctp_datamsg *msg;
	msg = FUNC1(sizeof(struct sctp_datamsg), gfp);
	if (msg) {
		FUNC2(msg);
		FUNC0(datamsg);
	}
	return msg;
}