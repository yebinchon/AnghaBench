; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_create_new_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_create_new_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { i32, i32, i32, i32, %struct.trace_array*, %struct.trace_event_call* }
%struct.trace_event_call = type { i32 }
%struct.trace_array = type { i32 }

@file_cachep = common dso_local global i32 0, align 4
@GFP_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trace_event_file* (%struct.trace_event_call*, %struct.trace_array*)* @trace_create_new_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trace_event_file* @trace_create_new_event(%struct.trace_event_call* %0, %struct.trace_array* %1) #0 {
  %3 = alloca %struct.trace_event_file*, align 8
  %4 = alloca %struct.trace_event_call*, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca %struct.trace_event_file*, align 8
  store %struct.trace_event_call* %0, %struct.trace_event_call** %4, align 8
  store %struct.trace_array* %1, %struct.trace_array** %5, align 8
  %7 = load i32, i32* @file_cachep, align 4
  %8 = load i32, i32* @GFP_TRACE, align 4
  %9 = call %struct.trace_event_file* @kmem_cache_alloc(i32 %7, i32 %8)
  store %struct.trace_event_file* %9, %struct.trace_event_file** %6, align 8
  %10 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %11 = icmp ne %struct.trace_event_file* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.trace_event_file* null, %struct.trace_event_file** %3, align 8
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %15 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %16 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %15, i32 0, i32 5
  store %struct.trace_event_call* %14, %struct.trace_event_call** %16, align 8
  %17 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %18 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %19 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %18, i32 0, i32 4
  store %struct.trace_array* %17, %struct.trace_array** %19, align 8
  %20 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %21 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %20, i32 0, i32 3
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %24 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %23, i32 0, i32 2
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %27 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %26, i32 0, i32 1
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %30 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %29, i32 0, i32 0
  %31 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %32 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %31, i32 0, i32 0
  %33 = call i32 @list_add(i32* %30, i32* %32)
  %34 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  store %struct.trace_event_file* %34, %struct.trace_event_file** %3, align 8
  br label %35

35:                                               ; preds = %13, %12
  %36 = load %struct.trace_event_file*, %struct.trace_event_file** %3, align 8
  ret %struct.trace_event_file* %36
}

declare dso_local %struct.trace_event_file* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
