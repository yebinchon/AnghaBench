
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ st_size; int st_mode; } ;


 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int PROT_WRITE ;
 int S_ISREG (int ) ;
 int close (int) ;
 int fd_map ;
 void* file_end ;
 void* file_map ;
 int * file_ptr ;
 scalar_t__ file_updated ;
 int fprintf (int ,char*,char const*) ;
 int free (void*) ;
 scalar_t__ fstat (int,TYPE_1__*) ;
 void* mmap (int ,scalar_t__,int,int ,int,int ) ;
 int mmap_failed ;
 int open (char const*,int ) ;
 int perror (char const*) ;
 scalar_t__ read (int,void*,scalar_t__) ;
 TYPE_1__ sb ;
 int stderr ;
 void* umalloc (scalar_t__) ;

__attribute__((used)) static void *mmap_file(char const *fname)
{

 fd_map = -1;
 mmap_failed = 1;
 file_map = ((void*)0);
 file_ptr = ((void*)0);
 file_updated = 0;
 sb.st_size = 0;

 fd_map = open(fname, O_RDONLY);
 if (fd_map < 0) {
  perror(fname);
  return ((void*)0);
 }
 if (fstat(fd_map, &sb) < 0) {
  perror(fname);
  goto out;
 }
 if (!S_ISREG(sb.st_mode)) {
  fprintf(stderr, "not a regular file: %s\n", fname);
  goto out;
 }
 file_map = mmap(0, sb.st_size, PROT_READ|PROT_WRITE, MAP_PRIVATE,
   fd_map, 0);
 if (file_map == MAP_FAILED) {
  mmap_failed = 1;
  file_map = umalloc(sb.st_size);
  if (!file_map) {
   perror(fname);
   goto out;
  }
  if (read(fd_map, file_map, sb.st_size) != sb.st_size) {
   perror(fname);
   free(file_map);
   file_map = ((void*)0);
   goto out;
  }
 } else
  mmap_failed = 0;
out:
 close(fd_map);
 fd_map = -1;

 file_end = file_map + sb.st_size;

 return file_map;
}
