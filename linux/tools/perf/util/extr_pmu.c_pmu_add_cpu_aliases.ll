; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_add_cpu_aliases.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_add_cpu_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_pmu = type { i8* }
%struct.pmu_events_map = type { %struct.pmu_event* }
%struct.pmu_event = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.perf_pmu*)* @pmu_add_cpu_aliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_add_cpu_aliases(%struct.list_head* %0, %struct.perf_pmu* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.perf_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmu_events_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pmu_event*, align 8
  %10 = alloca i8*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.perf_pmu* %1, %struct.perf_pmu** %4, align 8
  %11 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %12 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %15 = call %struct.pmu_events_map* @perf_pmu__find_map(%struct.perf_pmu* %14)
  store %struct.pmu_events_map* %15, %struct.pmu_events_map** %6, align 8
  %16 = load %struct.pmu_events_map*, %struct.pmu_events_map** %6, align 8
  %17 = icmp ne %struct.pmu_events_map* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %120

19:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %62, %79, %81
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @is_arm_pmu_core(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %26 ]
  store i8* %28, i8** %8, align 8
  %29 = load %struct.pmu_events_map*, %struct.pmu_events_map** %6, align 8
  %30 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %29, i32 0, i32 0
  %31 = load %struct.pmu_event*, %struct.pmu_event** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %31, i64 %34
  store %struct.pmu_event* %35, %struct.pmu_event** %9, align 8
  %36 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %37 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %42 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %46

44:                                               ; preds = %27
  %45 = load i8*, i8** %8, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i8* [ %43, %40 ], [ %45, %44 ]
  store i8* %47, i8** %10, align 8
  %48 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %49 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %54 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %53, i32 0, i32 10
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %59 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52
  br label %20

63:                                               ; preds = %57
  br label %120

64:                                               ; preds = %46
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @pmu_is_uncore(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @pmu_uncore_alias_match(i8* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %81

74:                                               ; preds = %68, %64
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @strcmp(i8* %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %20

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %73
  %82 = load %struct.list_head*, %struct.list_head** %3, align 8
  %83 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %84 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %88 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %92 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %96 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %100 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %104 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %108 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %112 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %116 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 @__perf_pmu__new_alias(%struct.list_head* %82, i32* null, i8* %86, i8* %90, i8* %94, i8* %98, i8* %102, i8* %106, i8* %110, i8* %114, i8* %118)
  br label %20

120:                                              ; preds = %18, %63
  ret void
}

declare dso_local %struct.pmu_events_map* @perf_pmu__find_map(%struct.perf_pmu*) #1

declare dso_local i64 @is_arm_pmu_core(i8*) #1

declare dso_local i64 @pmu_is_uncore(i8*) #1

declare dso_local i64 @pmu_uncore_alias_match(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @__perf_pmu__new_alias(%struct.list_head*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
