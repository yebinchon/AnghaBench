
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int sample_width; int sample_window; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 TYPE_1__ hwlat_data ;
 void* hwlat_sample_width ;
 void* hwlat_sample_window ;
 struct dentry* tracefs_create_dir (char*,struct dentry*) ;
 void* tracefs_create_file (char*,int,struct dentry*,int *,int *) ;
 int tracefs_remove_recursive (struct dentry*) ;
 struct dentry* tracing_init_dentry () ;
 int width_fops ;
 int window_fops ;

__attribute__((used)) static int init_tracefs(void)
{
 struct dentry *d_tracer;
 struct dentry *top_dir;

 d_tracer = tracing_init_dentry();
 if (IS_ERR(d_tracer))
  return -ENOMEM;

 top_dir = tracefs_create_dir("hwlat_detector", d_tracer);
 if (!top_dir)
  return -ENOMEM;

 hwlat_sample_window = tracefs_create_file("window", 0640,
        top_dir,
        &hwlat_data.sample_window,
        &window_fops);
 if (!hwlat_sample_window)
  goto err;

 hwlat_sample_width = tracefs_create_file("width", 0644,
       top_dir,
       &hwlat_data.sample_width,
       &width_fops);
 if (!hwlat_sample_width)
  goto err;

 return 0;

 err:
 tracefs_remove_recursive(top_dir);
 return -ENOMEM;
}
