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
struct nfsd4_session {int /*<<< orphan*/  se_fchannel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfsd4_session *ses)
{
	FUNC1(ses);
	FUNC2(&ses->se_fchannel);
	FUNC0(ses);
}