; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_should_restart_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_should_restart_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_gate_list = type { i32, i32 }
%struct.sched_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_gate_list*, %struct.sched_entry*)* @should_restart_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_restart_cycle(%struct.sched_gate_list* %0, %struct.sched_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sched_gate_list*, align 8
  %5 = alloca %struct.sched_entry*, align 8
  store %struct.sched_gate_list* %0, %struct.sched_gate_list** %4, align 8
  store %struct.sched_entry* %1, %struct.sched_entry** %5, align 8
  %6 = load %struct.sched_entry*, %struct.sched_entry** %5, align 8
  %7 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %6, i32 0, i32 1
  %8 = load %struct.sched_gate_list*, %struct.sched_gate_list** %4, align 8
  %9 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %8, i32 0, i32 1
  %10 = call i64 @list_is_last(i32* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.sched_entry*, %struct.sched_entry** %5, align 8
  %15 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sched_gate_list*, %struct.sched_gate_list** %4, align 8
  %18 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ktime_compare(i32 %16, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @list_is_last(i32*, i32*) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
