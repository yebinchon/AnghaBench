; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ring_buffer_attach.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ring_buffer_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.ring_buffer*, i32, i32 }
%struct.ring_buffer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.ring_buffer*)* @ring_buffer_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_buffer_attach(%struct.perf_event* %0, %struct.ring_buffer* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.ring_buffer* %1, %struct.ring_buffer** %4, align 8
  store %struct.ring_buffer* null, %struct.ring_buffer** %5, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 2
  %9 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %10 = icmp ne %struct.ring_buffer* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @WARN_ON_ONCE(i32 %14)
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 2
  %18 = load %struct.ring_buffer*, %struct.ring_buffer** %17, align 8
  store %struct.ring_buffer* %18, %struct.ring_buffer** %5, align 8
  %19 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 3
  %25 = call i32 @list_del_rcu(i32* %24)
  %26 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = call i32 (...) @get_state_synchronize_rcu()
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %11, %2
  %36 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %37 = icmp ne %struct.ring_buffer* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cond_synchronize_rcu(i32 %46)
  %48 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %51, i32 0, i32 0
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 3
  %57 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %58 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %57, i32 0, i32 1
  %59 = call i32 @list_add_rcu(i32* %56, i32* %58)
  %60 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %61 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %60, i32 0, i32 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %50, %35
  %65 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %66 = call i64 @has_aux(%struct.perf_event* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %70 = call i32 @perf_event_stop(%struct.perf_event* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %73 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %72, i32 0, i32 2
  %74 = load %struct.ring_buffer*, %struct.ring_buffer** %73, align 8
  %75 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %76 = call i32 @rcu_assign_pointer(%struct.ring_buffer* %74, %struct.ring_buffer* %75)
  %77 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %78 = icmp ne %struct.ring_buffer* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %81 = call i32 @ring_buffer_put(%struct.ring_buffer* %80)
  %82 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %83 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %82, i32 0, i32 1
  %84 = call i32 @wake_up_all(i32* %83)
  br label %85

85:                                               ; preds = %79, %71
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @get_state_synchronize_rcu(...) #1

declare dso_local i32 @cond_synchronize_rcu(i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i64 @has_aux(%struct.perf_event*) #1

declare dso_local i32 @perf_event_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.ring_buffer*, %struct.ring_buffer*) #1

declare dso_local i32 @ring_buffer_put(%struct.ring_buffer*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
