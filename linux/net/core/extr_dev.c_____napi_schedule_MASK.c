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
struct softnet_data {int /*<<< orphan*/  poll_list; } ;
struct napi_struct {int /*<<< orphan*/  poll_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  NET_RX_SOFTIRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct softnet_data *sd,
				     struct napi_struct *napi)
{
	FUNC1(&napi->poll_list, &sd->poll_list);
	FUNC0(NET_RX_SOFTIRQ);
}