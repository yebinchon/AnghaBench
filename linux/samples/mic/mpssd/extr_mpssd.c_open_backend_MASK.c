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
struct TYPE_2__ {scalar_t__ backend; scalar_t__ backend_addr; int /*<<< orphan*/  backend_file; int /*<<< orphan*/  backend_size; } ;
struct mic_info {TYPE_1__ mic_virtblk; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mic_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct mic_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8(struct mic_info *mic)
{
	if (!FUNC5(mic))
		goto _error_exit;
	mic->mic_virtblk.backend = FUNC4(mic->mic_virtblk.backend_file, O_RDWR);
	if (mic->mic_virtblk.backend < 0) {
		FUNC3("%s: can't open: %s\n", mic->name,
			mic->mic_virtblk.backend_file);
		goto _error_free;
	}
	if (!FUNC6(mic))
		goto _error_close;
	mic->mic_virtblk.backend_addr = FUNC2(NULL,
		mic->mic_virtblk.backend_size,
		PROT_READ|PROT_WRITE, MAP_SHARED,
		mic->mic_virtblk.backend, 0L);
	if (mic->mic_virtblk.backend_addr == MAP_FAILED) {
		FUNC3("%s: can't map: %s %s\n",
			mic->name, mic->mic_virtblk.backend_file,
			FUNC7(errno));
		goto _error_close;
	}
	return true;

 _error_close:
	FUNC0(mic->mic_virtblk.backend);
 _error_free:
	FUNC1(mic->mic_virtblk.backend_file);
 _error_exit:
	return false;
}