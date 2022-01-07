; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_pidns_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_pidns_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type { i32 }
%struct.pid_namespace = type { %struct.pid_namespace* }
%struct.TYPE_3__ = type { %struct.pid_namespace* }
%struct.TYPE_4__ = type { %struct.ns_common }

@current = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ns_common* (%struct.ns_common*)* @pidns_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ns_common* @pidns_get_parent(%struct.ns_common* %0) #0 {
  %2 = alloca %struct.ns_common*, align 8
  %3 = alloca %struct.ns_common*, align 8
  %4 = alloca %struct.pid_namespace*, align 8
  %5 = alloca %struct.pid_namespace*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  store %struct.ns_common* %0, %struct.ns_common** %3, align 8
  %7 = load i32, i32* @current, align 4
  %8 = call %struct.pid_namespace* @task_active_pid_ns(i32 %7)
  store %struct.pid_namespace* %8, %struct.pid_namespace** %4, align 8
  %9 = load %struct.ns_common*, %struct.ns_common** %3, align 8
  %10 = call %struct.TYPE_3__* @to_pid_ns(%struct.ns_common* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.pid_namespace*, %struct.pid_namespace** %11, align 8
  store %struct.pid_namespace* %12, %struct.pid_namespace** %6, align 8
  store %struct.pid_namespace* %12, %struct.pid_namespace** %5, align 8
  br label %13

13:                                               ; preds = %25, %1
  %14 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %15 = icmp ne %struct.pid_namespace* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ns_common* @ERR_PTR(i32 %18)
  store %struct.ns_common* %19, %struct.ns_common** %2, align 8
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %22 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %23 = icmp eq %struct.pid_namespace* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %29

25:                                               ; preds = %20
  %26 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %27 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %26, i32 0, i32 0
  %28 = load %struct.pid_namespace*, %struct.pid_namespace** %27, align 8
  store %struct.pid_namespace* %28, %struct.pid_namespace** %6, align 8
  br label %13

29:                                               ; preds = %24
  %30 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %31 = call %struct.TYPE_4__* @get_pid_ns(%struct.pid_namespace* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.ns_common* %32, %struct.ns_common** %2, align 8
  br label %33

33:                                               ; preds = %29, %16
  %34 = load %struct.ns_common*, %struct.ns_common** %2, align 8
  ret %struct.ns_common* %34
}

declare dso_local %struct.pid_namespace* @task_active_pid_ns(i32) #1

declare dso_local %struct.TYPE_3__* @to_pid_ns(%struct.ns_common*) #1

declare dso_local %struct.ns_common* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_4__* @get_pid_ns(%struct.pid_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
