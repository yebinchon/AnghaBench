
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcore {int fd; scalar_t__ elfclass; int elf; int ehdr; } ;
typedef int GElf_Ehdr ;


 scalar_t__ ELFCLASSNONE ;
 int ELF_C_READ ;
 int O_RDONLY ;
 int close (int) ;
 int elf_begin (int,int ,int *) ;
 int elf_end (int ) ;
 scalar_t__ gelf_getclass (int ) ;
 int * gelf_getehdr (int ,int *) ;
 int open (char const*,int ) ;

__attribute__((used)) static int kcore__open(struct kcore *kcore, const char *filename)
{
 GElf_Ehdr *ehdr;

 kcore->fd = open(filename, O_RDONLY);
 if (kcore->fd == -1)
  return -1;

 kcore->elf = elf_begin(kcore->fd, ELF_C_READ, ((void*)0));
 if (!kcore->elf)
  goto out_close;

 kcore->elfclass = gelf_getclass(kcore->elf);
 if (kcore->elfclass == ELFCLASSNONE)
  goto out_end;

 ehdr = gelf_getehdr(kcore->elf, &kcore->ehdr);
 if (!ehdr)
  goto out_end;

 return 0;

out_end:
 elf_end(kcore->elf);
out_close:
 close(kcore->fd);
 return -1;
}
