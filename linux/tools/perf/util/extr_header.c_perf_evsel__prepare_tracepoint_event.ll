; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_evsel__prepare_tracepoint_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_evsel__prepare_tracepoint_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.tep_event*, i32*, %struct.TYPE_4__ }
%struct.tep_event = type { i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.tep_handle = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"broken or missing trace data\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot find event format for %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.tep_handle*)* @perf_evsel__prepare_tracepoint_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__prepare_tracepoint_event(%struct.evsel* %0, %struct.tep_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.tep_handle*, align 8
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca [128 x i8], align 16
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.tep_handle* %1, %struct.tep_handle** %5, align 8
  %8 = load %struct.evsel*, %struct.evsel** %4, align 8
  %9 = getelementptr inbounds %struct.evsel, %struct.evsel* %8, i32 0, i32 0
  %10 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %11 = icmp ne %struct.tep_event* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %15 = icmp eq %struct.tep_handle* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %64

18:                                               ; preds = %13
  %19 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %20 = load %struct.evsel*, %struct.evsel** %4, align 8
  %21 = getelementptr inbounds %struct.evsel, %struct.evsel* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.tep_event* @tep_find_event(%struct.tep_handle* %19, i64 %24)
  store %struct.tep_event* %25, %struct.tep_event** %6, align 8
  %26 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %27 = icmp eq %struct.tep_event* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load %struct.evsel*, %struct.evsel** %4, align 8
  %30 = getelementptr inbounds %struct.evsel, %struct.evsel* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %3, align 4
  br label %64

36:                                               ; preds = %18
  %37 = load %struct.evsel*, %struct.evsel** %4, align 8
  %38 = getelementptr inbounds %struct.evsel, %struct.evsel* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %43 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %44 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %47 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @snprintf(i8* %42, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %48)
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %51 = call i32* @strdup(i8* %50)
  %52 = load %struct.evsel*, %struct.evsel** %4, align 8
  %53 = getelementptr inbounds %struct.evsel, %struct.evsel* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.evsel*, %struct.evsel** %4, align 8
  %55 = getelementptr inbounds %struct.evsel, %struct.evsel* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %64

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %36
  %61 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %62 = load %struct.evsel*, %struct.evsel** %4, align 8
  %63 = getelementptr inbounds %struct.evsel, %struct.evsel* %62, i32 0, i32 0
  store %struct.tep_event* %61, %struct.tep_event** %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %58, %28, %16, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.tep_event* @tep_find_event(%struct.tep_handle*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
