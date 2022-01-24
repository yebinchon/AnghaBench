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
struct fscache_cookie {int /*<<< orphan*/  usage; } ;
typedef  enum fscache_cookie_trace { ____Placeholder_fscache_cookie_trace } fscache_cookie_trace ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fscache_cookie*,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct fscache_cookie *cookie,
				      enum fscache_cookie_trace where)
{
	int usage = FUNC0(&cookie->usage);

	FUNC1(cookie, where, usage);
}