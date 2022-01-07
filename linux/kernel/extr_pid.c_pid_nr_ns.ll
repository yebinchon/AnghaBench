; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c_pid_nr_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c_pid_nr_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i64, %struct.upid* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pid_nr_ns(%struct.pid* %0, %struct.pid_namespace* %1) #0 {
  %3 = alloca %struct.pid*, align 8
  %4 = alloca %struct.pid_namespace*, align 8
  %5 = alloca %struct.upid*, align 8
  %6 = alloca i32, align 4
  store %struct.pid* %0, %struct.pid** %3, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.pid*, %struct.pid** %3, align 8
  %8 = icmp ne %struct.pid* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %11 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pid*, %struct.pid** %3, align 8
  %14 = getelementptr inbounds %struct.pid, %struct.pid* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = load %struct.pid*, %struct.pid** %3, align 8
  %19 = getelementptr inbounds %struct.pid, %struct.pid* %18, i32 0, i32 1
  %20 = load %struct.upid*, %struct.upid** %19, align 8
  %21 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %22 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.upid, %struct.upid* %20, i64 %23
  store %struct.upid* %24, %struct.upid** %5, align 8
  %25 = load %struct.upid*, %struct.upid** %5, align 8
  %26 = getelementptr inbounds %struct.upid, %struct.upid* %25, i32 0, i32 1
  %27 = load %struct.pid_namespace*, %struct.pid_namespace** %26, align 8
  %28 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %29 = icmp eq %struct.pid_namespace* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.upid*, %struct.upid** %5, align 8
  %32 = getelementptr inbounds %struct.upid, %struct.upid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %17
  br label %35

35:                                               ; preds = %34, %9, %2
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
