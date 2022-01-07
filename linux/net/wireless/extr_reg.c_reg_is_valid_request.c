
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int alpha2; scalar_t__ processed; } ;


 int alpha2_equal (int ,char const*) ;
 struct regulatory_request* get_last_request () ;

bool reg_is_valid_request(const char *alpha2)
{
 struct regulatory_request *lr = get_last_request();

 if (!lr || lr->processed)
  return 0;

 return alpha2_equal(lr->alpha2, alpha2);
}
