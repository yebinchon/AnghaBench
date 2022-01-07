; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c__free_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c__free_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__, i32 (%struct.perf_event*)*, i32, %struct.TYPE_4__, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@free_event_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @_free_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_free_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %3 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %4 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %3, i32 0, i32 10
  %5 = call i32 @irq_work_sync(i32* %4)
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = call i32 @unaccount_event(%struct.perf_event* %6)
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 8
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = call i32 @ring_buffer_attach(%struct.perf_event* %16, i32* null)
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 8
  %20 = call i32 @mutex_unlock(i32* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %23 = call i64 @is_cgroup_event(%struct.perf_event* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %27 = call i32 @perf_detach_cgroup(%struct.perf_event* %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 (...) @put_callchain_buffers()
  br label %43

43:                                               ; preds = %41, %33
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %46 = call i32 @perf_event_free_bpf_prog(%struct.perf_event* %45)
  %47 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %48 = call i32 @perf_addr_filters_splice(%struct.perf_event* %47, i32* null)
  %49 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @kfree(i32 %51)
  %53 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %54 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %53, i32 0, i32 4
  %55 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %54, align 8
  %56 = icmp ne i32 (%struct.perf_event*)* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 4
  %60 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %59, align 8
  %61 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %62 = call i32 %60(%struct.perf_event* %61)
  br label %63

63:                                               ; preds = %57, %44
  %64 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %71 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @put_task_struct(i64 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %82 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @put_ctx(i64 %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %87 = call i32 @exclusive_event_destroy(%struct.perf_event* %86)
  %88 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %89 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @module_put(i32 %92)
  %94 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %95 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %94, i32 0, i32 0
  %96 = load i32, i32* @free_event_rcu, align 4
  %97 = call i32 @call_rcu(i32* %95, i32 %96)
  ret void
}

declare dso_local i32 @irq_work_sync(i32*) #1

declare dso_local i32 @unaccount_event(%struct.perf_event*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ring_buffer_attach(%struct.perf_event*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_cgroup_event(%struct.perf_event*) #1

declare dso_local i32 @perf_detach_cgroup(%struct.perf_event*) #1

declare dso_local i32 @put_callchain_buffers(...) #1

declare dso_local i32 @perf_event_free_bpf_prog(%struct.perf_event*) #1

declare dso_local i32 @perf_addr_filters_splice(%struct.perf_event*, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @put_task_struct(i64) #1

declare dso_local i32 @put_ctx(i64) #1

declare dso_local i32 @exclusive_event_destroy(%struct.perf_event*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
