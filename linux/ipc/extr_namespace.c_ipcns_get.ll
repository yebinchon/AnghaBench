; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_namespace.c_ipcns_get.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_namespace.c_ipcns_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type { i32 }
%struct.task_struct = type { %struct.nsproxy* }
%struct.nsproxy = type { i32 }
%struct.ipc_namespace = type { %struct.ns_common }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ns_common* (%struct.task_struct*)* @ipcns_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ns_common* @ipcns_get(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.ipc_namespace*, align 8
  %4 = alloca %struct.nsproxy*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store %struct.ipc_namespace* null, %struct.ipc_namespace** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = call i32 @task_lock(%struct.task_struct* %5)
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  store %struct.nsproxy* %9, %struct.nsproxy** %4, align 8
  %10 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %11 = icmp ne %struct.nsproxy* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %14 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ipc_namespace* @get_ipc_ns(i32 %15)
  store %struct.ipc_namespace* %16, %struct.ipc_namespace** %3, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %19 = call i32 @task_unlock(%struct.task_struct* %18)
  %20 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %21 = icmp ne %struct.ipc_namespace* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.ipc_namespace*, %struct.ipc_namespace** %3, align 8
  %24 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %23, i32 0, i32 0
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi %struct.ns_common* [ %24, %22 ], [ null, %25 ]
  ret %struct.ns_common* %27
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local %struct.ipc_namespace* @get_ipc_ns(i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
