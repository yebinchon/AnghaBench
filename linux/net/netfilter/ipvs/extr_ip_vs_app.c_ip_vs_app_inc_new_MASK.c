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
struct netns_ipvs {int dummy; } ;
struct ip_vs_protocol {int (* register_app ) (struct netns_ipvs*,struct ip_vs_app*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  unregister_app; } ;
struct ip_vs_app {int /*<<< orphan*/  port; int /*<<< orphan*/  name; int /*<<< orphan*/  incs_list; int /*<<< orphan*/  a_list; int /*<<< orphan*/  timeout_table; int /*<<< orphan*/  timeouts_size; scalar_t__ timeouts; int /*<<< orphan*/  usecnt; struct ip_vs_app* app; int /*<<< orphan*/  p_list; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_app*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct ip_vs_protocol* FUNC6 (int /*<<< orphan*/ ) ; 
 struct ip_vs_app* FUNC7 (struct ip_vs_app*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct netns_ipvs*,struct ip_vs_app*) ; 

__attribute__((used)) static int
FUNC11(struct netns_ipvs *ipvs, struct ip_vs_app *app, __u16 proto,
		  __u16 port)
{
	struct ip_vs_protocol *pp;
	struct ip_vs_app *inc;
	int ret;

	if (!(pp = FUNC6(proto)))
		return -EPROTONOSUPPORT;

	if (!pp->unregister_app)
		return -EOPNOTSUPP;

	inc = FUNC7(app, sizeof(*inc), GFP_KERNEL);
	if (!inc)
		return -ENOMEM;
	FUNC0(&inc->p_list);
	FUNC0(&inc->incs_list);
	inc->app = app;
	inc->port = FUNC3(port);
	FUNC2(&inc->usecnt, 0);

	if (app->timeouts) {
		inc->timeout_table =
			FUNC5(app->timeouts,
						   app->timeouts_size);
		if (!inc->timeout_table) {
			ret = -ENOMEM;
			goto out;
		}
	}

	ret = pp->register_app(ipvs, inc);
	if (ret)
		goto out;

	FUNC8(&inc->a_list, &app->incs_list);
	FUNC1(9, "%s App %s:%u registered\n",
		  pp->name, inc->name, FUNC9(inc->port));

	return 0;

  out:
	FUNC4(inc);
	return ret;
}