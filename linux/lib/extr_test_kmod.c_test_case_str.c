
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kmod_test_case { ____Placeholder_kmod_test_case } kmod_test_case ;





__attribute__((used)) static const char *test_case_str(enum kmod_test_case test_case)
{
 switch (test_case) {
 case 129:
  return "TEST_KMOD_DRIVER";
 case 128:
  return "TEST_KMOD_FS_TYPE";
 default:
  return "invalid";
 }
}
