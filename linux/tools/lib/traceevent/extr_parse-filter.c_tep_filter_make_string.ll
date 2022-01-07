; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_make_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_make_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32 }
%struct.tep_filter_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tep_filter_make_string(%struct.tep_event_filter* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tep_event_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_filter_type*, align 8
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %8 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter* %13, i32 %14)
  store %struct.tep_filter_type* %15, %struct.tep_filter_type** %6, align 8
  %16 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %17 = icmp ne %struct.tep_filter_type* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %25

19:                                               ; preds = %12
  %20 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %21 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %22 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @arg_to_str(%struct.tep_event_filter* %20, i32 %23)
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %19, %18, %11
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter*, i32) #1

declare dso_local i8* @arg_to_str(%struct.tep_event_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
