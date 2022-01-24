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
struct cfg80211_registered_device {struct cfg80211_coalesce_rules* coalesce; } ;
struct cfg80211_coalesce_rules {int n_rules; int n_patterns; struct cfg80211_coalesce_rules* rules; struct cfg80211_coalesce_rules* patterns; struct cfg80211_coalesce_rules* mask; } ;
struct cfg80211_coalesce {int n_rules; int n_patterns; struct cfg80211_coalesce* rules; struct cfg80211_coalesce* patterns; struct cfg80211_coalesce* mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfg80211_coalesce_rules*) ; 

void FUNC1(struct cfg80211_registered_device *rdev)
{
	struct cfg80211_coalesce *coalesce = rdev->coalesce;
	int i, j;
	struct cfg80211_coalesce_rules *rule;

	if (!coalesce)
		return;

	for (i = 0; i < coalesce->n_rules; i++) {
		rule = &coalesce->rules[i];
		for (j = 0; j < rule->n_patterns; j++)
			FUNC0(rule->patterns[j].mask);
		FUNC0(rule->patterns);
	}
	FUNC0(coalesce->rules);
	FUNC0(coalesce);
	rdev->coalesce = NULL;
}