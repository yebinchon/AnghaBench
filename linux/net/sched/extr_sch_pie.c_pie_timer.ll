; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pie_sched_data = type { %struct.TYPE_2__, i32, %struct.Qdisc* }
%struct.TYPE_2__ = type { i64 }
%struct.Qdisc = type { i32 }
%struct.timer_list = type { i32 }

@adapt_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@q = common dso_local global %struct.pie_sched_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pie_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pie_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pie_sched_data*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %7 = ptrtoint %struct.pie_sched_data* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @adapt_timer, align 4
  %10 = call %struct.pie_sched_data* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.pie_sched_data* %10, %struct.pie_sched_data** %3, align 8
  %11 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %12 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %11, i32 0, i32 2
  %13 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  store %struct.Qdisc* %13, %struct.Qdisc** %4, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = call i32 @qdisc_root_sleeping(%struct.Qdisc* %14)
  %16 = call i32* @qdisc_lock(i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %20 = call i32 @calculate_probability(%struct.Qdisc* %19)
  %21 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %28 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %27, i32 0, i32 1
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %31 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %29, %33
  %35 = call i32 @mod_timer(i32* %28, i64 %34)
  br label %36

36:                                               ; preds = %26, %1
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @spin_unlock(i32* %37)
  ret void
}

declare dso_local %struct.pie_sched_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32* @qdisc_lock(i32) #1

declare dso_local i32 @qdisc_root_sleeping(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @calculate_probability(%struct.Qdisc*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
