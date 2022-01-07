; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_perturbation.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_perturbation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfq_sched_data = type { i64, i32, i64, i32, i32, %struct.Qdisc* }
%struct.Qdisc = type { i32 }
%struct.timer_list = type { i32 }

@perturb_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@q = common dso_local global %struct.sfq_sched_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sfq_perturbation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfq_perturbation(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sfq_sched_data*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %8 = ptrtoint %struct.sfq_sched_data* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @perturb_timer, align 4
  %11 = call %struct.sfq_sched_data* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.sfq_sched_data* %11, %struct.sfq_sched_data** %3, align 8
  %12 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %13 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %12, i32 0, i32 5
  %14 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  store %struct.Qdisc* %14, %struct.Qdisc** %4, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %16 = call i32 @qdisc_root_sleeping(%struct.Qdisc* %15)
  %17 = call i32* @qdisc_lock(i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = call i32 @get_random_bytes(i32* %6, i32 4)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %23 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %25 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %30 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %35 = call i32 @sfq_rehash(%struct.Qdisc* %34)
  br label %36

36:                                               ; preds = %33, %28, %1
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %40 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %45 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %44, i32 0, i32 1
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %48 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @mod_timer(i32* %45, i64 %50)
  br label %52

52:                                               ; preds = %43, %36
  ret void
}

declare dso_local %struct.sfq_sched_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32* @qdisc_lock(i32) #1

declare dso_local i32 @qdisc_root_sleeping(%struct.Qdisc*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sfq_rehash(%struct.Qdisc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
