
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {char* section_name; } ;


 int ENOMEM ;
 char const* ERR_PTR (int ) ;
 int pr_warning (char*) ;
 char* strdup (char const*) ;

const char *bpf_program__title(const struct bpf_program *prog, bool needs_copy)
{
 const char *title;

 title = prog->section_name;
 if (needs_copy) {
  title = strdup(title);
  if (!title) {
   pr_warning("failed to strdup program title\n");
   return ERR_PTR(-ENOMEM);
  }
 }

 return title;
}
