; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_list_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_list_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_handle = type { i32, i32, %struct.tep_event** }

@TEP_EVENT_SORT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tep_event** @tep_list_events(%struct.tep_handle* %0, i32 %1) #0 {
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
  br label %57

10:                                               ; preds = %2
  %11 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %12 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %11, i32 0, i32 2
  %13 = load %struct.tep_event**, %struct.tep_event*** %12, align 8
  store %struct.tep_event** %13, %struct.tep_event*** %6, align 8
  %14 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  %15 = icmp ne %struct.tep_event** %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %18 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  store %struct.tep_event** %23, %struct.tep_event*** %3, align 8
  br label %57

24:                                               ; preds = %16, %10
  %25 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  %26 = icmp ne %struct.tep_event** %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %29 = call %struct.tep_event** @list_events_copy(%struct.tep_handle* %28)
  store %struct.tep_event** %29, %struct.tep_event*** %6, align 8
  %30 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  %31 = icmp ne %struct.tep_event** %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.tep_event** null, %struct.tep_event*** %3, align 8
  br label %57

33:                                               ; preds = %27
  %34 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  %35 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %36 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %35, i32 0, i32 2
  store %struct.tep_event** %34, %struct.tep_event*** %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @TEP_EVENT_SORT_ID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %43 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  store %struct.tep_event** %44, %struct.tep_event*** %3, align 8
  br label %57

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  %48 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %49 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @list_events_sort(%struct.tep_event** %47, i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %55 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.tep_event**, %struct.tep_event*** %6, align 8
  store %struct.tep_event** %56, %struct.tep_event*** %3, align 8
  br label %57

57:                                               ; preds = %46, %40, %32, %22, %9
  %58 = load %struct.tep_event**, %struct.tep_event*** %3, align 8
  ret %struct.tep_event** %58
}

declare dso_local %struct.tep_event** @list_events_copy(%struct.tep_handle*) #1

declare dso_local i32 @list_events_sort(%struct.tep_event**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
