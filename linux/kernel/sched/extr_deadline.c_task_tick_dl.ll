; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_task_tick_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_task_tick_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, i32)* @task_tick_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_tick_dl(%struct.rq* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rq*, %struct.rq** %4, align 8
  %8 = call i32 @update_curr_dl(%struct.rq* %7)
  %9 = load %struct.rq*, %struct.rq** %4, align 8
  %10 = call i32 @rq_clock_pelt(%struct.rq* %9)
  %11 = load %struct.rq*, %struct.rq** %4, align 8
  %12 = call i32 @update_dl_rq_load_avg(i32 %10, %struct.rq* %11, i32 1)
  %13 = load %struct.rq*, %struct.rq** %4, align 8
  %14 = call i64 @hrtick_enabled(%struct.rq* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = load %struct.rq*, %struct.rq** %4, align 8
  %28 = getelementptr inbounds %struct.rq, %struct.rq* %27, i32 0, i32 0
  %29 = call i64 @is_leftmost(%struct.task_struct* %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.rq*, %struct.rq** %4, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %34 = call i32 @start_hrtick_dl(%struct.rq* %32, %struct.task_struct* %33)
  br label %35

35:                                               ; preds = %31, %25, %19, %16, %3
  ret void
}

declare dso_local i32 @update_curr_dl(%struct.rq*) #1

declare dso_local i32 @update_dl_rq_load_avg(i32, %struct.rq*, i32) #1

declare dso_local i32 @rq_clock_pelt(%struct.rq*) #1

declare dso_local i64 @hrtick_enabled(%struct.rq*) #1

declare dso_local i64 @is_leftmost(%struct.task_struct*, i32*) #1

declare dso_local i32 @start_hrtick_dl(%struct.rq*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
