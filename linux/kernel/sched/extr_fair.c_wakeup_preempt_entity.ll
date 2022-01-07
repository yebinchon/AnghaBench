; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_wakeup_preempt_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_wakeup_preempt_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_entity = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_entity*, %struct.sched_entity*)* @wakeup_preempt_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wakeup_preempt_entity(%struct.sched_entity* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sched_entity* %0, %struct.sched_entity** %4, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %5, align 8
  %8 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %9 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %12 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %20 = call i64 @wakeup_gran(%struct.sched_entity* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @wakeup_gran(%struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
