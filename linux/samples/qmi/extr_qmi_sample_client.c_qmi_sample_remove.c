
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_sample {int qmi; int de_dir; int de_data; int de_ping; } ;
struct platform_device {int dummy; } ;


 int debugfs_remove (int ) ;
 struct qmi_sample* platform_get_drvdata (struct platform_device*) ;
 int qmi_handle_release (int *) ;

__attribute__((used)) static int qmi_sample_remove(struct platform_device *pdev)
{
 struct qmi_sample *sample = platform_get_drvdata(pdev);

 debugfs_remove(sample->de_ping);
 debugfs_remove(sample->de_data);
 debugfs_remove(sample->de_dir);

 qmi_handle_release(&sample->qmi);

 return 0;
}
