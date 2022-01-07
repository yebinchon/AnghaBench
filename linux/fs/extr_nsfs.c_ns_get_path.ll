; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_nsfs.c_ns_get_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_nsfs.c_ns_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.task_struct = type { i32 }
%struct.proc_ns_operations = type { i32 }
%struct.ns_get_path_task_args = type { %struct.task_struct*, %struct.proc_ns_operations* }

@ns_get_path_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ns_get_path(%struct.path* %0, %struct.task_struct* %1, %struct.proc_ns_operations* %2) #0 {
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.proc_ns_operations*, align 8
  %7 = alloca %struct.ns_get_path_task_args, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.proc_ns_operations* %2, %struct.proc_ns_operations** %6, align 8
  %8 = getelementptr inbounds %struct.ns_get_path_task_args, %struct.ns_get_path_task_args* %7, i32 0, i32 0
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  store %struct.task_struct* %9, %struct.task_struct** %8, align 8
  %10 = getelementptr inbounds %struct.ns_get_path_task_args, %struct.ns_get_path_task_args* %7, i32 0, i32 1
  %11 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %6, align 8
  store %struct.proc_ns_operations* %11, %struct.proc_ns_operations** %10, align 8
  %12 = load %struct.path*, %struct.path** %4, align 8
  %13 = load i32, i32* @ns_get_path_task, align 4
  %14 = call i8* @ns_get_path_cb(%struct.path* %12, i32 %13, %struct.ns_get_path_task_args* %7)
  ret i8* %14
}

declare dso_local i8* @ns_get_path_cb(%struct.path*, i32, %struct.ns_get_path_task_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
