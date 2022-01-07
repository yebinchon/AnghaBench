; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_groups_delete.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_groups_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_groups = type { i32 }
%struct.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_groups*, %struct.perf_event*)* @perf_event_groups_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_groups_delete(%struct.perf_event_groups* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.perf_event_groups*, align 8
  %4 = alloca %struct.perf_event*, align 8
  store %struct.perf_event_groups* %0, %struct.perf_event_groups** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = call i64 @RB_EMPTY_NODE(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.perf_event_groups*, %struct.perf_event_groups** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event_groups, %struct.perf_event_groups* %10, i32 0, i32 0
  %12 = call i64 @RB_EMPTY_ROOT(i32* %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ true, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  %20 = load %struct.perf_event_groups*, %struct.perf_event_groups** %3, align 8
  %21 = getelementptr inbounds %struct.perf_event_groups, %struct.perf_event_groups* %20, i32 0, i32 0
  %22 = call i32 @rb_erase(i32* %19, i32* %21)
  %23 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %24 = call i32 @init_event_group(%struct.perf_event* %23)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @RB_EMPTY_NODE(i32*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @init_event_group(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
