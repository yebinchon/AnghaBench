
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int fgetc (int ) ;
 int fprintf (int ,char*) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int stdin ;

__attribute__((used)) static int ap_is_existing_file(char *pathname)
{

 struct stat stat_info;
 int in_char;

 if (!stat(pathname, &stat_info)) {
  fprintf(stderr,
   "Target path already exists, overwrite? [y|n] ");

  in_char = fgetc(stdin);
  if (in_char == '\n') {
   in_char = fgetc(stdin);
  }

  if (in_char != 'y' && in_char != 'Y') {
   return (-1);
  }
 }


 return (0);
}
