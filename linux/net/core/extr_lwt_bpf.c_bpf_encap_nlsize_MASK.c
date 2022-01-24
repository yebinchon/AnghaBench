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
struct nlattr {int dummy; } ;
struct lwtunnel_state {int dummy; } ;

/* Variables and functions */
 int MAX_PROG_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct lwtunnel_state *lwtstate)
{
	int nest_len = FUNC0(sizeof(struct nlattr)) +
		       FUNC0(MAX_PROG_NAME) + /* LWT_BPF_PROG_NAME */
		       0;

	return nest_len + /* LWT_BPF_IN */
	       nest_len + /* LWT_BPF_OUT */
	       nest_len + /* LWT_BPF_XMIT */
	       0;
}