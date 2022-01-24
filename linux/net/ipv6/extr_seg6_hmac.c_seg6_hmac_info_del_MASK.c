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
typedef  int /*<<< orphan*/  u32 ;
struct seg6_pernet_data {int /*<<< orphan*/  hmac_infos; } ;
struct seg6_hmac_info {int /*<<< orphan*/  node; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct seg6_hmac_info* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rht_params ; 
 int /*<<< orphan*/  FUNC2 (struct seg6_hmac_info*) ; 
 struct seg6_pernet_data* FUNC3 (struct net*) ; 

int FUNC4(struct net *net, u32 key)
{
	struct seg6_pernet_data *sdata = FUNC3(net);
	struct seg6_hmac_info *hinfo;
	int err = -ENOENT;

	hinfo = FUNC0(&sdata->hmac_infos, &key, rht_params);
	if (!hinfo)
		goto out;

	err = FUNC1(&sdata->hmac_infos, &hinfo->node,
				     rht_params);
	if (err)
		goto out;

	FUNC2(hinfo);

out:
	return err;
}