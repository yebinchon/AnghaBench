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
struct hpi_response {int dummy; } ;
struct hpi_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ADAPTER_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HPI_OBJ_ADAPTER ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hpi_message *phm, struct hpi_response *phr)
{
	FUNC0(VERBOSE, "adapter_close\n");
	FUNC1(phr, HPI_OBJ_ADAPTER, HPI_ADAPTER_CLOSE, 0);
}