; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_check_preempt_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_check_preempt_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.task_struct*, %struct.task_struct* }
%struct.task_struct = type { i64, %struct.sched_entity }
%struct.sched_entity = type { i32 }
%struct.cfs_rq = type { i64 }

@sched_nr_latency = common dso_local global i64 0, align 8
@NEXT_BUDDY = common dso_local global i32 0, align 4
@WF_FORK = common dso_local global i32 0, align 4
@SCHED_NORMAL = common dso_local global i64 0, align 8
@WAKEUP_PREEMPTION = common dso_local global i32 0, align 4
@LAST_BUDDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, i32)* @check_preempt_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_preempt_wakeup(%struct.rq* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.sched_entity*, align 8
  %9 = alloca %struct.sched_entity*, align 8
  %10 = alloca %struct.cfs_rq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.rq*, %struct.rq** %4, align 8
  %14 = getelementptr inbounds %struct.rq, %struct.rq* %13, i32 0, i32 1
  %15 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  store %struct.task_struct* %15, %struct.task_struct** %7, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 1
  store %struct.sched_entity* %17, %struct.sched_entity** %8, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 1
  store %struct.sched_entity* %19, %struct.sched_entity** %9, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = call %struct.cfs_rq* @task_cfs_rq(%struct.task_struct* %20)
  store %struct.cfs_rq* %21, %struct.cfs_rq** %10, align 8
  %22 = load %struct.cfs_rq*, %struct.cfs_rq** %10, align 8
  %23 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @sched_nr_latency, align 8
  %26 = icmp sge i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %29 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %30 = icmp eq %struct.sched_entity* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %145

35:                                               ; preds = %3
  %36 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %37 = call i32 @cfs_rq_of(%struct.sched_entity* %36)
  %38 = call i32 @throttled_hierarchy(i32 %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %145

42:                                               ; preds = %35
  %43 = load i32, i32* @NEXT_BUDDY, align 4
  %44 = call i64 @sched_feat(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @WF_FORK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %56 = call i32 @set_next_buddy(%struct.sched_entity* %55)
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %49, %46, %42
  %58 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %59 = call i64 @test_tsk_need_resched(%struct.task_struct* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %145

62:                                               ; preds = %57
  %63 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %64 = call i32 @task_has_idle_policy(%struct.task_struct* %63)
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %69 = call i32 @task_has_idle_policy(%struct.task_struct* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @likely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %112

76:                                               ; preds = %67, %62
  %77 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SCHED_NORMAL, align 8
  %81 = icmp ne i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @WAKEUP_PREEMPTION, align 4
  %87 = call i64 @sched_feat(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85, %76
  br label %145

90:                                               ; preds = %85
  %91 = call i32 @find_matching_se(%struct.sched_entity** %8, %struct.sched_entity** %9)
  %92 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %93 = call i32 @cfs_rq_of(%struct.sched_entity* %92)
  %94 = call i32 @update_curr(i32 %93)
  %95 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %96 = icmp ne %struct.sched_entity* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @BUG_ON(i32 %98)
  %100 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %101 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %102 = call i32 @wakeup_preempt_entity(%struct.sched_entity* %100, %struct.sched_entity* %101)
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %111

104:                                              ; preds = %90
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %109 = call i32 @set_next_buddy(%struct.sched_entity* %108)
  br label %110

110:                                              ; preds = %107, %104
  br label %112

111:                                              ; preds = %90
  br label %145

112:                                              ; preds = %110, %75
  %113 = load %struct.rq*, %struct.rq** %4, align 8
  %114 = call i32 @resched_curr(%struct.rq* %113)
  %115 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %116 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %121 = load %struct.rq*, %struct.rq** %4, align 8
  %122 = getelementptr inbounds %struct.rq, %struct.rq* %121, i32 0, i32 0
  %123 = load %struct.task_struct*, %struct.task_struct** %122, align 8
  %124 = icmp eq %struct.task_struct* %120, %123
  br label %125

125:                                              ; preds = %119, %112
  %126 = phi i1 [ true, %112 ], [ %124, %119 ]
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %145

131:                                              ; preds = %125
  %132 = load i32, i32* @LAST_BUDDY, align 4
  %133 = call i64 @sched_feat(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %140 = call i64 @entity_is_task(%struct.sched_entity* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %144 = call i32 @set_last_buddy(%struct.sched_entity* %143)
  br label %145

145:                                              ; preds = %34, %41, %61, %89, %111, %130, %142, %138, %135, %131
  ret void
}

declare dso_local %struct.cfs_rq* @task_cfs_rq(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @throttled_hierarchy(i32) #1

declare dso_local i32 @cfs_rq_of(%struct.sched_entity*) #1

declare dso_local i64 @sched_feat(i32) #1

declare dso_local i32 @set_next_buddy(%struct.sched_entity*) #1

declare dso_local i64 @test_tsk_need_resched(%struct.task_struct*) #1

declare dso_local i32 @task_has_idle_policy(%struct.task_struct*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @find_matching_se(%struct.sched_entity**, %struct.sched_entity**) #1

declare dso_local i32 @update_curr(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wakeup_preempt_entity(%struct.sched_entity*, %struct.sched_entity*) #1

declare dso_local i32 @resched_curr(%struct.rq*) #1

declare dso_local i64 @entity_is_task(%struct.sched_entity*) #1

declare dso_local i32 @set_last_buddy(%struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
