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
struct nf_conn {int dummy; } ;
struct iter_data {int (* iter ) (struct nf_conn*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*) ; 
 int FUNC2 (struct nf_conn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nf_conn *i, void *data)
{
	struct iter_data *d = data;

	if (!FUNC0(d->net, FUNC1(i)))
		return 0;

	return d->iter(i, d->data);
}