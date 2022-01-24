#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct scm_cookie {int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  scm ;
struct TYPE_2__ {scalar_t__ fp; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct scm_cookie*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scm_cookie*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct scm_cookie*,struct sk_buff*) ; 

void FUNC5(struct sk_buff *skb)
{
	struct scm_cookie scm;

	FUNC1(&scm, 0, sizeof(scm));
	scm.pid  = FUNC0(skb).pid;
	if (FUNC0(skb).fp)
		FUNC4(&scm, skb);

	/* Alas, it calls VFS */
	/* So fscking what? fput() had been SMP-safe since the last Summer */
	FUNC2(&scm);
	FUNC3(skb);
}