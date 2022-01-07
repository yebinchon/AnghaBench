; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_cpuidle_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_cpuidle_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_count = common dso_local global i32 0, align 4
@previous_count = common dso_local global i32********* null, align 8
@current_count = common dso_local global i32********* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuidle_unregister() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %21, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @cpu_count, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = load i32*********, i32********** @previous_count, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32********, i32********* %7, i64 %9
  %11 = load i32********, i32********* %10, align 8
  %12 = bitcast i32******** %11 to i32*********
  %13 = call i32 @free(i32********* %12)
  %14 = load i32*********, i32********** @current_count, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32********, i32********* %14, i64 %16
  %18 = load i32********, i32********* %17, align 8
  %19 = bitcast i32******** %18 to i32*********
  %20 = call i32 @free(i32********* %19)
  br label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %2

24:                                               ; preds = %2
  %25 = load i32*********, i32********** @previous_count, align 8
  %26 = call i32 @free(i32********* %25)
  %27 = load i32*********, i32********** @current_count, align 8
  %28 = call i32 @free(i32********* %27)
  ret void
}

declare dso_local i32 @free(i32*********) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
