; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_tracepoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_error = type { i32 }
%struct.list_head = type { i32 }
%struct.evsel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@config_terms = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32*, i8*, i8*, %struct.parse_events_error*, %struct.list_head*)* @add_tracepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tracepoint(%struct.list_head* %0, i32* %1, i8* %2, i8* %3, %struct.parse_events_error* %4, %struct.list_head* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.parse_events_error*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.evsel*, align 8
  store %struct.list_head* %0, %struct.list_head** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.parse_events_error* %4, %struct.parse_events_error** %12, align 8
  store %struct.list_head* %5, %struct.list_head** %13, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = call %struct.evsel* @perf_evsel__newtp_idx(i8* %15, i8* %16, i32 %18)
  store %struct.evsel* %20, %struct.evsel** %14, align 8
  %21 = load %struct.evsel*, %struct.evsel** %14, align 8
  %22 = call i64 @IS_ERR(%struct.evsel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  %25 = load %struct.parse_events_error*, %struct.parse_events_error** %12, align 8
  %26 = load %struct.evsel*, %struct.evsel** %14, align 8
  %27 = call i32 @PTR_ERR(%struct.evsel* %26)
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @tracepoint_error(%struct.parse_events_error* %25, i32 %27, i8* %28, i8* %29)
  %31 = load %struct.evsel*, %struct.evsel** %14, align 8
  %32 = call i32 @PTR_ERR(%struct.evsel* %31)
  store i32 %32, i32* %7, align 4
  br label %55

33:                                               ; preds = %6
  %34 = load %struct.list_head*, %struct.list_head** %13, align 8
  %35 = icmp ne %struct.list_head* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i32, i32* @config_terms, align 4
  %38 = call i32 @LIST_HEAD(i32 %37)
  %39 = load %struct.list_head*, %struct.list_head** %13, align 8
  %40 = call i64 @get_config_terms(%struct.list_head* %39, i32* @config_terms)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %55

45:                                               ; preds = %36
  %46 = load %struct.evsel*, %struct.evsel** %14, align 8
  %47 = getelementptr inbounds %struct.evsel, %struct.evsel* %46, i32 0, i32 1
  %48 = call i32 @list_splice(i32* @config_terms, i32* %47)
  br label %49

49:                                               ; preds = %45, %33
  %50 = load %struct.evsel*, %struct.evsel** %14, align 8
  %51 = getelementptr inbounds %struct.evsel, %struct.evsel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.list_head*, %struct.list_head** %8, align 8
  %54 = call i32 @list_add_tail(i32* %52, %struct.list_head* %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %42, %24
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local %struct.evsel* @perf_evsel__newtp_idx(i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.evsel*) #1

declare dso_local i32 @tracepoint_error(%struct.parse_events_error*, i32, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.evsel*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @get_config_terms(%struct.list_head*, i32*) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
