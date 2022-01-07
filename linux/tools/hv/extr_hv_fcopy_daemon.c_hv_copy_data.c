
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_do_fcopy {scalar_t__ size; int offset; int data; } ;
typedef scalar_t__ ssize_t ;



 int HV_ERROR_DISK_FULL ;
 int HV_E_FAIL ;
 int LOG_ERR ;
 int errno ;
 int filesize ;
 scalar_t__ pwrite (int ,int ,scalar_t__,int ) ;
 int strerror (int) ;
 int syslog (int ,char*,int ,long,int ) ;
 int target_fd ;

__attribute__((used)) static int hv_copy_data(struct hv_do_fcopy *cpmsg)
{
 ssize_t bytes_written;
 int ret = 0;

 bytes_written = pwrite(target_fd, cpmsg->data, cpmsg->size,
    cpmsg->offset);

 filesize += cpmsg->size;
 if (bytes_written != cpmsg->size) {
  switch (errno) {
  case 128:
   ret = HV_ERROR_DISK_FULL;
   break;
  default:
   ret = HV_E_FAIL;
   break;
  }
  syslog(LOG_ERR, "pwrite failed to write %llu bytes: %ld (%s)",
         filesize, (long)bytes_written, strerror(errno));
 }

 return ret;
}
