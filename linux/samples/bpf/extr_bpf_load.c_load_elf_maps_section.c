
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct bpf_map_data {size_t elf_offset; int def; int name; } ;
struct bpf_load_map_def {int dummy; } ;
struct TYPE_11__ {int d_size; scalar_t__ d_buf; } ;
struct TYPE_10__ {int st_shndx; size_t st_value; int st_name; } ;
typedef TYPE_1__ GElf_Sym ;
typedef int Elf_Scn ;
typedef TYPE_2__ Elf_Data ;
typedef int Elf ;


 int EFBIG ;
 int EINVAL ;
 int MAX_MAPS ;
 int assert (int) ;
 TYPE_1__* calloc (int,int) ;
 int cmp_symbols ;
 TYPE_2__* elf_getdata (int *,int *) ;
 int * elf_getscn (int *,int) ;
 char* elf_strptr (int *,int,int ) ;
 int errno ;
 int free (TYPE_1__*) ;
 int gelf_getsym (TYPE_2__*,int,TYPE_1__*) ;
 int memcpy (int *,struct bpf_load_map_def*,int) ;
 int memset (int *,int ,int) ;
 int printf (char*,...) ;
 int qsort (TYPE_1__*,int,int,int ) ;
 int strdup (char const*) ;
 char* strerror (int) ;

__attribute__((used)) static int load_elf_maps_section(struct bpf_map_data *maps, int maps_shndx,
     Elf *elf, Elf_Data *symbols, int strtabidx)
{
 int map_sz_elf, map_sz_copy;
 bool validate_zero = 0;
 Elf_Data *data_maps;
 int i, nr_maps;
 GElf_Sym *sym;
 Elf_Scn *scn;
 int copy_sz;

 if (maps_shndx < 0)
  return -EINVAL;
 if (!symbols)
  return -EINVAL;


 scn = elf_getscn(elf, maps_shndx);
 if (scn)
  data_maps = elf_getdata(scn, ((void*)0));
 if (!scn || !data_maps) {
  printf("Failed to get Elf_Data from maps section %d\n",
         maps_shndx);
  return -EINVAL;
 }


 sym = calloc(MAX_MAPS+1, sizeof(GElf_Sym));
 for (i = 0, nr_maps = 0; i < symbols->d_size / sizeof(GElf_Sym); i++) {
  assert(nr_maps < MAX_MAPS+1);
  if (!gelf_getsym(symbols, i, &sym[nr_maps]))
   continue;
  if (sym[nr_maps].st_shndx != maps_shndx)
   continue;

  nr_maps++;
 }


 qsort(sym, nr_maps, sizeof(GElf_Sym), cmp_symbols);
 map_sz_elf = data_maps->d_size / nr_maps;
 map_sz_copy = sizeof(struct bpf_load_map_def);
 if (map_sz_elf < map_sz_copy) {




  map_sz_copy = map_sz_elf;
 } else if (map_sz_elf > map_sz_copy) {






  validate_zero = 1;
 }


 for (i = 0; i < nr_maps; i++) {
  struct bpf_load_map_def *def;
  unsigned char *addr, *end;
  const char *map_name;
  size_t offset;

  map_name = elf_strptr(elf, strtabidx, sym[i].st_name);
  maps[i].name = strdup(map_name);
  if (!maps[i].name) {
   printf("strdup(%s): %s(%d)\n", map_name,
          strerror(errno), errno);
   free(sym);
   return -errno;
  }


  offset = sym[i].st_value;
  def = (struct bpf_load_map_def *)(data_maps->d_buf + offset);
  maps[i].elf_offset = offset;
  memset(&maps[i].def, 0, sizeof(struct bpf_load_map_def));
  memcpy(&maps[i].def, def, map_sz_copy);


  if (validate_zero) {
   addr = (unsigned char *) def + map_sz_copy;
   end = (unsigned char *) def + map_sz_elf;
   for (; addr < end; addr++) {
    if (*addr != 0) {
     free(sym);
     return -EFBIG;
    }
   }
  }
 }

 free(sym);
 return nr_maps;
}
