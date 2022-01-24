#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct btf_ext {int dummy; } ;
typedef  struct btf_ext btf ;
struct TYPE_11__ {int /*<<< orphan*/  d_size; int /*<<< orphan*/  d_buf; } ;
struct TYPE_10__ {int /*<<< orphan*/  e_shstrndx; } ;
struct TYPE_9__ {int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_3__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  BTF_ELF_SEC ; 
 int /*<<< orphan*/  BTF_EXT_ELF_SEC ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 int ENOENT ; 
 struct btf_ext* FUNC0 (int) ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 scalar_t__ FUNC1 (struct btf_ext*) ; 
 int LIBBPF_ERRNO__FORMAT ; 
 int LIBBPF_ERRNO__LIBELF ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC2 (struct btf_ext*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_ext*) ; 
 struct btf_ext* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct btf_ext* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC18 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

struct btf *FUNC22(const char *path, struct btf_ext **btf_ext)
{
	Elf_Data *btf_data = NULL, *btf_ext_data = NULL;
	int err = 0, fd = -1, idx = 0;
	struct btf *btf = NULL;
	Elf_Scn *scn = NULL;
	Elf *elf = NULL;
	GElf_Ehdr ehdr;

	if (FUNC15(EV_CURRENT) == EV_NONE) {
		FUNC19("failed to init libelf for %s\n", path);
		return FUNC0(-LIBBPF_ERRNO__LIBELF);
	}

	fd = FUNC18(path, O_RDONLY);
	if (fd < 0) {
		err = -errno;
		FUNC19("failed to open %s: %s\n", path, FUNC21(errno));
		return FUNC0(err);
	}

	err = -LIBBPF_ERRNO__FORMAT;

	elf = FUNC8(fd, ELF_C_READ, NULL);
	if (!elf) {
		FUNC19("failed to open %s as ELF file\n", path);
		goto done;
	}
	if (!FUNC16(elf, &ehdr)) {
		FUNC19("failed to get EHDR from %s\n", path);
		goto done;
	}
	if (!FUNC5(&ehdr)) {
		FUNC19("non-native ELF endianness is not supported\n");
		goto done;
	}
	if (!FUNC13(FUNC11(elf, ehdr.e_shstrndx), NULL)) {
		FUNC19("failed to get e_shstrndx from %s\n", path);
		goto done;
	}

	while ((scn = FUNC12(elf, scn)) != NULL) {
		GElf_Shdr sh;
		char *name;

		idx++;
		if (FUNC17(scn, &sh) != &sh) {
			FUNC19("failed to get section(%d) header from %s\n",
				   idx, path);
			goto done;
		}
		name = FUNC14(elf, ehdr.e_shstrndx, sh.sh_name);
		if (!name) {
			FUNC19("failed to get section(%d) name from %s\n",
				   idx, path);
			goto done;
		}
		if (FUNC20(name, BTF_ELF_SEC) == 0) {
			btf_data = FUNC10(scn, 0);
			if (!btf_data) {
				FUNC19("failed to get section(%d, %s) data from %s\n",
					   idx, name, path);
				goto done;
			}
			continue;
		} else if (btf_ext && FUNC20(name, BTF_EXT_ELF_SEC) == 0) {
			btf_ext_data = FUNC10(scn, 0);
			if (!btf_ext_data) {
				FUNC19("failed to get section(%d, %s) data from %s\n",
					   idx, name, path);
				goto done;
			}
			continue;
		}
	}

	err = 0;

	if (!btf_data) {
		err = -ENOENT;
		goto done;
	}
	btf = FUNC4(btf_data->d_buf, btf_data->d_size);
	if (FUNC1(btf))
		goto done;

	if (btf_ext && btf_ext_data) {
		*btf_ext = FUNC6(btf_ext_data->d_buf,
					btf_ext_data->d_size);
		if (FUNC1(*btf_ext))
			goto done;
	} else if (btf_ext) {
		*btf_ext = NULL;
	}
done:
	if (elf)
		FUNC9(elf);
	FUNC7(fd);

	if (err)
		return FUNC0(err);
	/*
	 * btf is always parsed before btf_ext, so no need to clean up
	 * btf_ext, if btf loading failed
	 */
	if (FUNC1(btf))
		return btf;
	if (btf_ext && FUNC1(*btf_ext)) {
		FUNC3(btf);
		err = FUNC2(*btf_ext);
		return FUNC0(err);
	}
	return btf;
}