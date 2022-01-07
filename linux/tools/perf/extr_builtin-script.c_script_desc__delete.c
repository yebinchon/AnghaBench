
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_desc {int args; int half_liner; int name; } ;


 int free (struct script_desc*) ;
 int zfree (int *) ;

__attribute__((used)) static void script_desc__delete(struct script_desc *s)
{
 zfree(&s->name);
 zfree(&s->half_liner);
 zfree(&s->args);
 free(s);
}
