; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_init_dl_rq_bw_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_init_dl_rq_bw_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_rq = type { i32, i32 }

@RUNTIME_INF = common dso_local global i64 0, align 8
@RATIO_SHIFT = common dso_local global i32 0, align 4
@BW_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_dl_rq_bw_ratio(%struct.dl_rq* %0) #0 {
  %2 = alloca %struct.dl_rq*, align 8
  store %struct.dl_rq* %0, %struct.dl_rq** %2, align 8
  %3 = call i64 (...) @global_rt_runtime()
  %4 = load i64, i64* @RUNTIME_INF, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* @RATIO_SHIFT, align 4
  %8 = shl i32 1, %7
  %9 = load %struct.dl_rq*, %struct.dl_rq** %2, align 8
  %10 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @BW_SHIFT, align 4
  %12 = shl i32 1, %11
  %13 = load %struct.dl_rq*, %struct.dl_rq** %2, align 8
  %14 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %30

15:                                               ; preds = %1
  %16 = call i64 (...) @global_rt_runtime()
  %17 = call i64 (...) @global_rt_period()
  %18 = call i32 @to_ratio(i64 %16, i64 %17)
  %19 = load i32, i32* @BW_SHIFT, align 4
  %20 = load i32, i32* @RATIO_SHIFT, align 4
  %21 = sub nsw i32 %19, %20
  %22 = ashr i32 %18, %21
  %23 = load %struct.dl_rq*, %struct.dl_rq** %2, align 8
  %24 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i64 (...) @global_rt_period()
  %26 = call i64 (...) @global_rt_runtime()
  %27 = call i32 @to_ratio(i64 %25, i64 %26)
  %28 = load %struct.dl_rq*, %struct.dl_rq** %2, align 8
  %29 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %15, %6
  ret void
}

declare dso_local i64 @global_rt_runtime(...) #1

declare dso_local i32 @to_ratio(i64, i64) #1

declare dso_local i64 @global_rt_period(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
