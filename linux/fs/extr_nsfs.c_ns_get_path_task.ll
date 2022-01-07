; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_nsfs.c_ns_get_path_task.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_nsfs.c_ns_get_path_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type { i32 }
%struct.ns_get_path_task_args = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ns_common* (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ns_common* (i8*)* @ns_get_path_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ns_common* @ns_get_path_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ns_get_path_task_args*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ns_get_path_task_args*
  store %struct.ns_get_path_task_args* %5, %struct.ns_get_path_task_args** %3, align 8
  %6 = load %struct.ns_get_path_task_args*, %struct.ns_get_path_task_args** %3, align 8
  %7 = getelementptr inbounds %struct.ns_get_path_task_args, %struct.ns_get_path_task_args* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ns_common* (i32)*, %struct.ns_common* (i32)** %9, align 8
  %11 = load %struct.ns_get_path_task_args*, %struct.ns_get_path_task_args** %3, align 8
  %12 = getelementptr inbounds %struct.ns_get_path_task_args, %struct.ns_get_path_task_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ns_common* %10(i32 %13)
  ret %struct.ns_common* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
