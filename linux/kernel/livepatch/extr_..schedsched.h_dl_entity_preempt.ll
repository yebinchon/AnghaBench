; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_..schedsched.h_dl_entity_preempt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_..schedsched.h_dl_entity_preempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_dl_entity*, %struct.sched_dl_entity*)* @dl_entity_preempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dl_entity_preempt(%struct.sched_dl_entity* %0, %struct.sched_dl_entity* %1) #0 {
  %3 = alloca %struct.sched_dl_entity*, align 8
  %4 = alloca %struct.sched_dl_entity*, align 8
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %3, align 8
  store %struct.sched_dl_entity* %1, %struct.sched_dl_entity** %4, align 8
  %5 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %6 = call i64 @dl_entity_is_special(%struct.sched_dl_entity* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %10 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %13 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @dl_time_before(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %8, %2
  %18 = phi i1 [ true, %2 ], [ %16, %8 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @dl_entity_is_special(%struct.sched_dl_entity*) #1

declare dso_local i64 @dl_time_before(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
