
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf {int fd; int ehdr; int elf; int sections; } ;
typedef int Elf_Cmd ;


 int ELF_C_RDWR ;
 int ELF_C_READ_MMAP ;
 int ELF_C_WRITE ;
 int EV_CURRENT ;
 int INIT_LIST_HEAD (int *) ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_RDWR ;
 int WARN_ELF (char*) ;
 int elf_begin (int,int ,int *) ;
 int elf_close (struct elf*) ;
 int elf_version (int ) ;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 int gelf_getehdr (int ,int *) ;
 struct elf* malloc (int) ;
 int memset (struct elf*,int ,int) ;
 int open (char const*,int) ;
 int perror (char*) ;
 scalar_t__ read_relas (struct elf*) ;
 scalar_t__ read_sections (struct elf*) ;
 scalar_t__ read_symbols (struct elf*) ;
 int stderr ;
 char* strerror (int ) ;

struct elf *elf_read(const char *name, int flags)
{
 struct elf *elf;
 Elf_Cmd cmd;

 elf_version(EV_CURRENT);

 elf = malloc(sizeof(*elf));
 if (!elf) {
  perror("malloc");
  return ((void*)0);
 }
 memset(elf, 0, sizeof(*elf));

 INIT_LIST_HEAD(&elf->sections);

 elf->fd = open(name, flags);
 if (elf->fd == -1) {
  fprintf(stderr, "objtool: Can't open '%s': %s\n",
   name, strerror(errno));
  goto err;
 }

 if ((flags & O_ACCMODE) == O_RDONLY)
  cmd = ELF_C_READ_MMAP;
 else if ((flags & O_ACCMODE) == O_RDWR)
  cmd = ELF_C_RDWR;
 else
  cmd = ELF_C_WRITE;

 elf->elf = elf_begin(elf->fd, cmd, ((void*)0));
 if (!elf->elf) {
  WARN_ELF("elf_begin");
  goto err;
 }

 if (!gelf_getehdr(elf->elf, &elf->ehdr)) {
  WARN_ELF("gelf_getehdr");
  goto err;
 }

 if (read_sections(elf))
  goto err;

 if (read_symbols(elf))
  goto err;

 if (read_relas(elf))
  goto err;

 return elf;

err:
 elf_close(elf);
 return ((void*)0);
}
