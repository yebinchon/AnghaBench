; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__cpu_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__cpu_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.perf_cpu_map = type { i32, i32* }
%struct.evsel = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MAX_NR_CPUS = common dso_local global i32 0, align 4
@PERF_TYPE_MAX = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"File does not contain CPU events. Remove -C option to proceed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid cpu_list\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Requested CPU %d too large. Consider raising MAX_NR_CPUS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_session__cpu_bitmap(%struct.perf_session* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_cpu_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.evsel*, align 8
  %13 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 -1, i32* %9, align 4
  %14 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %15 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX_NR_CPUS, align 4
  %20 = call i32 @min(i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %44, %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PERF_TYPE_MAX, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.evsel* @perf_session__find_first_evtype(%struct.perf_session* %26, i32 %27)
  store %struct.evsel* %28, %struct.evsel** %12, align 8
  %29 = load %struct.evsel*, %struct.evsel** %12, align 8
  %30 = icmp ne %struct.evsel* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %44

32:                                               ; preds = %25
  %33 = load %struct.evsel*, %struct.evsel** %12, align 8
  %34 = getelementptr inbounds %struct.evsel, %struct.evsel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %87

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load i8*, i8** %6, align 8
  %49 = call %struct.perf_cpu_map* @perf_cpu_map__new(i8* %48)
  store %struct.perf_cpu_map* %49, %struct.perf_cpu_map** %10, align 8
  %50 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %51 = icmp eq %struct.perf_cpu_map* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %87

54:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %79, %54
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %58 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %63 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %83

75:                                               ; preds = %61
  %76 = load i32, i32* %13, align 4
  %77 = load i64*, i64** %7, align 8
  %78 = call i32 @set_bit(i32 %76, i64* %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %55

82:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %72
  %84 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %85 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %52, %41
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.evsel* @perf_session__find_first_evtype(%struct.perf_session*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i8*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
