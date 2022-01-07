; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_val_config_term.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_val_config_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid %s for %s. Valid values are: %s\0A\00", align 1
@INTEL_PT_PMU_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_pmu*, i8*, i8*, i8*, i32)* @intel_pt_val_config_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_val_config_term(%struct.perf_pmu* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_pmu*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.perf_pmu* %0, %struct.perf_pmu** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.perf_pmu*, %struct.perf_pmu** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 (%struct.perf_pmu*, i8*, i8*, ...) @perf_pmu__scan_file(%struct.perf_pmu* %17, i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %14)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i64 0, i64* %14, align 8
  br label %22

22:                                               ; preds = %21, %5
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.perf_pmu*, %struct.perf_pmu** %7, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 (%struct.perf_pmu*, i8*, i8*, ...) @perf_pmu__scan_file(%struct.perf_pmu* %26, i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i64 0, i64* %14, align 8
  br label %34

34:                                               ; preds = %33, %30, %25, %22
  %35 = load i64, i64* %14, align 8
  %36 = or i64 %35, 1
  store i64 %36, i64* %14, align 8
  %37 = load %struct.perf_pmu*, %struct.perf_pmu** %7, align 8
  %38 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %37, i32 0, i32 0
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @perf_pmu__format_bits(i32* %38, i8* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %57, %34
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i1 [ false, %44 ], [ %51, %47 ]
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = load i32, i32* %15, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %44

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 63
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %76

67:                                               ; preds = %60
  %68 = load i64, i64* %14, align 8
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 1, %69
  %71 = sext i32 %70 to i64
  %72 = and i64 %68, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %86

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %66
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %78 = load i64, i64* %14, align 8
  %79 = call i32 @intel_pt_valid_str(i8* %77, i32 256, i64 %78)
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* @INTEL_PT_PMU_NAME, align 4
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %80, i32 %81, i8* %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %76, %74
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @perf_pmu__scan_file(%struct.perf_pmu*, i8*, i8*, ...) #1

declare dso_local i32 @perf_pmu__format_bits(i32*, i8*) #1

declare dso_local i32 @intel_pt_valid_str(i8*, i32, i64) #1

declare dso_local i32 @pr_err(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
