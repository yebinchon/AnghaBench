; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_calc_delta_fair.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_calc_delta_fair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_entity = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NICE_0_LOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sched_entity*)* @calc_delta_fair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_delta_fair(i32 %0, %struct.sched_entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sched_entity*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %5 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %6 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NICE_0_LOAD, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* @NICE_0_LOAD, align 8
  %17 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %18 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %17, i32 0, i32 0
  %19 = call i32 @__calc_delta(i32 %15, i64 %16, %struct.TYPE_2__* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__calc_delta(i32, i64, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
