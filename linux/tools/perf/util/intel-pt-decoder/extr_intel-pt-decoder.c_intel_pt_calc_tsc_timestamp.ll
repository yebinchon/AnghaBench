; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_calc_tsc_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_calc_tsc_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Suppressing backwards timestamp\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Wraparound timestamp\00", align 1
@INTEL_PT_CYC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Setting timestamp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_decoder*)* @intel_pt_calc_tsc_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_calc_tsc_timestamp(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  %3 = alloca i64, align 8
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %2, align 8
  %4 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %5 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %7 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %6, i32 0, i32 10
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %16 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @intel_pt_8b_tsc(i32 %14, i64 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %21 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %20, i32 0, i32 8
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %3, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %25 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %27 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %26, i32 0, i32 10
  store i64 0, i64* %27, align 8
  %28 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %29 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  br label %97

30:                                               ; preds = %1
  %31 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %32 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %30
  %36 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %37 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %42 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, -72057594037927936
  %46 = or i64 %40, %45
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %49 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %48, i32 0, i32 8
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %52 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %35
  %57 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %58 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %3, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %64 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @intel_pt_log_to(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %71 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %67, %56, %35
  %75 = load i64, i64* %3, align 8
  %76 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %77 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %75, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @intel_pt_log_to(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 72057594037927936
  store i64 %85, i64* %3, align 8
  %86 = load i64, i64* %3, align 8
  %87 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %88 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %87, i32 0, i32 8
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %81, %74
  %90 = load i64, i64* %3, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %93 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %95 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %89, %30
  br label %97

97:                                               ; preds = %96, %10
  %98 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %99 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @INTEL_PT_CYC, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %105 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %109 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %108, i32 0, i32 4
  store i64 %107, i64* %109, align 8
  %110 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %111 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %110, i32 0, i32 6
  store i64 0, i64* %111, align 8
  %112 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %113 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %112, i32 0, i32 5
  store i32 0, i32* %113, align 8
  %114 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %115 = call i32 @intel_pt_calc_cyc_to_tsc(%struct.intel_pt_decoder* %114, i32 0)
  br label %116

116:                                              ; preds = %103, %97
  %117 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %118 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = call i32 @intel_pt_log_to(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %120)
  ret void
}

declare dso_local i64 @intel_pt_8b_tsc(i32, i64) #1

declare dso_local i32 @intel_pt_log_to(i8*, i64) #1

declare dso_local i32 @intel_pt_calc_cyc_to_tsc(%struct.intel_pt_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
