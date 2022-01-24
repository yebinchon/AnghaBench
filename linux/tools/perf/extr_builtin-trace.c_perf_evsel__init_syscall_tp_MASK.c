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
struct syscall_tp {int /*<<< orphan*/  id; } ;
struct evsel {struct syscall_tp* priv; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct syscall_tp* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct evsel*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct syscall_tp**) ; 

__attribute__((used)) static int FUNC3(struct evsel *evsel)
{
	struct syscall_tp *sc = evsel->priv = FUNC0(sizeof(struct syscall_tp));

	if (evsel->priv != NULL) {
		if (FUNC1(evsel, &sc->id, "__syscall_nr") &&
		    FUNC1(evsel, &sc->id, "nr"))
			goto out_delete;
		return 0;
	}

	return -ENOMEM;
out_delete:
	FUNC2(&evsel->priv);
	return -ENOENT;
}