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
struct rpc_clnt {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct rpc_clnt* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_clnt*) ; 

__attribute__((used)) static void FUNC2(struct file *file)
{
	struct rpc_clnt *clnt = FUNC0(file->f_mapping->host);

	FUNC1(clnt);
}