; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_switch_ip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_switch_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32, %struct.machine* }
%struct.machine = type { i32 }
%struct.map = type { i64 (%struct.map*, i32)*, i64, i64, i32 }
%struct.symbol = type { i64, i32, i32 }

@STB_GLOBAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"__switch_to\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"perf_trace_sched_switch\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"__perf_event_task_sched_out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_pt*, i64*)* @intel_pt_switch_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_pt_switch_ip(%struct.intel_pt* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.machine*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca %struct.symbol*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %14 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %13, i32 0, i32 1
  %15 = load %struct.machine*, %struct.machine** %14, align 8
  store %struct.machine* %15, %struct.machine** %6, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64*, i64** %5, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %struct.machine*, %struct.machine** %6, align 8
  %22 = call %struct.map* @machine__kernel_map(%struct.machine* %21)
  store %struct.map* %22, %struct.map** %7, align 8
  %23 = load %struct.map*, %struct.map** %7, align 8
  %24 = icmp ne %struct.map* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %135

26:                                               ; preds = %20
  %27 = load %struct.map*, %struct.map** %7, align 8
  %28 = call i64 @map__load(%struct.map* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %135

31:                                               ; preds = %26
  %32 = load %struct.map*, %struct.map** %7, align 8
  %33 = getelementptr inbounds %struct.map, %struct.map* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.symbol* @dso__first_symbol(i32 %34)
  store %struct.symbol* %35, %struct.symbol** %9, align 8
  %36 = load %struct.symbol*, %struct.symbol** %9, align 8
  store %struct.symbol* %36, %struct.symbol** %8, align 8
  br label %37

37:                                               ; preds = %76, %31
  %38 = load %struct.symbol*, %struct.symbol** %8, align 8
  %39 = icmp ne %struct.symbol* %38, null
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load %struct.symbol*, %struct.symbol** %8, align 8
  %42 = getelementptr inbounds %struct.symbol, %struct.symbol* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @STB_GLOBAL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load %struct.symbol*, %struct.symbol** %8, align 8
  %48 = getelementptr inbounds %struct.symbol, %struct.symbol* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %46
  %53 = load %struct.map*, %struct.map** %7, align 8
  %54 = getelementptr inbounds %struct.map, %struct.map* %53, i32 0, i32 0
  %55 = load i64 (%struct.map*, i32)*, i64 (%struct.map*, i32)** %54, align 8
  %56 = load %struct.map*, %struct.map** %7, align 8
  %57 = load %struct.symbol*, %struct.symbol** %8, align 8
  %58 = getelementptr inbounds %struct.symbol, %struct.symbol* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 %55(%struct.map* %56, i32 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.map*, %struct.map** %7, align 8
  %63 = getelementptr inbounds %struct.map, %struct.map* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.map*, %struct.map** %7, align 8
  %69 = getelementptr inbounds %struct.map, %struct.map* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %11, align 8
  br label %79

74:                                               ; preds = %66, %52
  br label %75

75:                                               ; preds = %74, %46, %40
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.symbol*, %struct.symbol** %8, align 8
  %78 = call %struct.symbol* @dso__next_symbol(%struct.symbol* %77)
  store %struct.symbol* %78, %struct.symbol** %8, align 8
  br label %37

79:                                               ; preds = %72, %37
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64*, i64** %5, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %82, %79
  store i64 0, i64* %3, align 8
  br label %135

86:                                               ; preds = %82
  %87 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %88 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %93

92:                                               ; preds = %86
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %93

93:                                               ; preds = %92, %91
  %94 = load %struct.symbol*, %struct.symbol** %9, align 8
  store %struct.symbol* %94, %struct.symbol** %8, align 8
  br label %95

95:                                               ; preds = %130, %93
  %96 = load %struct.symbol*, %struct.symbol** %8, align 8
  %97 = icmp ne %struct.symbol* %96, null
  br i1 %97, label %98, label %133

98:                                               ; preds = %95
  %99 = load %struct.symbol*, %struct.symbol** %8, align 8
  %100 = getelementptr inbounds %struct.symbol, %struct.symbol* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @strcmp(i32 %101, i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %98
  %106 = load %struct.map*, %struct.map** %7, align 8
  %107 = getelementptr inbounds %struct.map, %struct.map* %106, i32 0, i32 0
  %108 = load i64 (%struct.map*, i32)*, i64 (%struct.map*, i32)** %107, align 8
  %109 = load %struct.map*, %struct.map** %7, align 8
  %110 = load %struct.symbol*, %struct.symbol** %8, align 8
  %111 = getelementptr inbounds %struct.symbol, %struct.symbol* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 %108(%struct.map* %109, i32 %112)
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.map*, %struct.map** %7, align 8
  %116 = getelementptr inbounds %struct.map, %struct.map* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %114, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %105
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.map*, %struct.map** %7, align 8
  %122 = getelementptr inbounds %struct.map, %struct.map* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i64, i64* %10, align 8
  %127 = load i64*, i64** %5, align 8
  store i64 %126, i64* %127, align 8
  br label %133

128:                                              ; preds = %119, %105
  br label %129

129:                                              ; preds = %128, %98
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.symbol*, %struct.symbol** %8, align 8
  %132 = call %struct.symbol* @dso__next_symbol(%struct.symbol* %131)
  store %struct.symbol* %132, %struct.symbol** %8, align 8
  br label %95

133:                                              ; preds = %125, %95
  %134 = load i64, i64* %11, align 8
  store i64 %134, i64* %3, align 8
  br label %135

135:                                              ; preds = %133, %85, %30, %25
  %136 = load i64, i64* %3, align 8
  ret i64 %136
}

declare dso_local %struct.map* @machine__kernel_map(%struct.machine*) #1

declare dso_local i64 @map__load(%struct.map*) #1

declare dso_local %struct.symbol* @dso__first_symbol(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.symbol* @dso__next_symbol(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
