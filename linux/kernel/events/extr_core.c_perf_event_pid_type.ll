; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_pid_type.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_pid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.perf_event* }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.task_struct*, i32)* @perf_event_pid_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_pid_type(%struct.perf_event* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %11 = icmp ne %struct.perf_event* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  store %struct.perf_event* %15, %struct.perf_event** %4, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @__task_pid_nr_ns(%struct.task_struct* %17, i32 %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %16
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = call i32 @pid_alive(%struct.task_struct* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %25, %16
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @pid_alive(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
