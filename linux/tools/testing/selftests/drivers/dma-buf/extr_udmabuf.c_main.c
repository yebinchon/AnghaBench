
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udmabuf_create {int memfd; int offset; int size; } ;
typedef void* off_t ;
typedef int create ;


 int F_ADD_SEALS ;
 int F_SEAL_SHRINK ;
 int MFD_ALLOW_SEALING ;
 int NUM_PAGES ;
 int O_RDWR ;
 char* TEST_PREFIX ;
 int UDMABUF_CREATE ;
 int close (int) ;
 int exit (int) ;
 int fcntl (int,int ,int ) ;
 int fprintf (int ,char*,char*) ;
 int ftruncate (int,void*) ;
 int getpagesize () ;
 int ioctl (int,int ,struct udmabuf_create*) ;
 int memfd_create (char*,int ) ;
 int memset (struct udmabuf_create*,int ,int) ;
 int open (char*,int ) ;
 int printf (char*,char*) ;
 int stderr ;

int main(int argc, char *argv[])
{
 struct udmabuf_create create;
 int devfd, memfd, buf, ret;
 off_t size;
 void *mem;

 devfd = open("/dev/udmabuf", O_RDWR);
 if (devfd < 0) {
  printf("%s: [skip,no-udmabuf]\n", TEST_PREFIX);
  exit(77);
 }

 memfd = memfd_create("udmabuf-test", MFD_ALLOW_SEALING);
 if (memfd < 0) {
  printf("%s: [skip,no-memfd]\n", TEST_PREFIX);
  exit(77);
 }

 ret = fcntl(memfd, F_ADD_SEALS, F_SEAL_SHRINK);
 if (ret < 0) {
  printf("%s: [skip,fcntl-add-seals]\n", TEST_PREFIX);
  exit(77);
 }


 size = getpagesize() * NUM_PAGES;
 ret = ftruncate(memfd, size);
 if (ret == -1) {
  printf("%s: [FAIL,memfd-truncate]\n", TEST_PREFIX);
  exit(1);
 }

 memset(&create, 0, sizeof(create));


 create.memfd = memfd;
 create.offset = getpagesize()/2;
 create.size = getpagesize();
 buf = ioctl(devfd, UDMABUF_CREATE, &create);
 if (buf >= 0) {
  printf("%s: [FAIL,test-1]\n", TEST_PREFIX);
  exit(1);
 }


 create.memfd = memfd;
 create.offset = 0;
 create.size = getpagesize()/2;
 buf = ioctl(devfd, UDMABUF_CREATE, &create);
 if (buf >= 0) {
  printf("%s: [FAIL,test-2]\n", TEST_PREFIX);
  exit(1);
 }


 create.memfd = 0;
 create.offset = 0;
 create.size = size;
 buf = ioctl(devfd, UDMABUF_CREATE, &create);
 if (buf >= 0) {
  printf("%s: [FAIL,test-3]\n", TEST_PREFIX);
  exit(1);
 }


 create.memfd = memfd;
 create.offset = 0;
 create.size = size;
 buf = ioctl(devfd, UDMABUF_CREATE, &create);
 if (buf < 0) {
  printf("%s: [FAIL,test-4]\n", TEST_PREFIX);
  exit(1);
 }

 fprintf(stderr, "%s: ok\n", TEST_PREFIX);
 close(buf);
 close(memfd);
 close(devfd);
 return 0;
}
