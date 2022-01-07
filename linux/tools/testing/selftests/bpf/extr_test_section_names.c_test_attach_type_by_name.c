
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rc; int attach_type; } ;
struct sec_name_test {int sec_name; TYPE_1__ expected_attach; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int libbpf_attach_type_by_name (int ,int*) ;
 int warnx (char*,int,int ) ;

__attribute__((used)) static int test_attach_type_by_name(const struct sec_name_test *test)
{
 enum bpf_attach_type attach_type;
 int rc;

 rc = libbpf_attach_type_by_name(test->sec_name, &attach_type);

 if (rc != test->expected_attach.rc) {
  warnx("attach: unexpected rc=%d for %s", rc, test->sec_name);
  return -1;
 }

 if (rc)
  return 0;

 if (attach_type != test->expected_attach.attach_type) {
  warnx("attach: unexpected attach_type=%d for %s", attach_type,
        test->sec_name);
  return -1;
 }

 return 0;
}
