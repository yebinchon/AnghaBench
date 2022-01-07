; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_list_del_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_list_del_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i64, %struct.perf_event*, i32, %struct.TYPE_2__, %struct.perf_event_context* }
%struct.TYPE_2__ = type { i64 }
%struct.perf_event_context = type { i32, i32, i32, i32 }

@PERF_ATTACH_CONTEXT = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_event_context*)* @list_del_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_del_event(%struct.perf_event* %0, %struct.perf_event_context* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %4, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 5
  %7 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %8 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %9 = icmp ne %struct.perf_event_context* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %12, i32 0, i32 3
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PERF_ATTACH_CONTEXT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %74

22:                                               ; preds = %2
  %23 = load i32, i32* @PERF_ATTACH_CONTEXT, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %31 = call i32 @list_update_cgroup_event(%struct.perf_event* %29, %struct.perf_event_context* %30, i32 0)
  %32 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %33 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %22
  %42 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %43 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %22
  %47 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 3
  %49 = call i32 @list_del_rcu(i32* %48)
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 2
  %52 = load %struct.perf_event*, %struct.perf_event** %51, align 8
  %53 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %54 = icmp eq %struct.perf_event* %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %57 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %58 = call i32 @del_event_from_groups(%struct.perf_event* %56, %struct.perf_event_context* %57)
  br label %59

59:                                               ; preds = %55, %46
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %67 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %68 = call i32 @perf_event_set_state(%struct.perf_event* %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %71 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %21
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_update_cgroup_event(%struct.perf_event*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @del_event_from_groups(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_event_set_state(%struct.perf_event*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
