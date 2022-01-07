; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_last_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_last_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_atom = type { i32 }
%struct.task_desc = type { i32, %struct.sched_atom** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sched_atom* (%struct.task_desc*)* @last_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sched_atom* @last_event(%struct.task_desc* %0) #0 {
  %2 = alloca %struct.sched_atom*, align 8
  %3 = alloca %struct.task_desc*, align 8
  store %struct.task_desc* %0, %struct.task_desc** %3, align 8
  %4 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %5 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.sched_atom* null, %struct.sched_atom** %2, align 8
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %11 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %10, i32 0, i32 1
  %12 = load %struct.sched_atom**, %struct.sched_atom*** %11, align 8
  %13 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %14 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sched_atom*, %struct.sched_atom** %12, i64 %17
  %19 = load %struct.sched_atom*, %struct.sched_atom** %18, align 8
  store %struct.sched_atom* %19, %struct.sched_atom** %2, align 8
  br label %20

20:                                               ; preds = %9, %8
  %21 = load %struct.sched_atom*, %struct.sched_atom** %2, align 8
  ret %struct.sched_atom* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
