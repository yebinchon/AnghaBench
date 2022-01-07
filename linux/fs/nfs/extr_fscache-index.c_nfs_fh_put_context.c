
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put_nfs_open_context (void*) ;

__attribute__((used)) static void nfs_fh_put_context(void *cookie_netfs_data, void *context)
{
 if (context)
  put_nfs_open_context(context);
}
