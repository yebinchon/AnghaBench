
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int getline (char**,size_t*,int *) ;
 int memcpy (char*,char*,size_t) ;
 int * popen (char*,char*) ;

int extract_build_id(char *build_id, size_t size)
{
 FILE *fp;
 char *line = ((void*)0);
 size_t len = 0;

 fp = popen("readelf -n ./urandom_read | grep 'Build ID'", "r");
 if (fp == ((void*)0))
  return -1;

 if (getline(&line, &len, fp) == -1)
  goto err;
 fclose(fp);

 if (len > size)
  len = size;
 memcpy(build_id, line, len);
 build_id[len] = '\0';
 return 0;
err:
 fclose(fp);
 return -1;
}
