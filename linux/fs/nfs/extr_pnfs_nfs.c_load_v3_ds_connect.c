
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;
 int * get_v3_ds_connect ;
 int nfs3_set_ds_client ;
 int * symbol_request (int ) ;

__attribute__((used)) static bool load_v3_ds_connect(void)
{
 if (!get_v3_ds_connect) {
  get_v3_ds_connect = symbol_request(nfs3_set_ds_client);
  WARN_ON_ONCE(!get_v3_ds_connect);
 }

 return(get_v3_ds_connect != ((void*)0));
}
