; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_list_events_copy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_list_events_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_handle = type { i32 }

@TEP_EVENT_SORT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tep_event** @tep_list_events_copy(%struct.tep_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.tep_event**, align 8
  %4 = alloca %struct.tep_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_event**, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %8 = icmp ne %struct.tep_handle* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.tep_event** null, %struct.tep_event*** %3, align 8
  br label %30

10:                                               ; preds = %2
  %11 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %12 = call %struct.tep_event** @list_events_copy(%struct.tep_handle* %11)
  store %struct.tep_event** %12, %struct.tep_event*** %6, align 8
  %13 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  %14 = icmp ne %struct.tep_event** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.tep_event** null, %struct.tep_event*** %3, align 8
  br label %30

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TEP_EVENT_SORT_ID, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  store %struct.tep_event** %21, %struct.tep_event*** %3, align 8
  br label %30

22:                                               ; preds = %16
  %23 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  %24 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %25 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @list_events_sort(%struct.tep_event** %23, i32 %26, i32 %27)
  %29 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  store %struct.tep_event** %29, %struct.tep_event*** %3, align 8
  br label %30

30:                                               ; preds = %22, %20, %15, %9
  %31 = load %struct.tep_event**, %struct.tep_event*** %3, align 8
  ret %struct.tep_event** %31
}

declare dso_local %struct.tep_event** @list_events_copy(%struct.tep_handle*) #1

declare dso_local i32 @list_events_sort(%struct.tep_event**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
