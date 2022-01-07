
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;
typedef enum kernel_load_data_id { ____Placeholder_kernel_load_data_id } kernel_load_data_id ;


 int loadpin_read_file (int *,int) ;

__attribute__((used)) static int loadpin_load_data(enum kernel_load_data_id id)
{
 return loadpin_read_file(((void*)0), (enum kernel_read_file_id) id);
}
