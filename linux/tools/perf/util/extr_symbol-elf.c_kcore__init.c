
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcore {int elfclass; int fd; int elf; int ehdr; } ;
typedef int GElf_Ehdr ;


 int ELF_C_WRITE ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int close (int) ;
 int elf_begin (int,int ,int *) ;
 int elf_end (int ) ;
 int gelf_newehdr (int ,int) ;
 int memset (int *,int ,int) ;
 int mkstemp (char*) ;
 int open (char*,int,int) ;
 int unlink (char*) ;

__attribute__((used)) static int kcore__init(struct kcore *kcore, char *filename, int elfclass,
         bool temp)
{
 kcore->elfclass = elfclass;

 if (temp)
  kcore->fd = mkstemp(filename);
 else
  kcore->fd = open(filename, O_WRONLY | O_CREAT | O_EXCL, 0400);
 if (kcore->fd == -1)
  return -1;

 kcore->elf = elf_begin(kcore->fd, ELF_C_WRITE, ((void*)0));
 if (!kcore->elf)
  goto out_close;

 if (!gelf_newehdr(kcore->elf, elfclass))
  goto out_end;

 memset(&kcore->ehdr, 0, sizeof(GElf_Ehdr));

 return 0;

out_end:
 elf_end(kcore->elf);
out_close:
 close(kcore->fd);
 unlink(filename);
 return -1;
}
