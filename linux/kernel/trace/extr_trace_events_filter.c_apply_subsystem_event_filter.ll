; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_apply_subsystem_event_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_apply_subsystem_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_subsystem_dir = type { i32, %struct.trace_array*, %struct.event_subsystem* }
%struct.trace_array = type { i32 }
%struct.event_subsystem = type { %struct.event_filter* }
%struct.event_filter = type { i32 }

@event_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_subsystem_event_filter(%struct.trace_subsystem_dir* %0, i8* %1) #0 {
  %3 = alloca %struct.trace_subsystem_dir*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event_subsystem*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.event_filter*, align 8
  %8 = alloca i32, align 4
  store %struct.trace_subsystem_dir* %0, %struct.trace_subsystem_dir** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %3, align 8
  %10 = getelementptr inbounds %struct.trace_subsystem_dir, %struct.trace_subsystem_dir* %9, i32 0, i32 2
  %11 = load %struct.event_subsystem*, %struct.event_subsystem** %10, align 8
  store %struct.event_subsystem* %11, %struct.event_subsystem** %5, align 8
  %12 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %3, align 8
  %13 = getelementptr inbounds %struct.trace_subsystem_dir, %struct.trace_subsystem_dir* %12, i32 0, i32 1
  %14 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  store %struct.trace_array* %14, %struct.trace_array** %6, align 8
  store %struct.event_filter* null, %struct.event_filter** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = call i32 @mutex_lock(i32* @event_mutex)
  %16 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %3, align 8
  %17 = getelementptr inbounds %struct.trace_subsystem_dir, %struct.trace_subsystem_dir* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strstrip(i8* %24)
  %26 = call i32 @strcmp(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %23
  %29 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %3, align 8
  %30 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %31 = call i32 @filter_free_subsystem_preds(%struct.trace_subsystem_dir* %29, %struct.trace_array* %30)
  %32 = load %struct.event_subsystem*, %struct.event_subsystem** %5, align 8
  %33 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %32, i32 0, i32 0
  %34 = load %struct.event_filter*, %struct.event_filter** %33, align 8
  %35 = call i32 @remove_filter_string(%struct.event_filter* %34)
  %36 = load %struct.event_subsystem*, %struct.event_subsystem** %5, align 8
  %37 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %36, i32 0, i32 0
  %38 = load %struct.event_filter*, %struct.event_filter** %37, align 8
  store %struct.event_filter* %38, %struct.event_filter** %7, align 8
  %39 = load %struct.event_subsystem*, %struct.event_subsystem** %5, align 8
  %40 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %39, i32 0, i32 0
  store %struct.event_filter* null, %struct.event_filter** %40, align 8
  %41 = call i32 (...) @tracepoint_synchronize_unregister()
  %42 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %3, align 8
  %43 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %44 = call i32 @filter_free_subsystem_filters(%struct.trace_subsystem_dir* %42, %struct.trace_array* %43)
  %45 = load %struct.event_filter*, %struct.event_filter** %7, align 8
  %46 = call i32 @__free_filter(%struct.event_filter* %45)
  br label %63

47:                                               ; preds = %23
  %48 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %3, align 8
  %49 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @create_system_filter(%struct.trace_subsystem_dir* %48, %struct.trace_array* %49, i8* %50, %struct.event_filter** %7)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.event_filter*, %struct.event_filter** %7, align 8
  %53 = icmp ne %struct.event_filter* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.event_subsystem*, %struct.event_subsystem** %5, align 8
  %56 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %55, i32 0, i32 0
  %57 = load %struct.event_filter*, %struct.event_filter** %56, align 8
  %58 = call i32 @__free_filter(%struct.event_filter* %57)
  %59 = load %struct.event_filter*, %struct.event_filter** %7, align 8
  %60 = load %struct.event_subsystem*, %struct.event_subsystem** %5, align 8
  %61 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %60, i32 0, i32 0
  store %struct.event_filter* %59, %struct.event_filter** %61, align 8
  br label %62

62:                                               ; preds = %54, %47
  br label %63

63:                                               ; preds = %62, %28, %20
  %64 = call i32 @mutex_unlock(i32* @event_mutex)
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strstrip(i8*) #1

declare dso_local i32 @filter_free_subsystem_preds(%struct.trace_subsystem_dir*, %struct.trace_array*) #1

declare dso_local i32 @remove_filter_string(%struct.event_filter*) #1

declare dso_local i32 @tracepoint_synchronize_unregister(...) #1

declare dso_local i32 @filter_free_subsystem_filters(%struct.trace_subsystem_dir*, %struct.trace_array*) #1

declare dso_local i32 @__free_filter(%struct.event_filter*) #1

declare dso_local i32 @create_system_filter(%struct.trace_subsystem_dir*, %struct.trace_array*, i8*, %struct.event_filter**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
