
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int section_name; } ;


 char* strchr (char*,char) ;
 char* strdup (int ) ;

__attribute__((used)) static char *__bpf_program__pin_name(struct bpf_program *prog)
{
 char *name, *p;

 name = p = strdup(prog->section_name);
 while ((p = strchr(p, '/')))
  *p = '_';

 return name;
}
