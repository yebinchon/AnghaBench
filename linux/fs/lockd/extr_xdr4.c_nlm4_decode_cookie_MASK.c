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
struct nlm_cookie {int len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int NLM_MAXCOOKIELEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *
FUNC5(__be32 *p, struct nlm_cookie *c)
{
	unsigned int	len;

	len = FUNC4(*p++);
	
	if(len==0)
	{
		c->len=4;
		FUNC3(c->data, 0, 4);	/* hockeypux brain damage */
	}
	else if(len<=NLM_MAXCOOKIELEN)
	{
		c->len=len;
		FUNC2(c->data, p, len);
		p+=FUNC0(len);
	}
	else 
	{
		FUNC1("lockd: bad cookie size %d (only cookies under "
			"%d bytes are supported.)\n",
				len, NLM_MAXCOOKIELEN);
		return NULL;
	}
	return p;
}