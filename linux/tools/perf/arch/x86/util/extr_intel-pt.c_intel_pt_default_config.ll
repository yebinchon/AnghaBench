; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_default_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"tsc\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"caps/mtc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"caps/mtc_periods\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c",mtc,mtc_period=%d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"caps/psb_cyc\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"caps/psb_periods\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c",psb_period=%d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"format/pt\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"format/branch\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c",pt,branch\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"%s default config: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_pmu*)* @intel_pt_default_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_default_config(%struct.perf_pmu* %0) #0 {
  %2 = alloca %struct.perf_pmu*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.perf_pmu* %0, %struct.perf_pmu** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %14 = load i32, i32* %10, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 256, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %16, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load %struct.perf_pmu*, %struct.perf_pmu** %2, align 8
  %27 = call i32 (%struct.perf_pmu*, i8*, i8*, ...) @perf_pmu__scan_file(%struct.perf_pmu* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load %struct.perf_pmu*, %struct.perf_pmu** %2, align 8
  %35 = call i32 (%struct.perf_pmu*, i8*, i8*, ...) @perf_pmu__scan_file(%struct.perf_pmu* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @intel_pt_pick_bit(i32 %42, i32 3)
  store i32 %43, i32* %6, align 4
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 256, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %6, align 4
  %53 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %47, i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %41, %38
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.perf_pmu*, %struct.perf_pmu** %2, align 8
  %61 = call i32 (%struct.perf_pmu*, i8*, i8*, ...) @perf_pmu__scan_file(%struct.perf_pmu* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %67
  %71 = load %struct.perf_pmu*, %struct.perf_pmu** %2, align 8
  %72 = call i32 (%struct.perf_pmu*, i8*, i8*, ...) @perf_pmu__scan_file(%struct.perf_pmu* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @intel_pt_pick_bit(i32 %79, i32 3)
  store i32 %80, i32* %9, align 4
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 256, %86
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* %9, align 4
  %90 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %84, i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %78, %75
  br label %96

96:                                               ; preds = %95, %67, %64
  %97 = load %struct.perf_pmu*, %struct.perf_pmu** %2, align 8
  %98 = call i32 (%struct.perf_pmu*, i8*, i8*, ...) @perf_pmu__scan_file(%struct.perf_pmu* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %12)
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %118

100:                                              ; preds = %96
  %101 = load %struct.perf_pmu*, %struct.perf_pmu** %2, align 8
  %102 = call i32 (%struct.perf_pmu*, i8*, i8*, ...) @perf_pmu__scan_file(%struct.perf_pmu* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %12)
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 256, %110
  %112 = trunc i64 %111 to i32
  %113 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %108, i32 %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %104, %100, %96
  %119 = load %struct.perf_pmu*, %struct.perf_pmu** %2, align 8
  %120 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %123 = call i32 @pr_debug2(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %121, i8* %122)
  %124 = load %struct.perf_pmu*, %struct.perf_pmu** %2, align 8
  %125 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %124, i32 0, i32 0
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %127 = call i32 @intel_pt_parse_terms(i32* %125, i8* %126, i32* %11)
  %128 = load i32, i32* %11, align 4
  ret i32 %128
}

declare dso_local i64 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @perf_pmu__scan_file(%struct.perf_pmu*, i8*, i8*, ...) #1

declare dso_local i32 @intel_pt_pick_bit(i32, i32) #1

declare dso_local i32 @pr_debug2(i8*, i32, i8*) #1

declare dso_local i32 @intel_pt_parse_terms(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
