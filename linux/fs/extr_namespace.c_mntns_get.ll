; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mntns_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mntns_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type { i32 }
%struct.task_struct = type { %struct.nsproxy* }
%struct.nsproxy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ns_common }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ns_common* (%struct.task_struct*)* @mntns_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ns_common* @mntns_get(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.ns_common*, align 8
  %4 = alloca %struct.nsproxy*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store %struct.ns_common* null, %struct.ns_common** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = call i32 @task_lock(%struct.task_struct* %5)
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  store %struct.nsproxy* %9, %struct.nsproxy** %4, align 8
  %10 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %11 = icmp ne %struct.nsproxy* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %14 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ns_common* %16, %struct.ns_common** %3, align 8
  %17 = load %struct.ns_common*, %struct.ns_common** %3, align 8
  %18 = call i32 @to_mnt_ns(%struct.ns_common* %17)
  %19 = call i32 @get_mnt_ns(i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = call i32 @task_unlock(%struct.task_struct* %21)
  %23 = load %struct.ns_common*, %struct.ns_common** %3, align 8
  ret %struct.ns_common* %23
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @get_mnt_ns(i32) #1

declare dso_local i32 @to_mnt_ns(%struct.ns_common*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
