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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static int
FUNC2(struct seq_file *m, void *v)
{
	FUNC0(m, "RPC server: %s\n", FUNC1()->nodename);
	FUNC0(m, "service: foo (1) version 0\n");
	FUNC0(m, "address: 127.0.0.1\n");
	FUNC0(m, "protocol: tcp\n");
	FUNC0(m, "port: 0\n");
	return 0;
}