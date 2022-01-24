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
struct rpc_clnt {int dummy; } ;
struct rpc_auth_create_args {int dummy; } ;
struct rpc_auth {int /*<<< orphan*/  au_count; } ;

/* Variables and functions */
 struct rpc_auth null_auth ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rpc_auth *
FUNC1(const struct rpc_auth_create_args *args, struct rpc_clnt *clnt)
{
	FUNC0(&null_auth.au_count);
	return &null_auth;
}