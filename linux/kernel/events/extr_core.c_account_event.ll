; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_account_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_account_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@PERF_ATTACH_TASK = common dso_local global i32 0, align 4
@nr_mmap_events = common dso_local global i32 0, align 4
@nr_comm_events = common dso_local global i32 0, align 4
@nr_namespaces_events = common dso_local global i32 0, align 4
@nr_task_events = common dso_local global i32 0, align 4
@nr_switch_events = common dso_local global i32 0, align 4
@nr_ksymbol_events = common dso_local global i32 0, align 4
@nr_bpf_events = common dso_local global i32 0, align 4
@perf_sched_count = common dso_local global i32 0, align 4
@perf_sched_mutex = common dso_local global i32 0, align 4
@perf_sched_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @account_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %123

9:                                                ; preds = %1
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %9
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %25 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %17
  %30 = call i32 @atomic_inc(i32* @nr_mmap_events)
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @atomic_inc(i32* @nr_comm_events)
  br label %39

39:                                               ; preds = %37, %31
  %40 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 @atomic_inc(i32* @nr_namespaces_events)
  br label %47

47:                                               ; preds = %45, %39
  %48 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @atomic_inc(i32* @nr_task_events)
  br label %55

55:                                               ; preds = %53, %47
  %56 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %57 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 (...) @account_freq_event()
  br label %63

63:                                               ; preds = %61, %55
  %64 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @atomic_inc(i32* @nr_switch_events)
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %63
  %72 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %73 = call i64 @has_branch_stack(%struct.perf_event* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %78 = call i64 @is_cgroup_event(%struct.perf_event* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %76
  %82 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %83 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 @atomic_inc(i32* @nr_ksymbol_events)
  br label %89

89:                                               ; preds = %87, %81
  %90 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %91 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 @atomic_inc(i32* @nr_bpf_events)
  br label %97

97:                                               ; preds = %95, %89
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = call i64 @atomic_inc_not_zero(i32* @perf_sched_count)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %115

104:                                              ; preds = %100
  %105 = call i32 @mutex_lock(i32* @perf_sched_mutex)
  %106 = call i32 @atomic_read(i32* @perf_sched_count)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = call i32 @static_branch_enable(i32* @perf_sched_events)
  %110 = call i32 (...) @synchronize_rcu()
  br label %111

111:                                              ; preds = %108, %104
  %112 = call i32 @atomic_inc(i32* @perf_sched_count)
  %113 = call i32 @mutex_unlock(i32* @perf_sched_mutex)
  br label %114

114:                                              ; preds = %111, %97
  br label %115

115:                                              ; preds = %114, %103
  %116 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %117 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %118 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @account_event_cpu(%struct.perf_event* %116, i32 %119)
  %121 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %122 = call i32 @account_pmu_sb_event(%struct.perf_event* %121)
  br label %123

123:                                              ; preds = %115, %8
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @account_freq_event(...) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i64 @is_cgroup_event(%struct.perf_event*) #1

declare dso_local i64 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @static_branch_enable(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @account_event_cpu(%struct.perf_event*, i32) #1

declare dso_local i32 @account_pmu_sb_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
