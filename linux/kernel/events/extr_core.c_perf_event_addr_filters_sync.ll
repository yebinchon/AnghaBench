; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_addr_filters_sync.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_addr_filters_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.perf_event*)* }
%struct.perf_addr_filters_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event_addr_filters_sync(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.perf_addr_filters_head*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %5 = call %struct.perf_addr_filters_head* @perf_event_addr_filters(%struct.perf_event* %4)
  store %struct.perf_addr_filters_head* %5, %struct.perf_addr_filters_head** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = call i32 @has_addr_filter(%struct.perf_event* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.perf_addr_filters_head*, %struct.perf_addr_filters_head** %3, align 8
  %12 = getelementptr inbounds %struct.perf_addr_filters_head, %struct.perf_addr_filters_head* %11, i32 0, i32 0
  %13 = call i32 @raw_spin_lock(i32* %12)
  %14 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %10
  %23 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %26, align 8
  %28 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %29 = call i32 %27(%struct.perf_event* %28)
  %30 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  br label %36

36:                                               ; preds = %22, %10
  %37 = load %struct.perf_addr_filters_head*, %struct.perf_addr_filters_head** %3, align 8
  %38 = getelementptr inbounds %struct.perf_addr_filters_head, %struct.perf_addr_filters_head* %37, i32 0, i32 0
  %39 = call i32 @raw_spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %36, %9
  ret void
}

declare dso_local %struct.perf_addr_filters_head* @perf_event_addr_filters(%struct.perf_event*) #1

declare dso_local i32 @has_addr_filter(%struct.perf_event*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
