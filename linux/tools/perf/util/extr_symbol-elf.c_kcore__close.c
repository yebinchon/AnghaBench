
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcore {int fd; int elf; } ;


 int close (int ) ;
 int elf_end (int ) ;

__attribute__((used)) static void kcore__close(struct kcore *kcore)
{
 elf_end(kcore->elf);
 close(kcore->fd);
}
