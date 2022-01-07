; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_context_sched_out.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_context_sched_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.perf_event_context** }
%struct.perf_event_context = type { i32, i32, i32, i32 }
%struct.perf_cpu_context = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@EVENT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.task_struct*)* @perf_event_context_sched_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_context_sched_out(%struct.task_struct* %0, i32 %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca %struct.perf_event_context*, align 8
  %9 = alloca %struct.perf_event_context*, align 8
  %10 = alloca %struct.perf_event_context*, align 8
  %11 = alloca %struct.perf_cpu_context*, align 8
  %12 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load %struct.perf_event_context**, %struct.perf_event_context*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %15, i64 %17
  %19 = load %struct.perf_event_context*, %struct.perf_event_context** %18, align 8
  store %struct.perf_event_context* %19, %struct.perf_event_context** %7, align 8
  store i32 1, i32* %12, align 4
  %20 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %21 = icmp ne %struct.perf_event_context* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %148

27:                                               ; preds = %3
  %28 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %29 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %28)
  store %struct.perf_cpu_context* %29, %struct.perf_cpu_context** %11, align 8
  %30 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %11, align 8
  %31 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %148

35:                                               ; preds = %27
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = load %struct.perf_event_context**, %struct.perf_event_context*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %39, i64 %41
  %43 = load %struct.perf_event_context*, %struct.perf_event_context** %42, align 8
  store %struct.perf_event_context* %43, %struct.perf_event_context** %8, align 8
  %44 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %45 = icmp ne %struct.perf_event_context* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  br label %133

47:                                               ; preds = %35
  %48 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %49 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.perf_event_context* @rcu_dereference(i32 %50)
  store %struct.perf_event_context* %51, %struct.perf_event_context** %9, align 8
  %52 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %53 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.perf_event_context* @rcu_dereference(i32 %54)
  store %struct.perf_event_context* %55, %struct.perf_event_context** %10, align 8
  %56 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %57 = icmp ne %struct.perf_event_context* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %60 = icmp ne %struct.perf_event_context* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %133

62:                                               ; preds = %58, %47
  %63 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %64 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %65 = icmp eq %struct.perf_event_context* %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %68 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %69 = icmp eq %struct.perf_event_context* %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %72 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %73 = icmp eq %struct.perf_event_context* %71, %72
  br i1 %73, label %74, label %132

74:                                               ; preds = %70, %66, %62
  %75 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %76 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %75, i32 0, i32 0
  %77 = call i32 @raw_spin_lock(i32* %76)
  %78 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %79 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %78, i32 0, i32 0
  %80 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %81 = call i32 @raw_spin_lock_nested(i32* %79, i32 %80)
  %82 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %83 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %84 = call i64 @context_equiv(%struct.perf_event_context* %82, %struct.perf_event_context* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %125

86:                                               ; preds = %74
  %87 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %88 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %91 = call i32 @WRITE_ONCE(i32 %89, %struct.task_struct* %90)
  %92 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %93 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %96 = call i32 @WRITE_ONCE(i32 %94, %struct.task_struct* %95)
  %97 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %98 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %101 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @swap(i32 %99, i32 %102)
  %104 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %105 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %104, i32 0, i32 0
  %106 = load %struct.perf_event_context**, %struct.perf_event_context*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %106, i64 %108
  %110 = load %struct.perf_event_context*, %struct.perf_event_context** %109, align 8
  %111 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %112 = call i32 @RCU_INIT_POINTER(%struct.perf_event_context* %110, %struct.perf_event_context* %111)
  %113 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %114 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %113, i32 0, i32 0
  %115 = load %struct.perf_event_context**, %struct.perf_event_context*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %115, i64 %117
  %119 = load %struct.perf_event_context*, %struct.perf_event_context** %118, align 8
  %120 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %121 = call i32 @RCU_INIT_POINTER(%struct.perf_event_context* %119, %struct.perf_event_context* %120)
  store i32 0, i32* %12, align 4
  %122 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %123 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %124 = call i32 @perf_event_sync_stat(%struct.perf_event_context* %122, %struct.perf_event_context* %123)
  br label %125

125:                                              ; preds = %86, %74
  %126 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %127 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %126, i32 0, i32 0
  %128 = call i32 @raw_spin_unlock(i32* %127)
  %129 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %130 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %129, i32 0, i32 0
  %131 = call i32 @raw_spin_unlock(i32* %130)
  br label %132

132:                                              ; preds = %125, %70
  br label %133

133:                                              ; preds = %132, %61, %46
  %134 = call i32 (...) @rcu_read_unlock()
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %139 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %138, i32 0, i32 0
  %140 = call i32 @raw_spin_lock(i32* %139)
  %141 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %11, align 8
  %142 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %143 = load i32, i32* @EVENT_ALL, align 4
  %144 = call i32 @task_ctx_sched_out(%struct.perf_cpu_context* %141, %struct.perf_event_context* %142, i32 %143)
  %145 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %146 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %145, i32 0, i32 0
  %147 = call i32 @raw_spin_unlock(i32* %146)
  br label %148

148:                                              ; preds = %26, %34, %137, %133
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.perf_event_context* @rcu_dereference(i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_lock_nested(i32*, i32) #1

declare dso_local i64 @context_equiv(%struct.perf_event_context*, %struct.perf_event_context*) #1

declare dso_local i32 @WRITE_ONCE(i32, %struct.task_struct*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.perf_event_context*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_event_sync_stat(%struct.perf_event_context*, %struct.perf_event_context*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @task_ctx_sched_out(%struct.perf_cpu_context*, %struct.perf_event_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
