
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int latest_maj ;
 int latest_min ;
 int latest_rev ;
 int test (int) ;
 int utf8version_is_supported (int,int,int) ;

__attribute__((used)) static void check_supported_versions(void)
{

 test(utf8version_is_supported(7, 0, 0));


 test(utf8version_is_supported(9, 0, 0));


 test(utf8version_is_supported(latest_maj, latest_min, latest_rev));


 test(!utf8version_is_supported(13, 0, 0));
 test(!utf8version_is_supported(0, 0, 0));
 test(!utf8version_is_supported(-1, -1, -1));
}
