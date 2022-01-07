
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_info {int size; int hdr; } ;


 int release_file (int ,int ) ;

__attribute__((used)) static void parse_elf_finish(struct elf_info *info)
{
 release_file(info->hdr, info->size);
}
