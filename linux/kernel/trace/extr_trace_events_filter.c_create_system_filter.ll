; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_create_system_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_create_system_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_subsystem_dir = type { i32 }
%struct.trace_array = type { i32 }
%struct.event_filter = type { i32* }
%struct.filter_parse_error = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_subsystem_dir*, %struct.trace_array*, i8*, %struct.event_filter**)* @create_system_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_system_filter(%struct.trace_subsystem_dir* %0, %struct.trace_array* %1, i8* %2, %struct.event_filter** %3) #0 {
  %5 = alloca %struct.trace_subsystem_dir*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.event_filter**, align 8
  %9 = alloca %struct.filter_parse_error*, align 8
  %10 = alloca i32, align 4
  store %struct.trace_subsystem_dir* %0, %struct.trace_subsystem_dir** %5, align 8
  store %struct.trace_array* %1, %struct.trace_array** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.event_filter** %3, %struct.event_filter*** %8, align 8
  store %struct.filter_parse_error* null, %struct.filter_parse_error** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.event_filter**, %struct.event_filter*** %8, align 8
  %13 = call i32 @create_filter_start(i8* %11, i32 1, %struct.filter_parse_error** %9, %struct.event_filter** %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %4
  %17 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %5, align 8
  %18 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %19 = load %struct.filter_parse_error*, %struct.filter_parse_error** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @process_system_preds(%struct.trace_subsystem_dir* %17, %struct.trace_array* %18, %struct.filter_parse_error* %19, i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = load %struct.event_filter**, %struct.event_filter*** %8, align 8
  %26 = load %struct.event_filter*, %struct.event_filter** %25, align 8
  %27 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.event_filter**, %struct.event_filter*** %8, align 8
  %31 = load %struct.event_filter*, %struct.event_filter** %30, align 8
  %32 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %39

33:                                               ; preds = %16
  %34 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %35 = load %struct.filter_parse_error*, %struct.filter_parse_error** %9, align 8
  %36 = load %struct.event_filter**, %struct.event_filter*** %8, align 8
  %37 = load %struct.event_filter*, %struct.event_filter** %36, align 8
  %38 = call i32 @append_filter_err(%struct.trace_array* %34, %struct.filter_parse_error* %35, %struct.event_filter* %37)
  br label %39

39:                                               ; preds = %33, %24
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.filter_parse_error*, %struct.filter_parse_error** %9, align 8
  %42 = call i32 @create_filter_finish(%struct.filter_parse_error* %41)
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @create_filter_start(i8*, i32, %struct.filter_parse_error**, %struct.event_filter**) #1

declare dso_local i32 @process_system_preds(%struct.trace_subsystem_dir*, %struct.trace_array*, %struct.filter_parse_error*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @append_filter_err(%struct.trace_array*, %struct.filter_parse_error*, %struct.event_filter*) #1

declare dso_local i32 @create_filter_finish(%struct.filter_parse_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
