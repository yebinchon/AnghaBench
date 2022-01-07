; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_should_change_schedules.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_should_change_schedules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_gate_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_gate_list*, %struct.sched_gate_list*, i32)* @should_change_schedules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_change_schedules(%struct.sched_gate_list* %0, %struct.sched_gate_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sched_gate_list*, align 8
  %6 = alloca %struct.sched_gate_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sched_gate_list* %0, %struct.sched_gate_list** %5, align 8
  store %struct.sched_gate_list* %1, %struct.sched_gate_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sched_gate_list*, %struct.sched_gate_list** %5, align 8
  %11 = icmp ne %struct.sched_gate_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = load %struct.sched_gate_list*, %struct.sched_gate_list** %5, align 8
  %15 = call i32 @sched_base_time(%struct.sched_gate_list* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @ktime_compare(i32 %16, i32 %17)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %33

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.sched_gate_list*, %struct.sched_gate_list** %6, align 8
  %24 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ktime_add_ns(i32 %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @ktime_compare(i32 %27, i32 %28)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31, %20, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @sched_base_time(%struct.sched_gate_list*) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
