; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_ctx_activate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_ctx_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i32 }
%struct.list_head = type { i32 }

@active_ctx_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_context*)* @perf_event_ctx_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_ctx_activate(%struct.perf_event_context* %0) #0 {
  %2 = alloca %struct.perf_event_context*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.perf_event_context* %0, %struct.perf_event_context** %2, align 8
  %4 = call %struct.list_head* @this_cpu_ptr(i32* @active_ctx_list)
  store %struct.list_head* %4, %struct.list_head** %3, align 8
  %5 = call i32 (...) @lockdep_assert_irqs_disabled()
  %6 = load %struct.perf_event_context*, %struct.perf_event_context** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %6, i32 0, i32 0
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %13, i32 0, i32 0
  %15 = load %struct.list_head*, %struct.list_head** %3, align 8
  %16 = call i32 @list_add(i32* %14, %struct.list_head* %15)
  ret void
}

declare dso_local %struct.list_head* @this_cpu_ptr(i32*) #1

declare dso_local i32 @lockdep_assert_irqs_disabled(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
