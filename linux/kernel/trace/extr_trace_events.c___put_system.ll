; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___put_system.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___put_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_subsystem = type { i32, %struct.event_subsystem*, i32, %struct.event_subsystem* }
%struct.event_filter = type { i32, %struct.event_filter*, i32, %struct.event_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_subsystem*)* @__put_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__put_system(%struct.event_subsystem* %0) #0 {
  %2 = alloca %struct.event_subsystem*, align 8
  %3 = alloca %struct.event_filter*, align 8
  store %struct.event_subsystem* %0, %struct.event_subsystem** %2, align 8
  %4 = load %struct.event_subsystem*, %struct.event_subsystem** %2, align 8
  %5 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %4, i32 0, i32 3
  %6 = load %struct.event_subsystem*, %struct.event_subsystem** %5, align 8
  %7 = bitcast %struct.event_subsystem* %6 to %struct.event_filter*
  store %struct.event_filter* %7, %struct.event_filter** %3, align 8
  %8 = load %struct.event_subsystem*, %struct.event_subsystem** %2, align 8
  %9 = call i64 @system_refcount(%struct.event_subsystem* %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.event_subsystem*, %struct.event_subsystem** %2, align 8
  %14 = call i64 @system_refcount_dec(%struct.event_subsystem* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.event_subsystem*, %struct.event_subsystem** %2, align 8
  %19 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %18, i32 0, i32 2
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %22 = icmp ne %struct.event_filter* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %25 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %24, i32 0, i32 1
  %26 = load %struct.event_filter*, %struct.event_filter** %25, align 8
  %27 = bitcast %struct.event_filter* %26 to %struct.event_subsystem*
  %28 = call i32 @kfree(%struct.event_subsystem* %27)
  %29 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %30 = bitcast %struct.event_filter* %29 to %struct.event_subsystem*
  %31 = call i32 @kfree(%struct.event_subsystem* %30)
  br label %32

32:                                               ; preds = %23, %17
  %33 = load %struct.event_subsystem*, %struct.event_subsystem** %2, align 8
  %34 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kfree_const(i32 %35)
  %37 = load %struct.event_subsystem*, %struct.event_subsystem** %2, align 8
  %38 = call i32 @kfree(%struct.event_subsystem* %37)
  br label %39

39:                                               ; preds = %32, %16
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @system_refcount(%struct.event_subsystem*) #1

declare dso_local i64 @system_refcount_dec(%struct.event_subsystem*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.event_subsystem*) #1

declare dso_local i32 @kfree_const(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
