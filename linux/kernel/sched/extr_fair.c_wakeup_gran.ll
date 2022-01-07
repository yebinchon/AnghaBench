; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_wakeup_gran.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_wakeup_gran.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_entity = type { i32 }

@sysctl_sched_wakeup_granularity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sched_entity*)* @wakeup_gran to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wakeup_gran(%struct.sched_entity* %0) #0 {
  %2 = alloca %struct.sched_entity*, align 8
  %3 = alloca i64, align 8
  store %struct.sched_entity* %0, %struct.sched_entity** %2, align 8
  %4 = load i64, i64* @sysctl_sched_wakeup_granularity, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.sched_entity*, %struct.sched_entity** %2, align 8
  %7 = call i64 @calc_delta_fair(i64 %5, %struct.sched_entity* %6)
  ret i64 %7
}

declare dso_local i64 @calc_delta_fair(i64, %struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
