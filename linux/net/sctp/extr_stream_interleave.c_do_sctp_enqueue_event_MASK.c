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
struct sk_buff_head {int dummy; } ;
struct sctp_ulpq {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sctp_ulpq*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 

__attribute__((used)) static int FUNC4(struct sctp_ulpq *ulpq,
				 struct sctp_ulpevent *event)
{
	struct sk_buff_head temp;

	FUNC3(&temp);
	FUNC0(&temp, FUNC2(event));
	return FUNC1(ulpq, &temp);
}