; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_create_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_create_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.trace_event_call = type { i32 }
%struct.event_filter = type { i32 }
%struct.filter_parse_error = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, %struct.trace_event_call*, i8*, i32, %struct.event_filter**)* @create_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_filter(%struct.trace_array* %0, %struct.trace_event_call* %1, i8* %2, i32 %3, %struct.event_filter** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_array*, align 8
  %8 = alloca %struct.trace_event_call*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.event_filter**, align 8
  %12 = alloca %struct.filter_parse_error*, align 8
  %13 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %7, align 8
  store %struct.trace_event_call* %1, %struct.trace_event_call** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.event_filter** %4, %struct.event_filter*** %11, align 8
  store %struct.filter_parse_error* null, %struct.filter_parse_error** %12, align 8
  %14 = load %struct.event_filter**, %struct.event_filter*** %11, align 8
  %15 = load %struct.event_filter*, %struct.event_filter** %14, align 8
  %16 = call i64 @WARN_ON(%struct.event_filter* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load %struct.event_filter**, %struct.event_filter*** %11, align 8
  store %struct.event_filter* null, %struct.event_filter** %19, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.event_filter**, %struct.event_filter*** %11, align 8
  %24 = call i32 @create_filter_start(i8* %21, i32 %22, %struct.filter_parse_error** %12, %struct.event_filter** %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load %struct.trace_event_call*, %struct.trace_event_call** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.event_filter**, %struct.event_filter*** %11, align 8
  %33 = load %struct.event_filter*, %struct.event_filter** %32, align 8
  %34 = load %struct.filter_parse_error*, %struct.filter_parse_error** %12, align 8
  %35 = call i32 @process_preds(%struct.trace_event_call* %30, i8* %31, %struct.event_filter* %33, %struct.filter_parse_error* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.trace_array*, %struct.trace_array** %7, align 8
  %43 = load %struct.filter_parse_error*, %struct.filter_parse_error** %12, align 8
  %44 = load %struct.event_filter**, %struct.event_filter*** %11, align 8
  %45 = load %struct.event_filter*, %struct.event_filter** %44, align 8
  %46 = call i32 @append_filter_err(%struct.trace_array* %42, %struct.filter_parse_error* %43, %struct.event_filter* %45)
  br label %47

47:                                               ; preds = %41, %38, %29
  %48 = load %struct.filter_parse_error*, %struct.filter_parse_error** %12, align 8
  %49 = call i32 @create_filter_finish(%struct.filter_parse_error* %48)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %27
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i64 @WARN_ON(%struct.event_filter*) #1

declare dso_local i32 @create_filter_start(i8*, i32, %struct.filter_parse_error**, %struct.event_filter**) #1

declare dso_local i32 @process_preds(%struct.trace_event_call*, i8*, %struct.event_filter*, %struct.filter_parse_error*) #1

declare dso_local i32 @append_filter_err(%struct.trace_array*, %struct.filter_parse_error*, %struct.event_filter*) #1

declare dso_local i32 @create_filter_finish(%struct.filter_parse_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
