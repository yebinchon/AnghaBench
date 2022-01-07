; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_find_swevent_head.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_find_swevent_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.swevent_htable = type { i32 }
%struct.perf_event = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.swevent_hlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.swevent_htable*, %struct.perf_event*)* @find_swevent_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @find_swevent_head(%struct.swevent_htable* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.hlist_head*, align 8
  %4 = alloca %struct.swevent_htable*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.swevent_hlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.swevent_htable* %0, %struct.swevent_htable** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.swevent_htable*, %struct.swevent_htable** %4, align 8
  %18 = getelementptr inbounds %struct.swevent_htable, %struct.swevent_htable* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @lockdep_is_held(i32* %23)
  %25 = call %struct.swevent_hlist* @rcu_dereference_protected(i32 %19, i32 %24)
  store %struct.swevent_hlist* %25, %struct.swevent_hlist** %6, align 8
  %26 = load %struct.swevent_hlist*, %struct.swevent_hlist** %6, align 8
  %27 = icmp ne %struct.swevent_hlist* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store %struct.hlist_head* null, %struct.hlist_head** %3, align 8
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.swevent_hlist*, %struct.swevent_hlist** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.hlist_head* @__find_swevent_head(%struct.swevent_hlist* %30, i32 %31, i32 %32)
  store %struct.hlist_head* %33, %struct.hlist_head** %3, align 8
  br label %34

34:                                               ; preds = %29, %28
  %35 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  ret %struct.hlist_head* %35
}

declare dso_local %struct.swevent_hlist* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.hlist_head* @__find_swevent_head(%struct.swevent_hlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
