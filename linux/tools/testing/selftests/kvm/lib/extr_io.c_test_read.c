
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int EAGAIN ;
 int EINTR ;
 int TEST_ASSERT (int,char*,size_t,...) ;
 int errno ;
 size_t read (int,char*,size_t) ;

ssize_t test_read(int fd, void *buf, size_t count)
{
 ssize_t rc;
 ssize_t num_read = 0;
 size_t num_left = count;
 char *ptr = buf;




 TEST_ASSERT(count >= 0, "Unexpected count, count: %li", count);

 do {
  rc = read(fd, ptr, num_left);

  switch (rc) {
  case -1:
   TEST_ASSERT(errno == EAGAIN || errno == EINTR,
        "Unexpected read failure,\n"
        "  rc: %zi errno: %i", rc, errno);
   break;

  case 0:
   TEST_ASSERT(0, "Unexpected EOF,\n"
        "  rc: %zi num_read: %zi num_left: %zu",
        rc, num_read, num_left);
   break;

  default:
   TEST_ASSERT(rc > 0, "Unexpected ret from read,\n"
        "  rc: %zi errno: %i", rc, errno);
   num_read += rc;
   num_left -= rc;
   ptr += rc;
   break;
  }
 } while (num_read < count);

 return num_read;
}
