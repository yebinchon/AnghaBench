
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;
 char* skip_spaces (char*) ;
 char* strdup (char*) ;
 char* strim (char*) ;

__attribute__((used)) static int disasm_line__parse(char *line, const char **namep, char **rawp)
{
 char tmp, *name = skip_spaces(line);

 if (name[0] == '\0')
  return -1;

 *rawp = name + 1;

 while ((*rawp)[0] != '\0' && !isspace((*rawp)[0]))
  ++*rawp;

 tmp = (*rawp)[0];
 (*rawp)[0] = '\0';
 *namep = strdup(name);

 if (*namep == ((void*)0))
  goto out;

 (*rawp)[0] = tmp;
 *rawp = strim(*rawp);

 return 0;

out:
 return -1;
}
