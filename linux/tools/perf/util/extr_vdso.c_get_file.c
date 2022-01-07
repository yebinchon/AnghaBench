
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdso_file {int found; char* temp_file_name; int error; } ;


 int VDSO__MAP_NAME ;
 int close (int) ;
 scalar_t__ find_map (void**,void**,int ) ;
 int free (char*) ;
 char* memdup (void*,size_t) ;
 int mkstemp (char*) ;
 scalar_t__ write (int,char*,size_t) ;

__attribute__((used)) static char *get_file(struct vdso_file *vdso_file)
{
 char *vdso = ((void*)0);
 char *buf = ((void*)0);
 void *start, *end;
 size_t size;
 int fd;

 if (vdso_file->found)
  return vdso_file->temp_file_name;

 if (vdso_file->error || find_map(&start, &end, VDSO__MAP_NAME))
  return ((void*)0);

 size = end - start;

 buf = memdup(start, size);
 if (!buf)
  return ((void*)0);

 fd = mkstemp(vdso_file->temp_file_name);
 if (fd < 0)
  goto out;

 if (size == (size_t) write(fd, buf, size))
  vdso = vdso_file->temp_file_name;

 close(fd);

 out:
 free(buf);

 vdso_file->found = (vdso != ((void*)0));
 vdso_file->error = !vdso_file->found;
 return vdso;
}
