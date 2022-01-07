; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_apply_event_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_apply_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { i32, %struct.trace_event_call* }
%struct.trace_event_call = type { i32 }
%struct.event_filter = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_event_filter(%struct.trace_event_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_event_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.trace_event_call*, align 8
  %7 = alloca %struct.event_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.event_filter*, align 8
  store %struct.trace_event_file* %0, %struct.trace_event_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %11 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %10, i32 0, i32 1
  %12 = load %struct.trace_event_call*, %struct.trace_event_call** %11, align 8
  store %struct.trace_event_call* %12, %struct.trace_event_call** %6, align 8
  store %struct.event_filter* null, %struct.event_filter** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strstrip(i8* %13)
  %15 = call i32 @strcmp(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %19 = call i32 @filter_disable(%struct.trace_event_file* %18)
  %20 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %21 = call %struct.event_filter* @event_filter(%struct.trace_event_file* %20)
  store %struct.event_filter* %21, %struct.event_filter** %7, align 8
  %22 = load %struct.event_filter*, %struct.event_filter** %7, align 8
  %23 = icmp ne %struct.event_filter* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %17
  %26 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %27 = call i32 @event_clear_filter(%struct.trace_event_file* %26)
  %28 = call i32 (...) @tracepoint_synchronize_unregister()
  %29 = load %struct.event_filter*, %struct.event_filter** %7, align 8
  %30 = call i32 @__free_filter(%struct.event_filter* %29)
  store i32 0, i32* %3, align 4
  br label %64

31:                                               ; preds = %2
  %32 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %33 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.trace_event_call*, %struct.trace_event_call** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @create_filter(i32 %34, %struct.trace_event_call* %35, i8* %36, i32 1, %struct.event_filter** %7)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.event_filter*, %struct.event_filter** %7, align 8
  %39 = icmp ne %struct.event_filter* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %31
  %41 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %42 = call %struct.event_filter* @event_filter(%struct.trace_event_file* %41)
  store %struct.event_filter* %42, %struct.event_filter** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %47 = call i32 @event_set_filtered_flag(%struct.trace_event_file* %46)
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %50 = call i32 @filter_disable(%struct.trace_event_file* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %53 = load %struct.event_filter*, %struct.event_filter** %7, align 8
  %54 = call i32 @event_set_filter(%struct.trace_event_file* %52, %struct.event_filter* %53)
  %55 = load %struct.event_filter*, %struct.event_filter** %9, align 8
  %56 = icmp ne %struct.event_filter* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = call i32 (...) @tracepoint_synchronize_unregister()
  %59 = load %struct.event_filter*, %struct.event_filter** %9, align 8
  %60 = call i32 @__free_filter(%struct.event_filter* %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %25, %24
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strstrip(i8*) #1

declare dso_local i32 @filter_disable(%struct.trace_event_file*) #1

declare dso_local %struct.event_filter* @event_filter(%struct.trace_event_file*) #1

declare dso_local i32 @event_clear_filter(%struct.trace_event_file*) #1

declare dso_local i32 @tracepoint_synchronize_unregister(...) #1

declare dso_local i32 @__free_filter(%struct.event_filter*) #1

declare dso_local i32 @create_filter(i32, %struct.trace_event_call*, i8*, i32, %struct.event_filter**) #1

declare dso_local i32 @event_set_filtered_flag(%struct.trace_event_file*) #1

declare dso_local i32 @event_set_filter(%struct.trace_event_file*, %struct.event_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
