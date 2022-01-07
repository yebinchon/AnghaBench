; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_init_dl_bw.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_init_dl_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dl_bw = type { i32, i64, i32 }

@def_dl_bandwidth = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RUNTIME_INF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_dl_bw(%struct.dl_bw* %0) #0 {
  %2 = alloca %struct.dl_bw*, align 8
  store %struct.dl_bw* %0, %struct.dl_bw** %2, align 8
  %3 = load %struct.dl_bw*, %struct.dl_bw** %2, align 8
  %4 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %3, i32 0, i32 2
  %5 = call i32 @raw_spin_lock_init(i32* %4)
  %6 = call i32 @raw_spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @def_dl_bandwidth, i32 0, i32 0))
  %7 = call i64 (...) @global_rt_runtime()
  %8 = load i64, i64* @RUNTIME_INF, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.dl_bw*, %struct.dl_bw** %2, align 8
  %12 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  br label %19

13:                                               ; preds = %1
  %14 = call i32 (...) @global_rt_period()
  %15 = call i64 (...) @global_rt_runtime()
  %16 = call i32 @to_ratio(i32 %14, i64 %15)
  %17 = load %struct.dl_bw*, %struct.dl_bw** %2, align 8
  %18 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %13, %10
  %20 = call i32 @raw_spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @def_dl_bandwidth, i32 0, i32 0))
  %21 = load %struct.dl_bw*, %struct.dl_bw** %2, align 8
  %22 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  ret void
}

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @global_rt_runtime(...) #1

declare dso_local i32 @to_ratio(i32, i64) #1

declare dso_local i32 @global_rt_period(...) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
