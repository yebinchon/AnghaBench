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
struct vdso_file {int found; char* temp_file_name; int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDSO__MAP_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void**,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (void*,size_t) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,char*,size_t) ; 

__attribute__((used)) static char *FUNC6(struct vdso_file *vdso_file)
{
	char *vdso = NULL;
	char *buf = NULL;
	void *start, *end;
	size_t size;
	int fd;

	if (vdso_file->found)
		return vdso_file->temp_file_name;

	if (vdso_file->error || FUNC1(&start, &end, VDSO__MAP_NAME))
		return NULL;

	size = end - start;

	buf = FUNC3(start, size);
	if (!buf)
		return NULL;

	fd = FUNC4(vdso_file->temp_file_name);
	if (fd < 0)
		goto out;

	if (size == (size_t) FUNC5(fd, buf, size))
		vdso = vdso_file->temp_file_name;

	FUNC0(fd);

 out:
	FUNC2(buf);

	vdso_file->found = (vdso != NULL);
	vdso_file->error = !vdso_file->found;
	return vdso;
}