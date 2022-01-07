
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_new; } ;


 int PyType_GenericNew ;
 int PyType_Ready (TYPE_1__*) ;
 TYPE_1__ pyrf_thread_map__type ;

__attribute__((used)) static int pyrf_thread_map__setup_types(void)
{
 pyrf_thread_map__type.tp_new = PyType_GenericNew;
 return PyType_Ready(&pyrf_thread_map__type);
}
