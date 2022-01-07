; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_swevent_add.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_swevent_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }
%struct.swevent_htable = type { i32 }
%struct.hlist_head = type { i32 }

@swevent_htable = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @perf_swevent_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_swevent_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.swevent_htable*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca %struct.hlist_head*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.swevent_htable* @this_cpu_ptr(i32* @swevent_htable)
  store %struct.swevent_htable* %9, %struct.swevent_htable** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %7, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %13 = call i64 @is_sampling_event(%struct.perf_event* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = call i32 @perf_swevent_set_period(%struct.perf_event* %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PERF_EF_START, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.swevent_htable*, %struct.swevent_htable** %6, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %34 = call %struct.hlist_head* @find_swevent_head(%struct.swevent_htable* %32, %struct.perf_event* %33)
  store %struct.hlist_head* %34, %struct.hlist_head** %8, align 8
  %35 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %36 = icmp ne %struct.hlist_head* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON_ONCE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %23
  %45 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 0
  %47 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %48 = call i32 @hlist_add_head_rcu(i32* %46, %struct.hlist_head* %47)
  %49 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %50 = call i32 @perf_event_update_userpage(%struct.perf_event* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.swevent_htable* @this_cpu_ptr(i32*) #1

declare dso_local i64 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @perf_swevent_set_period(%struct.perf_event*) #1

declare dso_local %struct.hlist_head* @find_swevent_head(%struct.swevent_htable*, %struct.perf_event*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
