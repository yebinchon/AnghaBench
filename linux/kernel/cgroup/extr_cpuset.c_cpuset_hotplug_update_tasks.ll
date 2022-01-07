; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_hotplug_update_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_hotplug_update_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i64, i64, i32, i32, i32, i64, i32 }
%struct.tmpmasks = type { i32 }

@cpuset_hotplug_update_tasks.new_cpus = internal global i32 0, align 4
@cpuset_hotplug_update_tasks.new_mems = internal global i32 0, align 4
@cpuset_attach_wq = common dso_local global i32 0, align 4
@cpuset_rwsem = common dso_local global i32 0, align 4
@PRS_ERROR = common dso_local global i64 0, align 8
@partcmd_disable = common dso_local global i32 0, align 4
@partcmd_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuset*, %struct.tmpmasks*)* @cpuset_hotplug_update_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_hotplug_update_tasks(%struct.cpuset* %0, %struct.tmpmasks* %1) #0 {
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca %struct.tmpmasks*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpuset*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  store %struct.tmpmasks* %1, %struct.tmpmasks** %4, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* @cpuset_attach_wq, align 4
  %10 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %11 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @wait_event(i32 %9, i32 %14)
  %16 = call i32 @percpu_down_write(i32* @cpuset_rwsem)
  %17 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %18 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  %22 = call i32 @percpu_up_write(i32* @cpuset_rwsem)
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %25 = call %struct.cpuset* @parent_cs(%struct.cpuset* %24)
  store %struct.cpuset* %25, %struct.cpuset** %7, align 8
  %26 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %27 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %28 = call i32 @compute_effective_cpumask(i32* @cpuset_hotplug_update_tasks.new_cpus, %struct.cpuset* %26, %struct.cpuset* %27)
  %29 = load i32, i32* @cpuset_hotplug_update_tasks.new_mems, align 4
  %30 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %31 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %34 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @nodes_and(i32 %29, i32 %32, i32 %35)
  %37 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %38 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %43 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cpumask_andnot(i32* @cpuset_hotplug_update_tasks.new_cpus, i32* @cpuset_hotplug_update_tasks.new_cpus, i32 %44)
  br label %46

46:                                               ; preds = %41, %23
  %47 = load %struct.tmpmasks*, %struct.tmpmasks** %4, align 8
  %48 = icmp ne %struct.tmpmasks* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %51 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %46
  br label %127

55:                                               ; preds = %49
  %56 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %57 = call i64 @is_partition_root(%struct.cpuset* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %55
  %60 = call i64 @cpumask_empty(i32* @cpuset_hotplug_update_tasks.new_cpus)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %64 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PRS_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %102

68:                                               ; preds = %62, %59
  %69 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %70 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %75 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %77 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @cpumask_clear(i32 %78)
  %80 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %81 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %82 = call i32 @compute_effective_cpumask(i32* @cpuset_hotplug_update_tasks.new_cpus, %struct.cpuset* %80, %struct.cpuset* %81)
  br label %83

83:                                               ; preds = %73, %68
  %84 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %85 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PRS_ERROR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = call i64 @cpumask_empty(i32* @cpuset_hotplug_update_tasks.new_cpus)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89, %83
  %93 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %94 = load i32, i32* @partcmd_disable, align 4
  %95 = load %struct.tmpmasks*, %struct.tmpmasks** %4, align 8
  %96 = call i64 @update_parent_subparts_cpumask(%struct.cpuset* %93, i32 %94, i32* null, %struct.tmpmasks* %95)
  %97 = load i64, i64* @PRS_ERROR, align 8
  %98 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %99 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %92, %89
  %101 = call i32 (...) @cpuset_force_rebuild()
  br label %102

102:                                              ; preds = %100, %62, %55
  %103 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %104 = call i64 @is_partition_root(%struct.cpuset* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %102
  %107 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %108 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PRS_ERROR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %114 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @cpumask_intersects(i32* @cpuset_hotplug_update_tasks.new_cpus, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %120 = load i32, i32* @partcmd_update, align 4
  %121 = load %struct.tmpmasks*, %struct.tmpmasks** %4, align 8
  %122 = call i64 @update_parent_subparts_cpumask(%struct.cpuset* %119, i32 %120, i32* null, %struct.tmpmasks* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = call i32 (...) @cpuset_force_rebuild()
  br label %126

126:                                              ; preds = %124, %118, %112, %102
  br label %127

127:                                              ; preds = %126, %54
  %128 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %129 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @cpumask_equal(i32* @cpuset_hotplug_update_tasks.new_cpus, i32 %130)
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* @cpuset_hotplug_update_tasks.new_mems, align 4
  %136 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %137 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @nodes_equal(i32 %135, i32 %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %6, align 4
  %143 = call i64 (...) @is_in_v2_mode()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %127
  %146 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @hotplug_update_tasks(%struct.cpuset* %146, i32* @cpuset_hotplug_update_tasks.new_cpus, i32* @cpuset_hotplug_update_tasks.new_mems, i32 %147, i32 %148)
  br label %155

150:                                              ; preds = %127
  %151 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @hotplug_update_tasks_legacy(%struct.cpuset* %151, i32* @cpuset_hotplug_update_tasks.new_cpus, i32* @cpuset_hotplug_update_tasks.new_mems, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = call i32 @percpu_up_write(i32* @cpuset_rwsem)
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @percpu_down_write(i32*) #1

declare dso_local i32 @percpu_up_write(i32*) #1

declare dso_local %struct.cpuset* @parent_cs(%struct.cpuset*) #1

declare dso_local i32 @compute_effective_cpumask(i32*, %struct.cpuset*, %struct.cpuset*) #1

declare dso_local i32 @nodes_and(i32, i32, i32) #1

declare dso_local i32 @cpumask_andnot(i32*, i32*, i32) #1

declare dso_local i64 @is_partition_root(%struct.cpuset*) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i32 @cpumask_clear(i32) #1

declare dso_local i64 @update_parent_subparts_cpumask(%struct.cpuset*, i32, i32*, %struct.tmpmasks*) #1

declare dso_local i32 @cpuset_force_rebuild(...) #1

declare dso_local i32 @cpumask_intersects(i32*, i32) #1

declare dso_local i32 @cpumask_equal(i32*, i32) #1

declare dso_local i32 @nodes_equal(i32, i32) #1

declare dso_local i64 @is_in_v2_mode(...) #1

declare dso_local i32 @hotplug_update_tasks(%struct.cpuset*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hotplug_update_tasks_legacy(%struct.cpuset*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
