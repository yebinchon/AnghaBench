
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct btf_ext {int dummy; } ;
typedef struct btf_ext btf ;
struct TYPE_11__ {int d_size; int d_buf; } ;
struct TYPE_10__ {int e_shstrndx; } ;
struct TYPE_9__ {int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef TYPE_3__ Elf_Data ;
typedef int Elf ;


 int BTF_ELF_SEC ;
 int BTF_EXT_ELF_SEC ;
 int ELF_C_READ ;
 int ENOENT ;
 struct btf_ext* ERR_PTR (int) ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 scalar_t__ IS_ERR (struct btf_ext*) ;
 int LIBBPF_ERRNO__FORMAT ;
 int LIBBPF_ERRNO__LIBELF ;
 int O_RDONLY ;
 int PTR_ERR (struct btf_ext*) ;
 int btf__free (struct btf_ext*) ;
 struct btf_ext* btf__new (int ,int ) ;
 int btf_check_endianness (TYPE_2__*) ;
 struct btf_ext* btf_ext__new (int ,int ) ;
 int close (int) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 TYPE_3__* elf_getdata (int *,int ) ;
 int elf_getscn (int *,int ) ;
 int * elf_nextscn (int *,int *) ;
 int elf_rawdata (int ,int *) ;
 char* elf_strptr (int *,int ,int ) ;
 scalar_t__ elf_version (int ) ;
 int errno ;
 int gelf_getehdr (int *,TYPE_2__*) ;
 TYPE_1__* gelf_getshdr (int *,TYPE_1__*) ;
 int open (char const*,int ) ;
 int pr_warning (char*,...) ;
 scalar_t__ strcmp (char*,int ) ;
 int strerror (int) ;

struct btf *btf__parse_elf(const char *path, struct btf_ext **btf_ext)
{
 Elf_Data *btf_data = ((void*)0), *btf_ext_data = ((void*)0);
 int err = 0, fd = -1, idx = 0;
 struct btf *btf = ((void*)0);
 Elf_Scn *scn = ((void*)0);
 Elf *elf = ((void*)0);
 GElf_Ehdr ehdr;

 if (elf_version(EV_CURRENT) == EV_NONE) {
  pr_warning("failed to init libelf for %s\n", path);
  return ERR_PTR(-LIBBPF_ERRNO__LIBELF);
 }

 fd = open(path, O_RDONLY);
 if (fd < 0) {
  err = -errno;
  pr_warning("failed to open %s: %s\n", path, strerror(errno));
  return ERR_PTR(err);
 }

 err = -LIBBPF_ERRNO__FORMAT;

 elf = elf_begin(fd, ELF_C_READ, ((void*)0));
 if (!elf) {
  pr_warning("failed to open %s as ELF file\n", path);
  goto done;
 }
 if (!gelf_getehdr(elf, &ehdr)) {
  pr_warning("failed to get EHDR from %s\n", path);
  goto done;
 }
 if (!btf_check_endianness(&ehdr)) {
  pr_warning("non-native ELF endianness is not supported\n");
  goto done;
 }
 if (!elf_rawdata(elf_getscn(elf, ehdr.e_shstrndx), ((void*)0))) {
  pr_warning("failed to get e_shstrndx from %s\n", path);
  goto done;
 }

 while ((scn = elf_nextscn(elf, scn)) != ((void*)0)) {
  GElf_Shdr sh;
  char *name;

  idx++;
  if (gelf_getshdr(scn, &sh) != &sh) {
   pr_warning("failed to get section(%d) header from %s\n",
       idx, path);
   goto done;
  }
  name = elf_strptr(elf, ehdr.e_shstrndx, sh.sh_name);
  if (!name) {
   pr_warning("failed to get section(%d) name from %s\n",
       idx, path);
   goto done;
  }
  if (strcmp(name, BTF_ELF_SEC) == 0) {
   btf_data = elf_getdata(scn, 0);
   if (!btf_data) {
    pr_warning("failed to get section(%d, %s) data from %s\n",
        idx, name, path);
    goto done;
   }
   continue;
  } else if (btf_ext && strcmp(name, BTF_EXT_ELF_SEC) == 0) {
   btf_ext_data = elf_getdata(scn, 0);
   if (!btf_ext_data) {
    pr_warning("failed to get section(%d, %s) data from %s\n",
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
 btf = btf__new(btf_data->d_buf, btf_data->d_size);
 if (IS_ERR(btf))
  goto done;

 if (btf_ext && btf_ext_data) {
  *btf_ext = btf_ext__new(btf_ext_data->d_buf,
     btf_ext_data->d_size);
  if (IS_ERR(*btf_ext))
   goto done;
 } else if (btf_ext) {
  *btf_ext = ((void*)0);
 }
done:
 if (elf)
  elf_end(elf);
 close(fd);

 if (err)
  return ERR_PTR(err);




 if (IS_ERR(btf))
  return btf;
 if (btf_ext && IS_ERR(*btf_ext)) {
  btf__free(btf);
  err = PTR_ERR(*btf_ext);
  return ERR_PTR(err);
 }
 return btf;
}
