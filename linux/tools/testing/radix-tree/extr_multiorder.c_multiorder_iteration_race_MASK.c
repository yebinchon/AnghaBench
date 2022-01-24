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
struct xarray {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  creator_func ; 
 int /*<<< orphan*/  FUNC0 (struct xarray*) ; 
 int /*<<< orphan*/  iterator_func ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct xarray*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct xarray *xa)
{
	const int num_threads = FUNC3(_SC_NPROCESSORS_ONLN);
	pthread_t worker_thread[num_threads];
	int i;

	FUNC1(&worker_thread[0], NULL, &creator_func, xa);
	for (i = 1; i < num_threads; i++)
		FUNC1(&worker_thread[i], NULL, &iterator_func, xa);

	for (i = 0; i < num_threads; i++)
		FUNC2(worker_thread[i], NULL);

	FUNC0(xa);
}