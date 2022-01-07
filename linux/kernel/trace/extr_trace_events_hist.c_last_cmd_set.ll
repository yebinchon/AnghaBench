; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_last_cmd_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_last_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { %struct.trace_event_call* }
%struct.trace_event_call = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@last_cmd = common dso_local global i32 0, align 4
@MAX_FILTER_STR_VAL = common dso_local global i64 0, align 8
@last_cmd_loc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hist:%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_event_file*, i8*)* @last_cmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @last_cmd_set(%struct.trace_event_file* %0, i8* %1) #0 {
  %3 = alloca %struct.trace_event_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.trace_event_call*, align 8
  store %struct.trace_event_file* %0, %struct.trace_event_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %47

11:                                               ; preds = %2
  %12 = load i32, i32* @last_cmd, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* @MAX_FILTER_STR_VAL, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i32 @strncpy(i32 %12, i8* %13, i64 %15)
  %17 = load %struct.trace_event_file*, %struct.trace_event_file** %3, align 8
  %18 = icmp ne %struct.trace_event_file* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = load %struct.trace_event_file*, %struct.trace_event_file** %3, align 8
  %21 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %20, i32 0, i32 0
  %22 = load %struct.trace_event_call*, %struct.trace_event_call** %21, align 8
  store %struct.trace_event_call* %22, %struct.trace_event_call** %7, align 8
  %23 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  %24 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  %32 = call i8* @trace_event_name(%struct.trace_event_call* %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i8* null, i8** %5, align 8
  br label %36

36:                                               ; preds = %35, %30
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37, %11
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @last_cmd_loc, align 4
  %43 = load i64, i64* @MAX_FILTER_STR_VAL, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @snprintf(i32 %42, i64 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %10, %41, %38
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i8* @trace_event_name(%struct.trace_event_call*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
