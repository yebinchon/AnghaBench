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
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;

/* Variables and functions */
 unsigned int MIN_NAPI_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct napi_struct* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct net_device *FUNC3(unsigned int napi_id)
{
	struct napi_struct *napi;

	FUNC0(!FUNC2());

	if (napi_id < MIN_NAPI_ID)
		return NULL;

	napi = FUNC1(napi_id);

	return napi ? napi->dev : NULL;
}