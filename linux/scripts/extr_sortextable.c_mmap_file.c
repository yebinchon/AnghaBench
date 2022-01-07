
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_size; int st_mode; } ;


 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int S_ISREG (int ) ;
 int fail_file () ;
 scalar_t__ fd_map ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ fstat (scalar_t__,TYPE_1__*) ;
 void* mmap (int ,int ,int,int ,scalar_t__,int ) ;
 int mmap_failed ;
 scalar_t__ open (char const*,int ) ;
 int perror (char const*) ;
 TYPE_1__ sb ;
 int stderr ;

__attribute__((used)) static void *mmap_file(char const *fname)
{
 void *addr;

 fd_map = open(fname, O_RDWR);
 if (fd_map < 0 || fstat(fd_map, &sb) < 0) {
  perror(fname);
  fail_file();
 }
 if (!S_ISREG(sb.st_mode)) {
  fprintf(stderr, "not a regular file: %s\n", fname);
  fail_file();
 }
 addr = mmap(0, sb.st_size, PROT_READ|PROT_WRITE, MAP_SHARED,
      fd_map, 0);
 if (addr == MAP_FAILED) {
  mmap_failed = 1;
  fprintf(stderr, "Could not mmap file: %s\n", fname);
  fail_file();
 }
 return addr;
}
