
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int ) ;
 int lookup_client ;
 int platform_driver_unregister (int *) ;
 int qmi_debug_dir ;
 int qmi_handle_release (int *) ;
 int qmi_sample_driver ;

__attribute__((used)) static void qmi_sample_exit(void)
{
 qmi_handle_release(&lookup_client);

 platform_driver_unregister(&qmi_sample_driver);

 debugfs_remove(qmi_debug_dir);
}
