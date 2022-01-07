
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_remove (int ) ;
 int lookup_client ;
 int lookup_ops ;
 int platform_driver_register (int *) ;
 int platform_driver_unregister (int *) ;
 int pr_err (char*) ;
 int qmi_add_lookup (int *,int,int ,int ) ;
 int qmi_debug_dir ;
 int qmi_handle_init (int *,int ,int *,int *) ;
 int qmi_sample_driver ;

__attribute__((used)) static int qmi_sample_init(void)
{
 int ret;

 qmi_debug_dir = debugfs_create_dir("qmi_sample", ((void*)0));
 if (IS_ERR(qmi_debug_dir)) {
  pr_err("failed to create qmi_sample dir\n");
  return PTR_ERR(qmi_debug_dir);
 }

 ret = platform_driver_register(&qmi_sample_driver);
 if (ret)
  goto err_remove_debug_dir;

 ret = qmi_handle_init(&lookup_client, 0, &lookup_ops, ((void*)0));
 if (ret < 0)
  goto err_unregister_driver;

 qmi_add_lookup(&lookup_client, 15, 0, 0);

 return 0;

err_unregister_driver:
 platform_driver_unregister(&qmi_sample_driver);
err_remove_debug_dir:
 debugfs_remove(qmi_debug_dir);

 return ret;
}
