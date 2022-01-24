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
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct cred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cred*) ; 

__attribute__((used)) static inline bool FUNC2(kuid_t uid, struct cred *cred)
{ return !FUNC1(uid, cred) && FUNC0(uid, cred); }