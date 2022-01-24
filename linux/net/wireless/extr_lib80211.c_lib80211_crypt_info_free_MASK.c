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
struct lib80211_crypt_info {struct lib80211_crypt_data** crypt; int /*<<< orphan*/  crypt_deinit_timer; } ;
struct lib80211_crypt_data {TYPE_1__* ops; int /*<<< orphan*/  priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* deinit ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int NUM_WEP_KEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lib80211_crypt_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct lib80211_crypt_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lib80211_crypt_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct lib80211_crypt_info *info)
{
	int i;

        FUNC3(info);
        FUNC0(&info->crypt_deinit_timer);
        FUNC2(info, 1);

        for (i = 0; i < NUM_WEP_KEYS; i++) {
                struct lib80211_crypt_data *crypt = info->crypt[i];
                if (crypt) {
                        if (crypt->ops) {
                                crypt->ops->deinit(crypt->priv);
                                FUNC4(crypt->ops->owner);
                        }
                        FUNC1(crypt);
                        info->crypt[i] = NULL;
                }
        }
}