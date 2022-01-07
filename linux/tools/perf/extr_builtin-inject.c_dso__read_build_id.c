
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int has_build_id; int build_id; int long_name; } ;


 scalar_t__ filename__read_build_id (int ,int ,int) ;

__attribute__((used)) static int dso__read_build_id(struct dso *dso)
{
 if (dso->has_build_id)
  return 0;

 if (filename__read_build_id(dso->long_name, dso->build_id,
        sizeof(dso->build_id)) > 0) {
  dso->has_build_id = 1;
  return 0;
 }

 return -1;
}
