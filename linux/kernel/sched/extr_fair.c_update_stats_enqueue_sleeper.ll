; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_stats_enqueue_sleeper.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_stats_enqueue_sleeper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32 }
%struct.sched_entity = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { i64 }

@prof_on = common dso_local global i64 0, align 8
@SLEEP_PROFILING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @update_stats_enqueue_sleeper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stats_enqueue_sleeper(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  store %struct.task_struct* null, %struct.task_struct** %5, align 8
  %10 = call i32 (...) @schedstat_enabled()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %173

13:                                               ; preds = %2
  %14 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %15 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @schedstat_val(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %20 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @schedstat_val(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %25 = call i64 @entity_is_task(%struct.sched_entity* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %29 = call %struct.task_struct* @task_of(%struct.sched_entity* %28)
  store %struct.task_struct* %29, %struct.task_struct** %5, align 8
  br label %30

30:                                               ; preds = %27, %13
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %30
  %34 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %35 = call i32 @rq_of(%struct.cfs_rq* %34)
  %36 = call i32 @rq_clock(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %46 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @schedstat_val(i32 %48)
  %50 = icmp sgt i32 %44, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %56 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @__schedstat_set(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %43
  %62 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %63 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__schedstat_set(i32 %65, i32 0)
  %67 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %68 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @__schedstat_add(i32 %70, i32 %71)
  %73 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %74 = icmp ne %struct.task_struct* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %61
  %76 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = ashr i32 %77, 10
  %79 = call i32 @account_scheduler_latency(%struct.task_struct* %76, i32 %78, i32 1)
  %80 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @trace_sched_stat_sleep(%struct.task_struct* %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %61
  br label %84

84:                                               ; preds = %83, %30
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %173

87:                                               ; preds = %84
  %88 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %89 = call i32 @rq_of(%struct.cfs_rq* %88)
  %90 = call i32 @rq_clock(i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %87
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %100 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @schedstat_val(i32 %102)
  %104 = icmp sgt i32 %98, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %97
  %109 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %110 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @__schedstat_set(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %97
  %116 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %117 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @__schedstat_set(i32 %119, i32 0)
  %121 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %122 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @__schedstat_add(i32 %124, i32 %125)
  %127 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %128 = icmp ne %struct.task_struct* %127, null
  br i1 %128, label %129, label %172

129:                                              ; preds = %115
  %130 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %131 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %129
  %135 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %136 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @__schedstat_add(i32 %138, i32 %139)
  %141 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %142 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @__schedstat_inc(i32 %144)
  %146 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @trace_sched_stat_iowait(%struct.task_struct* %146, i32 %147)
  br label %149

149:                                              ; preds = %134, %129
  %150 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @trace_sched_stat_blocked(%struct.task_struct* %150, i32 %151)
  %153 = load i64, i64* @prof_on, align 8
  %154 = load i64, i64* @SLEEP_PROFILING, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %149
  %160 = load i64, i64* @SLEEP_PROFILING, align 8
  %161 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %162 = call i64 @get_wchan(%struct.task_struct* %161)
  %163 = inttoptr i64 %162 to i8*
  %164 = load i32, i32* %9, align 4
  %165 = ashr i32 %164, 20
  %166 = call i32 @profile_hits(i64 %160, i8* %163, i32 %165)
  br label %167

167:                                              ; preds = %159, %149
  %168 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %169 = load i32, i32* %9, align 4
  %170 = ashr i32 %169, 10
  %171 = call i32 @account_scheduler_latency(%struct.task_struct* %168, i32 %170, i32 0)
  br label %172

172:                                              ; preds = %167, %115
  br label %173

173:                                              ; preds = %12, %172, %84
  ret void
}

declare dso_local i32 @schedstat_enabled(...) #1

declare dso_local i32 @schedstat_val(i32) #1

declare dso_local i64 @entity_is_task(%struct.sched_entity*) #1

declare dso_local %struct.task_struct* @task_of(%struct.sched_entity*) #1

declare dso_local i32 @rq_clock(i32) #1

declare dso_local i32 @rq_of(%struct.cfs_rq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__schedstat_set(i32, i32) #1

declare dso_local i32 @__schedstat_add(i32, i32) #1

declare dso_local i32 @account_scheduler_latency(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @trace_sched_stat_sleep(%struct.task_struct*, i32) #1

declare dso_local i32 @__schedstat_inc(i32) #1

declare dso_local i32 @trace_sched_stat_iowait(%struct.task_struct*, i32) #1

declare dso_local i32 @trace_sched_stat_blocked(%struct.task_struct*, i32) #1

declare dso_local i32 @profile_hits(i64, i8*, i32) #1

declare dso_local i64 @get_wchan(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
