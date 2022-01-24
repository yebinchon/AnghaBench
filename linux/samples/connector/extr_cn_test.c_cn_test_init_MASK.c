#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  val; int /*<<< orphan*/  idx; } ;
struct TYPE_5__ {scalar_t__ sk_socket; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  cn_test_callback ; 
 TYPE_2__ cn_test_id ; 
 int /*<<< orphan*/  cn_test_name ; 
 int /*<<< orphan*/  cn_test_timer ; 
 int /*<<< orphan*/  cn_test_timer_func ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__* nls ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
	int err;

	err = FUNC0(&cn_test_id, cn_test_name, cn_test_callback);
	if (err)
		goto err_out;
	cn_test_id.val++;
	err = FUNC0(&cn_test_id, cn_test_name, cn_test_callback);
	if (err) {
		FUNC1(&cn_test_id);
		goto err_out;
	}

	FUNC6(&cn_test_timer, cn_test_timer_func, 0);
	FUNC2(&cn_test_timer, jiffies + FUNC3(1000));

	FUNC4("initialized with id={%u.%u}\n",
		cn_test_id.idx, cn_test_id.val);

	return 0;

      err_out:
	if (nls && nls->sk_socket)
		FUNC5(nls->sk_socket);

	return err;
}