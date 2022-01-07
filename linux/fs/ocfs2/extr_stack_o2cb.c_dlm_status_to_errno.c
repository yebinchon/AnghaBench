
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int ARRAY_SIZE (int*) ;
 int BUG_ON (int) ;
 int* status_map ;

__attribute__((used)) static int dlm_status_to_errno(enum dlm_status status)
{
 BUG_ON(status < 0 || status >= ARRAY_SIZE(status_map));

 return status_map[status];
}
