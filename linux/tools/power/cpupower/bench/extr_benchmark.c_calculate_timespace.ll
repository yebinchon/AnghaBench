; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_benchmark.c_calculate_timespace.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_benchmark.c_calculate_timespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i64 }

@GAUGECOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"calibrating load of %lius, please wait...\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"calibrating with %u rounds\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"calibration done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calculate_timespace(i64 %0, %struct.config* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.config* %1, %struct.config** %4, align 8
  %11 = load i32, i32* @GAUGECOUNT, align 4
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.config*, %struct.config** %4, align 8
  %13 = getelementptr inbounds %struct.config, %struct.config* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* %3, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = call i64 (...) @get_time()
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ROUNDS(i32 %21)
  %23 = call i64 (...) @get_time()
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %51, %19
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = mul nsw i64 %32, %34
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = sdiv i64 %35, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = call i64 (...) @get_time()
  store i64 %42, i64* %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ROUNDS(i32 %43)
  %45 = call i64 (...) @get_time()
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub nsw i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.config*, %struct.config** %4, align 8
  %56 = getelementptr inbounds %struct.config, %struct.config* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @get_time(...) #1

declare dso_local i32 @ROUNDS(i32) #1

declare dso_local i32 @dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
