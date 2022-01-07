; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_list_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_list_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__, i32, i32, i32, %struct.perf_event*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.perf_event_context = type { i32, i32, i32, i32, i32 }

@PERF_ATTACH_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_event_context*)* @list_add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_add_event(%struct.perf_event* %0, %struct.perf_event_context* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %4, align 8
  %5 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %6 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %5, i32 0, i32 4
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PERF_ATTACH_CONTEXT, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load i32, i32* @PERF_ATTACH_CONTEXT, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = call i32 @perf_event_time(%struct.perf_event* %19)
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 5
  %25 = load %struct.perf_event*, %struct.perf_event** %24, align 8
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = icmp eq %struct.perf_event* %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %36 = call i32 @add_event_to_groups(%struct.perf_event* %34, %struct.perf_event_context* %35)
  br label %37

37:                                               ; preds = %28, %2
  %38 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %39 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %40 = call i32 @list_update_cgroup_event(%struct.perf_event* %38, %struct.perf_event_context* %39, i32 1)
  %41 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 2
  %43 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %43, i32 0, i32 3
  %45 = call i32 @list_add_rcu(i32* %42, i32* %44)
  %46 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %47 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %37
  %56 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %57 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %37
  %61 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %62 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @perf_event_time(%struct.perf_event*) #1

declare dso_local i32 @add_event_to_groups(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @list_update_cgroup_event(%struct.perf_event*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
