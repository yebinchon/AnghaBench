; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-parse.c_get_common_field.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-parse.c_get_common_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scripting_context = type { i64, %struct.tep_handle* }
%struct.tep_handle = type { i32 }
%struct.tep_event = type { i32 }
%struct.tep_format_field = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scripting_context*, i32*, i32*, i8*)* @get_common_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_common_field(%struct.scripting_context* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scripting_context*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tep_handle*, align 8
  %11 = alloca %struct.tep_event*, align 8
  %12 = alloca %struct.tep_format_field*, align 8
  store %struct.scripting_context* %0, %struct.scripting_context** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.scripting_context*, %struct.scripting_context** %6, align 8
  %14 = getelementptr inbounds %struct.scripting_context, %struct.scripting_context* %13, i32 0, i32 1
  %15 = load %struct.tep_handle*, %struct.tep_handle** %14, align 8
  store %struct.tep_handle* %15, %struct.tep_handle** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %4
  %20 = load %struct.tep_handle*, %struct.tep_handle** %10, align 8
  %21 = call %struct.tep_event* @tep_get_first_event(%struct.tep_handle* %20)
  store %struct.tep_event* %21, %struct.tep_event** %11, align 8
  %22 = load %struct.tep_event*, %struct.tep_event** %11, align 8
  %23 = icmp ne %struct.tep_event* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %53

25:                                               ; preds = %19
  %26 = load %struct.tep_event*, %struct.tep_event** %11, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call %struct.tep_format_field* @tep_find_common_field(%struct.tep_event* %26, i8* %27)
  store %struct.tep_format_field* %28, %struct.tep_format_field** %12, align 8
  %29 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  %30 = icmp ne %struct.tep_format_field* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %53

32:                                               ; preds = %25
  %33 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  %34 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  %38 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %4
  %42 = load %struct.tep_handle*, %struct.tep_handle** %10, align 8
  %43 = load %struct.scripting_context*, %struct.scripting_context** %6, align 8
  %44 = getelementptr inbounds %struct.scripting_context, %struct.scripting_context* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @tep_read_number(%struct.tep_handle* %42, i64 %49, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %41, %31, %24
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.tep_event* @tep_get_first_event(%struct.tep_handle*) #1

declare dso_local %struct.tep_format_field* @tep_find_common_field(%struct.tep_event*, i8*) #1

declare dso_local i32 @tep_read_number(%struct.tep_handle*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
