
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int size; int misc; } ;
struct perf_record_header_build_id {TYPE_1__ header; int pid; int build_id; } ;
struct feat_fd {int dummy; } ;
typedef int pid_t ;
typedef int b ;


 int BUILD_ID_SIZE ;
 int NAME_ALIGN ;
 size_t PERF_ALIGN (size_t,int ) ;
 int do_write (struct feat_fd*,struct perf_record_header_build_id*,int) ;
 int memcpy (int *,int *,int ) ;
 int memset (struct perf_record_header_build_id*,int ,int) ;
 int write_padded (struct feat_fd*,char const*,size_t,size_t) ;

__attribute__((used)) static int write_buildid(const char *name, size_t name_len, u8 *build_id,
    pid_t pid, u16 misc, struct feat_fd *fd)
{
 int err;
 struct perf_record_header_build_id b;
 size_t len;

 len = name_len + 1;
 len = PERF_ALIGN(len, NAME_ALIGN);

 memset(&b, 0, sizeof(b));
 memcpy(&b.build_id, build_id, BUILD_ID_SIZE);
 b.pid = pid;
 b.header.misc = misc;
 b.header.size = sizeof(b) + len;

 err = do_write(fd, &b, sizeof(b));
 if (err < 0)
  return err;

 return write_padded(fd, name, name_len + 1, len);
}
