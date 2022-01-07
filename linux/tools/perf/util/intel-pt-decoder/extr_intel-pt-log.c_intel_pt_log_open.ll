; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-log.c_intel_pt_log_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-log.c_intel_pt_log_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intel_pt_enable_logging = common dso_local global i32 0, align 4
@f = common dso_local global i64 0, align 8
@log_name = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_pt_log_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_log_open() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @intel_pt_enable_logging, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %22

5:                                                ; preds = %0
  %6 = load i64, i64* @f, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 0, i32* %1, align 4
  br label %22

9:                                                ; preds = %5
  %10 = load i32*, i32** @log_name, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %22

15:                                               ; preds = %9
  %16 = load i32*, i32** @log_name, align 8
  %17 = call i64 @fopen(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* @f, align 8
  %18 = load i64, i64* @f, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* @intel_pt_enable_logging, align 4
  store i32 -1, i32* %1, align 4
  br label %22

21:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %20, %14, %8, %4
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i64 @fopen(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
