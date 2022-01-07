
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MFD_ALLOW_SEALING ;
 int MFD_CLOEXEC ;
 int close (int) ;
 char* memfd_str ;
 int memset (char*,int,int) ;
 int mfd_assert_new (char*,int ,int) ;
 int mfd_fail_new (char*,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static void test_create(void)
{
 char buf[2048];
 int fd;

 printf("%s CREATE\n", memfd_str);


 mfd_fail_new(((void*)0), 0);


 memset(buf, 0xff, sizeof(buf));
 mfd_fail_new(buf, 0);


 memset(buf, 0xff, sizeof(buf));
 buf[sizeof(buf) - 1] = 0;
 mfd_fail_new(buf, 0);


 fd = mfd_assert_new("", 0, 0);
 close(fd);


 mfd_fail_new("", 0x0100);
 mfd_fail_new("", ~MFD_CLOEXEC);
 mfd_fail_new("", ~MFD_ALLOW_SEALING);
 mfd_fail_new("", ~0);
 mfd_fail_new("", 0x80000000U);


 fd = mfd_assert_new("", 0, MFD_CLOEXEC);
 close(fd);


 fd = mfd_assert_new("", 0, MFD_ALLOW_SEALING);
 close(fd);


 fd = mfd_assert_new("", 0, MFD_ALLOW_SEALING | MFD_CLOEXEC);
 close(fd);
}
