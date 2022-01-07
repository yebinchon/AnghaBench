; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__new_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__new_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32, i32 }
%struct.perf_event_attr = type { i32, i64, i32, i32 }

@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cycles%s%s%.*s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ppp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evsel* @perf_evsel__new_cycles(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event_attr, align 8
  %4 = alloca %struct.evsel*, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 0
  %6 = call i32 (...) @perf_event_can_profile_kernel()
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %5, align 8
  %10 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 2
  %12 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 3
  %14 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %14, i32* %13, align 4
  %15 = call i32 @event_attr_init(%struct.perf_event_attr* %3)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %18
  %21 = call %struct.evsel* @evsel__new(%struct.perf_event_attr* %3)
  store %struct.evsel* %21, %struct.evsel** %4, align 8
  %22 = load %struct.evsel*, %struct.evsel** %4, align 8
  %23 = icmp eq %struct.evsel* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %60

25:                                               ; preds = %20
  %26 = load %struct.evsel*, %struct.evsel** %4, align 8
  %27 = getelementptr inbounds %struct.evsel, %struct.evsel* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.evsel*, %struct.evsel** %4, align 8
  %29 = getelementptr inbounds %struct.evsel, %struct.evsel* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %33, %25
  %38 = phi i1 [ true, %25 ], [ %36, %33 ]
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %46 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  br label %54

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i64 [ %52, %49 ], [ 0, %53 ]
  %56 = call i64 @asprintf(i32* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %45, i64 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %62

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %62, %59, %24
  %61 = load %struct.evsel*, %struct.evsel** %4, align 8
  ret %struct.evsel* %61

62:                                               ; preds = %58
  %63 = load %struct.evsel*, %struct.evsel** %4, align 8
  %64 = call i32 @evsel__delete(%struct.evsel* %63)
  store %struct.evsel* null, %struct.evsel** %4, align 8
  br label %60
}

declare dso_local i32 @perf_event_can_profile_kernel(...) #1

declare dso_local i32 @event_attr_init(%struct.perf_event_attr*) #1

declare dso_local %struct.evsel* @evsel__new(%struct.perf_event_attr*) #1

declare dso_local i64 @asprintf(i32*, i8*, i8*, i8*, i64, i8*) #1

declare dso_local i32 @evsel__delete(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
