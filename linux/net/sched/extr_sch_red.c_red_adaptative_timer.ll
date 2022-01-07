; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_adaptative_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_adaptative_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.red_sched_data = type { i32, i32, i32, %struct.Qdisc* }
%struct.Qdisc = type { i32 }
%struct.timer_list = type { i32 }

@adapt_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@q = common dso_local global %struct.red_sched_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @red_adaptative_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @red_adaptative_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.red_sched_data*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.red_sched_data*, %struct.red_sched_data** %3, align 8
  %7 = ptrtoint %struct.red_sched_data* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @adapt_timer, align 4
  %10 = call %struct.red_sched_data* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.red_sched_data* %10, %struct.red_sched_data** %3, align 8
  %11 = load %struct.red_sched_data*, %struct.red_sched_data** %3, align 8
  %12 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %11, i32 0, i32 3
  %13 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  store %struct.Qdisc* %13, %struct.Qdisc** %4, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = call i32 @qdisc_root_sleeping(%struct.Qdisc* %14)
  %16 = call i32* @qdisc_lock(i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.red_sched_data*, %struct.red_sched_data** %3, align 8
  %20 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %19, i32 0, i32 2
  %21 = load %struct.red_sched_data*, %struct.red_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %21, i32 0, i32 1
  %23 = call i32 @red_adaptative_algo(i32* %20, i32* %22)
  %24 = load %struct.red_sched_data*, %struct.red_sched_data** %3, align 8
  %25 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %24, i32 0, i32 0
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* @HZ, align 4
  %28 = sdiv i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @mod_timer(i32* %25, i64 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @spin_unlock(i32* %32)
  ret void
}

declare dso_local %struct.red_sched_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32* @qdisc_lock(i32) #1

declare dso_local i32 @qdisc_root_sleeping(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @red_adaptative_algo(i32*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
