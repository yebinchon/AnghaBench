; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_benchmark.c_trace_benchmark_unreg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_benchmark.c_trace_benchmark_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bm_event_thread = common dso_local global i32* null, align 8
@bm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"START\00", align 1
@bm_total = common dso_local global i64 0, align 8
@bm_totalsq = common dso_local global i64 0, align 8
@bm_last = common dso_local global i64 0, align 8
@bm_max = common dso_local global i64 0, align 8
@bm_min = common dso_local global i64 0, align 8
@bm_cnt = common dso_local global i64 0, align 8
@bm_first = common dso_local global i64 0, align 8
@bm_std = common dso_local global i64 0, align 8
@bm_avg = common dso_local global i64 0, align 8
@bm_stddev = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_benchmark_unreg() #0 {
  %1 = load i32*, i32** @bm_event_thread, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %9

4:                                                ; preds = %0
  %5 = load i32*, i32** @bm_event_thread, align 8
  %6 = call i32 @kthread_stop(i32* %5)
  store i32* null, i32** @bm_event_thread, align 8
  %7 = load i32, i32* @bm_str, align 4
  %8 = call i32 @strcpy(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @bm_total, align 8
  store i64 0, i64* @bm_totalsq, align 8
  store i64 0, i64* @bm_last, align 8
  store i64 0, i64* @bm_max, align 8
  store i64 0, i64* @bm_min, align 8
  store i64 0, i64* @bm_cnt, align 8
  store i64 0, i64* @bm_first, align 8
  store i64 0, i64* @bm_std, align 8
  store i64 0, i64* @bm_avg, align 8
  store i64 0, i64* @bm_stddev, align 8
  br label %9

9:                                                ; preds = %4, %3
  ret void
}

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
