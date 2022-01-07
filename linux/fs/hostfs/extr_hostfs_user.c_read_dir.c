
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; unsigned long long d_ino; unsigned int d_type; unsigned long long d_off; } ;
typedef int DIR ;


 struct dirent* readdir (int *) ;
 int strlen (char*) ;

char *read_dir(void *stream, unsigned long long *pos_out,
        unsigned long long *ino_out, int *len_out,
        unsigned int *type_out)
{
 DIR *dir = stream;
 struct dirent *ent;

 ent = readdir(dir);
 if (ent == ((void*)0))
  return ((void*)0);
 *len_out = strlen(ent->d_name);
 *ino_out = ent->d_ino;
 *type_out = ent->d_type;
 *pos_out = ent->d_off;
 return ent->d_name;
}
