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
struct rt6_info {int /*<<< orphan*/  rt6i_flags; } ;
struct net_device {int dummy; } ;
struct fib6_result {struct fib6_info* f6i; } ;
struct fib6_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTF_PCPU ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 unsigned short FUNC1 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib6_info*) ; 
 struct rt6_info* FUNC4 (int /*<<< orphan*/ ,struct net_device*,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct rt6_info*,struct fib6_result const*) ; 
 struct net_device* FUNC6 (struct fib6_result const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static struct rt6_info *FUNC9(const struct fib6_result *res)
{
	struct fib6_info *f6i = res->f6i;
	unsigned short flags = FUNC1(f6i);
	struct net_device *dev;
	struct rt6_info *pcpu_rt;

	if (!FUNC2(f6i))
		return NULL;

	FUNC7();
	dev = FUNC6(res);
	pcpu_rt = FUNC4(FUNC0(dev), dev, flags);
	FUNC8();
	if (!pcpu_rt) {
		FUNC3(f6i);
		return NULL;
	}
	FUNC5(pcpu_rt, res);
	pcpu_rt->rt6i_flags |= RTF_PCPU;
	return pcpu_rt;
}