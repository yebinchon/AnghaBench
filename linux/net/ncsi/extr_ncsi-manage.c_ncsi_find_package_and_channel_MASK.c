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
struct ncsi_package {int dummy; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 struct ncsi_channel* FUNC2 (struct ncsi_package*,int /*<<< orphan*/ ) ; 
 struct ncsi_package* FUNC3 (struct ncsi_dev_priv*,int /*<<< orphan*/ ) ; 

void FUNC4(struct ncsi_dev_priv *ndp,
				   unsigned char id,
				   struct ncsi_package **np,
				   struct ncsi_channel **nc)
{
	struct ncsi_package *p;
	struct ncsi_channel *c;

	p = FUNC3(ndp, FUNC1(id));
	c = p ? FUNC2(p, FUNC0(id)) : NULL;

	if (np)
		*np = p;
	if (nc)
		*nc = c;
}