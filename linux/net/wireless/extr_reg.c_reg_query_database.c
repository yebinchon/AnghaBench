
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int alpha2; } ;


 scalar_t__ call_crda (int ) ;
 scalar_t__ query_regdb_file (int ) ;

__attribute__((used)) static bool reg_query_database(struct regulatory_request *request)
{
 if (query_regdb_file(request->alpha2) == 0)
  return 1;

 if (call_crda(request->alpha2) == 0)
  return 1;

 return 0;
}
