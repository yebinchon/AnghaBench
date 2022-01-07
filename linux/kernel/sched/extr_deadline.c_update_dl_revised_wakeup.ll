; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_update_dl_revised_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_update_dl_revised_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32, i32, i32 }
%struct.rq = type { i32 }

@BW_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*, %struct.rq*)* @update_dl_revised_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_dl_revised_wakeup(%struct.sched_dl_entity* %0, %struct.rq* %1) #0 {
  %3 = alloca %struct.sched_dl_entity*, align 8
  %4 = alloca %struct.rq*, align 8
  %5 = alloca i32, align 4
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %3, align 8
  store %struct.rq* %1, %struct.rq** %4, align 8
  %6 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %7 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rq*, %struct.rq** %4, align 8
  %10 = call i32 @rq_clock(%struct.rq* %9)
  %11 = sub nsw i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %13 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rq*, %struct.rq** %4, align 8
  %16 = call i32 @rq_clock(%struct.rq* %15)
  %17 = call i32 @dl_time_before(i32 %14, i32 %16)
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %20 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @BW_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %27 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @rq_clock(%struct.rq*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dl_time_before(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
