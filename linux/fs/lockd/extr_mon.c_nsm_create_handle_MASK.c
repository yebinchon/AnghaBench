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
typedef  char sockaddr ;
struct nsm_handle {char* sm_name; size_t sm_addrlen; int /*<<< orphan*/  sm_addrbuf; int /*<<< orphan*/  sm_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nsm_handle* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t const) ; 
 char* FUNC2 (struct nsm_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct nsm_handle*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nsm_handle *FUNC8(const struct sockaddr *sap,
					    const size_t salen,
					    const char *hostname,
					    const size_t hostname_len)
{
	struct nsm_handle *new;

	new = FUNC0(sizeof(*new) + hostname_len + 1, GFP_KERNEL);
	if (FUNC7(new == NULL))
		return NULL;

	FUNC4(&new->sm_count, 1);
	new->sm_name = (char *)(new + 1);
	FUNC1(FUNC2(new), sap, salen);
	new->sm_addrlen = salen;
	FUNC3(new);

	if (FUNC5(FUNC2(new), new->sm_addrbuf,
					sizeof(new->sm_addrbuf)) == 0)
		(void)FUNC6(new->sm_addrbuf, sizeof(new->sm_addrbuf),
				"unsupported address family");
	FUNC1(new->sm_name, hostname, hostname_len);
	new->sm_name[hostname_len] = '\0';

	return new;
}