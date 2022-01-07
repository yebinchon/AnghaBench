; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_match.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32, %struct.tep_handle* }
%struct.tep_handle = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_filter_type = type { i32, i32 }

@TEP_ERRNO__NO_FILTER = common dso_local global i32 0, align 4
@TEP_ERRNO__FILTER_NOT_FOUND = common dso_local global i32 0, align 4
@TEP_ERRNO__FILTER_MATCH = common dso_local global i32 0, align 4
@TEP_ERRNO__FILTER_MISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_filter_match(%struct.tep_event_filter* %0, %struct.tep_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tep_event_filter*, align 8
  %5 = alloca %struct.tep_record*, align 8
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca %struct.tep_filter_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %4, align 8
  store %struct.tep_record* %1, %struct.tep_record** %5, align 8
  %11 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %12 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %11, i32 0, i32 1
  %13 = load %struct.tep_handle*, %struct.tep_handle** %12, align 8
  store %struct.tep_handle* %13, %struct.tep_handle** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %15 = call i32 @filter_init_error_buf(%struct.tep_event_filter* %14)
  %16 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %17 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @TEP_ERRNO__NO_FILTER, align 4
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %24 = load %struct.tep_record*, %struct.tep_record** %5, align 8
  %25 = call i32 @tep_data_type(%struct.tep_handle* %23, %struct.tep_record* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter* %26, i32 %27)
  store %struct.tep_filter_type* %28, %struct.tep_filter_type** %7, align 8
  %29 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %30 = icmp ne %struct.tep_filter_type* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @TEP_ERRNO__FILTER_NOT_FOUND, align 4
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %22
  %34 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %35 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %38 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tep_record*, %struct.tep_record** %5, align 8
  %41 = call i32 @test_filter(i32 %36, i32 %39, %struct.tep_record* %40, i32* %10)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %55

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @TEP_ERRNO__FILTER_MATCH, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @TEP_ERRNO__FILTER_MISS, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %44, %31, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @filter_init_error_buf(%struct.tep_event_filter*) #1

declare dso_local i32 @tep_data_type(%struct.tep_handle*, %struct.tep_record*) #1

declare dso_local %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter*, i32) #1

declare dso_local i32 @test_filter(i32, i32, %struct.tep_record*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
