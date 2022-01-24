#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct bpf_map_data {size_t elf_offset; int /*<<< orphan*/  def; int /*<<< orphan*/  name; } ;
struct bpf_load_map_def {int dummy; } ;
struct TYPE_11__ {int d_size; scalar_t__ d_buf; } ;
struct TYPE_10__ {int st_shndx; size_t st_value; int /*<<< orphan*/  st_name; } ;
typedef  TYPE_1__ GElf_Sym ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_2__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int EFBIG ; 
 int EINVAL ; 
 int MAX_MAPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  cmp_symbols ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct bpf_load_map_def*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 char* FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct bpf_map_data *maps, int maps_shndx,
				 Elf *elf, Elf_Data *symbols, int strtabidx)
{
	int map_sz_elf, map_sz_copy;
	bool validate_zero = false;
	Elf_Data *data_maps;
	int i, nr_maps;
	GElf_Sym *sym;
	Elf_Scn *scn;
	int copy_sz;

	if (maps_shndx < 0)
		return -EINVAL;
	if (!symbols)
		return -EINVAL;

	/* Get data for maps section via elf index */
	scn = FUNC3(elf, maps_shndx);
	if (scn)
		data_maps = FUNC2(scn, NULL);
	if (!scn || !data_maps) {
		FUNC9("Failed to get Elf_Data from maps section %d\n",
		       maps_shndx);
		return -EINVAL;
	}

	/* For each map get corrosponding symbol table entry */
	sym = FUNC1(MAX_MAPS+1, sizeof(GElf_Sym));
	for (i = 0, nr_maps = 0; i < symbols->d_size / sizeof(GElf_Sym); i++) {
		FUNC0(nr_maps < MAX_MAPS+1);
		if (!FUNC6(symbols, i, &sym[nr_maps]))
			continue;
		if (sym[nr_maps].st_shndx != maps_shndx)
			continue;
		/* Only increment iif maps section */
		nr_maps++;
	}

	/* Align to map_fd[] order, via sort on offset in sym.st_value */
	FUNC10(sym, nr_maps, sizeof(GElf_Sym), cmp_symbols);

	/* Keeping compatible with ELF maps section changes
	 * ------------------------------------------------
	 * The program size of struct bpf_load_map_def is known by loader
	 * code, but struct stored in ELF file can be different.
	 *
	 * Unfortunately sym[i].st_size is zero.  To calculate the
	 * struct size stored in the ELF file, assume all struct have
	 * the same size, and simply divide with number of map
	 * symbols.
	 */
	map_sz_elf = data_maps->d_size / nr_maps;
	map_sz_copy = sizeof(struct bpf_load_map_def);
	if (map_sz_elf < map_sz_copy) {
		/*
		 * Backward compat, loading older ELF file with
		 * smaller struct, keeping remaining bytes zero.
		 */
		map_sz_copy = map_sz_elf;
	} else if (map_sz_elf > map_sz_copy) {
		/*
		 * Forward compat, loading newer ELF file with larger
		 * struct with unknown features. Assume zero means
		 * feature not used.  Thus, validate rest of struct
		 * data is zero.
		 */
		validate_zero = true;
	}

	/* Memcpy relevant part of ELF maps data to loader maps */
	for (i = 0; i < nr_maps; i++) {
		struct bpf_load_map_def *def;
		unsigned char *addr, *end;
		const char *map_name;
		size_t offset;

		map_name = FUNC4(elf, strtabidx, sym[i].st_name);
		maps[i].name = FUNC11(map_name);
		if (!maps[i].name) {
			FUNC9("strdup(%s): %s(%d)\n", map_name,
			       FUNC12(errno), errno);
			FUNC5(sym);
			return -errno;
		}

		/* Symbol value is offset into ELF maps section data area */
		offset = sym[i].st_value;
		def = (struct bpf_load_map_def *)(data_maps->d_buf + offset);
		maps[i].elf_offset = offset;
		FUNC8(&maps[i].def, 0, sizeof(struct bpf_load_map_def));
		FUNC7(&maps[i].def, def, map_sz_copy);

		/* Verify no newer features were requested */
		if (validate_zero) {
			addr = (unsigned char *) def + map_sz_copy;
			end  = (unsigned char *) def + map_sz_elf;
			for (; addr < end; addr++) {
				if (*addr != 0) {
					FUNC5(sym);
					return -EFBIG;
				}
			}
		}
	}

	FUNC5(sym);
	return nr_maps;
}