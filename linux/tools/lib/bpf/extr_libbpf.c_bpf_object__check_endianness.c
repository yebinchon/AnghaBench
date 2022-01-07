
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* e_ident; } ;
struct TYPE_4__ {TYPE_1__ ehdr; } ;
struct bpf_object {TYPE_2__ efile; } ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 scalar_t__ ELFDATA2MSB ;
 int LIBBPF_ERRNO__ENDIAN ;
 int pr_warning (char*) ;

__attribute__((used)) static int bpf_object__check_endianness(struct bpf_object *obj)
{

 if (obj->efile.ehdr.e_ident[EI_DATA] == ELFDATA2LSB)
  return 0;






 pr_warning("endianness mismatch.\n");
 return -LIBBPF_ERRNO__ENDIAN;
}
