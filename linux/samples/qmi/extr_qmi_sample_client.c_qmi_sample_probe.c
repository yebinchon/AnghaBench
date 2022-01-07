
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_qrtr {int sq_node; int sq_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int sock; } ;
struct qmi_sample {TYPE_1__ qmi; void* de_dir; void* de_data; void* de_ping; } ;
struct platform_device {int dev; } ;
typedef int path ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int TEST_DATA_REQ_MAX_MSG_LEN_V01 ;
 int data_fops ;
 void* debugfs_create_dir (char*,int ) ;
 void* debugfs_create_file (char*,int,void*,struct qmi_sample*,int *) ;
 int debugfs_remove (void*) ;
 struct sockaddr_qrtr* dev_get_platdata (int *) ;
 struct qmi_sample* devm_kzalloc (int *,int,int ) ;
 int kernel_connect (int ,struct sockaddr*,int,int ) ;
 int ping_fops ;
 int platform_set_drvdata (struct platform_device*,struct qmi_sample*) ;
 int pr_err (char*) ;
 int qmi_debug_dir ;
 int qmi_handle_init (TYPE_1__*,int ,int *,int ) ;
 int qmi_handle_release (TYPE_1__*) ;
 int qmi_sample_handlers ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static int qmi_sample_probe(struct platform_device *pdev)
{
 struct sockaddr_qrtr *sq;
 struct qmi_sample *sample;
 char path[20];
 int ret;

 sample = devm_kzalloc(&pdev->dev, sizeof(*sample), GFP_KERNEL);
 if (!sample)
  return -ENOMEM;

 ret = qmi_handle_init(&sample->qmi, TEST_DATA_REQ_MAX_MSG_LEN_V01,
         ((void*)0),
         qmi_sample_handlers);
 if (ret < 0)
  return ret;

 sq = dev_get_platdata(&pdev->dev);
 ret = kernel_connect(sample->qmi.sock, (struct sockaddr *)sq,
        sizeof(*sq), 0);
 if (ret < 0) {
  pr_err("failed to connect to remote service port\n");
  goto err_release_qmi_handle;
 }

 snprintf(path, sizeof(path), "%d:%d", sq->sq_node, sq->sq_port);

 sample->de_dir = debugfs_create_dir(path, qmi_debug_dir);
 if (IS_ERR(sample->de_dir)) {
  ret = PTR_ERR(sample->de_dir);
  goto err_release_qmi_handle;
 }

 sample->de_data = debugfs_create_file("data", 0600, sample->de_dir,
           sample, &data_fops);
 if (IS_ERR(sample->de_data)) {
  ret = PTR_ERR(sample->de_data);
  goto err_remove_de_dir;
 }

 sample->de_ping = debugfs_create_file("ping", 0600, sample->de_dir,
           sample, &ping_fops);
 if (IS_ERR(sample->de_ping)) {
  ret = PTR_ERR(sample->de_ping);
  goto err_remove_de_data;
 }

 platform_set_drvdata(pdev, sample);

 return 0;

err_remove_de_data:
 debugfs_remove(sample->de_data);
err_remove_de_dir:
 debugfs_remove(sample->de_dir);
err_release_qmi_handle:
 qmi_handle_release(&sample->qmi);

 return ret;
}
