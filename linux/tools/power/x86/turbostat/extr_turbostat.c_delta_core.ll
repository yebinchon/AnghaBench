; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_delta_core.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_delta_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.msr_counter* }
%struct.msr_counter = type { i64, %struct.msr_counter* }
%struct.core_data = type { i64*, i32, i64, i32, i64, i64, i64 }

@sys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FORMAT_RAW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delta_core(%struct.core_data* %0, %struct.core_data* %1) #0 {
  %3 = alloca %struct.core_data*, align 8
  %4 = alloca %struct.core_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msr_counter*, align 8
  store %struct.core_data* %0, %struct.core_data** %3, align 8
  store %struct.core_data* %1, %struct.core_data** %4, align 8
  %7 = load %struct.core_data*, %struct.core_data** %3, align 8
  %8 = getelementptr inbounds %struct.core_data, %struct.core_data* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.core_data*, %struct.core_data** %4, align 8
  %11 = getelementptr inbounds %struct.core_data, %struct.core_data* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.core_data*, %struct.core_data** %4, align 8
  %15 = getelementptr inbounds %struct.core_data, %struct.core_data* %14, i32 0, i32 6
  store i64 %13, i64* %15, align 8
  %16 = load %struct.core_data*, %struct.core_data** %3, align 8
  %17 = getelementptr inbounds %struct.core_data, %struct.core_data* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.core_data*, %struct.core_data** %4, align 8
  %20 = getelementptr inbounds %struct.core_data, %struct.core_data* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load %struct.core_data*, %struct.core_data** %4, align 8
  %24 = getelementptr inbounds %struct.core_data, %struct.core_data* %23, i32 0, i32 5
  store i64 %22, i64* %24, align 8
  %25 = load %struct.core_data*, %struct.core_data** %3, align 8
  %26 = getelementptr inbounds %struct.core_data, %struct.core_data* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.core_data*, %struct.core_data** %4, align 8
  %29 = getelementptr inbounds %struct.core_data, %struct.core_data* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.core_data*, %struct.core_data** %4, align 8
  %33 = getelementptr inbounds %struct.core_data, %struct.core_data* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load %struct.core_data*, %struct.core_data** %3, align 8
  %35 = getelementptr inbounds %struct.core_data, %struct.core_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.core_data*, %struct.core_data** %4, align 8
  %38 = getelementptr inbounds %struct.core_data, %struct.core_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.core_data*, %struct.core_data** %3, align 8
  %40 = getelementptr inbounds %struct.core_data, %struct.core_data* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.core_data*, %struct.core_data** %4, align 8
  %43 = getelementptr inbounds %struct.core_data, %struct.core_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = load %struct.core_data*, %struct.core_data** %4, align 8
  %47 = getelementptr inbounds %struct.core_data, %struct.core_data* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.core_data*, %struct.core_data** %3, align 8
  %49 = getelementptr inbounds %struct.core_data, %struct.core_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.core_data*, %struct.core_data** %4, align 8
  %52 = getelementptr inbounds %struct.core_data, %struct.core_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DELTA_WRAP32(i32 %50, i32 %53)
  store i32 0, i32* %5, align 4
  %55 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 0), align 8
  store %struct.msr_counter* %55, %struct.msr_counter** %6, align 8
  br label %56

56:                                               ; preds = %102, %2
  %57 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %58 = icmp ne %struct.msr_counter* %57, null
  br i1 %58, label %59, label %108

59:                                               ; preds = %56
  %60 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %61 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FORMAT_RAW, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.core_data*, %struct.core_data** %3, align 8
  %67 = getelementptr inbounds %struct.core_data, %struct.core_data* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.core_data*, %struct.core_data** %4, align 8
  %74 = getelementptr inbounds %struct.core_data, %struct.core_data* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 %72, i64* %78, align 8
  br label %101

79:                                               ; preds = %59
  %80 = load %struct.core_data*, %struct.core_data** %3, align 8
  %81 = getelementptr inbounds %struct.core_data, %struct.core_data* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.core_data*, %struct.core_data** %4, align 8
  %88 = getelementptr inbounds %struct.core_data, %struct.core_data* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %86, %93
  %95 = load %struct.core_data*, %struct.core_data** %4, align 8
  %96 = getelementptr inbounds %struct.core_data, %struct.core_data* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %94, i64* %100, align 8
  br label %101

101:                                              ; preds = %79, %65
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  %105 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %106 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %105, i32 0, i32 1
  %107 = load %struct.msr_counter*, %struct.msr_counter** %106, align 8
  store %struct.msr_counter* %107, %struct.msr_counter** %6, align 8
  br label %56

108:                                              ; preds = %56
  ret void
}

declare dso_local i32 @DELTA_WRAP32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
