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
struct nlattr {int dummy; } ;
struct nf_conn {unsigned int status; } ;

/* Variables and functions */
 size_t CTA_STATUS ; 
 int EBUSY ; 
 unsigned long IPS_ASSURED ; 
 unsigned long IPS_CONFIRMED ; 
 unsigned long IPS_DYING ; 
 unsigned long IPS_EXPECTED ; 
 unsigned long IPS_SEEN_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nf_conn *ct, const struct nlattr * const cda[])
{
	unsigned long d;
	unsigned int status = FUNC2(FUNC1(cda[CTA_STATUS]));
	d = ct->status ^ status;

	if (d & (IPS_EXPECTED|IPS_CONFIRMED|IPS_DYING))
		/* unchangeable */
		return -EBUSY;

	if (d & IPS_SEEN_REPLY && !(status & IPS_SEEN_REPLY))
		/* SEEN_REPLY bit can only be set */
		return -EBUSY;

	if (d & IPS_ASSURED && !(status & IPS_ASSURED))
		/* ASSURED bit can only be set */
		return -EBUSY;

	FUNC0(ct, status, 0);
	return 0;
}