
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_desc {int name; } ;


 int strdup (char const*) ;
 struct script_desc* zalloc (int) ;

__attribute__((used)) static struct script_desc *script_desc__new(const char *name)
{
 struct script_desc *s = zalloc(sizeof(*s));

 if (s != ((void*)0) && name)
  s->name = strdup(name);

 return s;
}
