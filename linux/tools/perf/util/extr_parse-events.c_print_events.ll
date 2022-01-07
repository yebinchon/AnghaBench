; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_print_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_print_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@event_symbols_hw = common dso_local global i32 0, align 4
@PERF_COUNT_HW_MAX = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@event_symbols_sw = common dso_local global i32 0, align 4
@PERF_COUNT_SW_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"  %-50s [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rNNN\00", align 1
@event_type_descriptors = common dso_local global i8** null, align 8
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"cpu/t1=v1[,t2=v2,t3 ...]/modifier\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"   (see 'man perf-list' on how to encode it)\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"mem:<addr>[/len][:access]\00", align 1
@PERF_TYPE_BREAKPOINT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_events(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %13 = load i32, i32* @event_symbols_hw, align 4
  %14 = load i32, i32* @PERF_COUNT_HW_MAX, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @print_symbol_events(i8* %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  %19 = load i32, i32* @event_symbols_sw, align 4
  %20 = load i32, i32* @PERF_COUNT_SW_MAX, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @print_symbol_events(i8* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @print_tool_events(i8* %23, i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @print_hwcache_events(i8* %26, i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @print_pmu_events(i8* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  br label %75

38:                                               ; preds = %5
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %67, label %41

41:                                               ; preds = %38
  %42 = load i8**, i8*** @event_type_descriptors, align 8
  %43 = load i64, i64* @PERF_TYPE_RAW, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i8**, i8*** @event_type_descriptors, align 8
  %48 = load i64, i64* @PERF_TYPE_RAW, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = call i64 (...) @pager_in_use()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %41
  %57 = load i8**, i8*** @event_type_descriptors, align 8
  %58 = load i64, i64* @PERF_TYPE_BREAKPOINT, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = call i64 (...) @pager_in_use()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %56
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @print_tracepoint_events(i32* null, i32* null, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @print_sdt_events(i32* null, i32* null, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @metricgroup__print(i32 1, i32 1, i32* null, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %37
  ret void
}

declare dso_local i32 @print_symbol_events(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @print_tool_events(i8*, i32) #1

declare dso_local i32 @print_hwcache_events(i8*, i32) #1

declare dso_local i32 @print_pmu_events(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @pager_in_use(...) #1

declare dso_local i32 @print_tracepoint_events(i32*, i32*, i32) #1

declare dso_local i32 @print_sdt_events(i32*, i32*, i32) #1

declare dso_local i32 @metricgroup__print(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
