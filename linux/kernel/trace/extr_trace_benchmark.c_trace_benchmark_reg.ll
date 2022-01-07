; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_benchmark.c_trace_benchmark_reg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_benchmark.c_trace_benchmark_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ok_to_run = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"trace benchmark cannot be started via kernel command line\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@benchmark_event_kthread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"event_benchmark\00", align 1
@bm_event_thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"trace benchmark failed to create kernel thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_benchmark_reg() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ok_to_run, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i32 @pr_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @EBUSY, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %19

8:                                                ; preds = %0
  %9 = load i32, i32* @benchmark_event_kthread, align 4
  %10 = call i32 @kthread_run(i32 %9, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* @bm_event_thread, align 4
  %11 = load i32, i32* @bm_event_thread, align 4
  %12 = call i64 @IS_ERR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = call i32 @pr_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* @bm_event_thread, align 4
  %17 = call i32 @PTR_ERR(i32 %16)
  store i32 %17, i32* %1, align 4
  br label %19

18:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %14, %4
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
