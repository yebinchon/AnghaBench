; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_sched_setaffinity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_sched_setaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.task_struct = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ESRCH = common dso_local global i64 0, align 8
@PF_NO_SETAFFINITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sched_setaffinity(i32 %0, %struct.cpumask* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.task_struct* @find_process_by_pid(i32 %11)
  store %struct.task_struct* %12, %struct.task_struct** %8, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i32 (...) @rcu_read_unlock()
  %17 = load i64, i64* @ESRCH, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %3, align 8
  br label %110

19:                                               ; preds = %2
  %20 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %21 = call i32 @get_task_struct(%struct.task_struct* %20)
  %22 = call i32 (...) @rcu_read_unlock()
  %23 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PF_NO_SETAFFINITY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %105

32:                                               ; preds = %19
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @alloc_cpumask_var(i32* %6, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %105

39:                                               ; preds = %32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @alloc_cpumask_var(i32* %7, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %102

46:                                               ; preds = %39
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %50 = call i32 @check_same_owner(%struct.task_struct* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %46
  %53 = call i32 (...) @rcu_read_lock()
  %54 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %55 = call %struct.TYPE_6__* @__task_cred(%struct.task_struct* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CAP_SYS_NICE, align 4
  %59 = call i32 @ns_capable(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = call i32 (...) @rcu_read_unlock()
  br label %99

63:                                               ; preds = %52
  %64 = call i32 (...) @rcu_read_unlock()
  br label %65

65:                                               ; preds = %63, %46
  %66 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %67 = call i32 @security_task_setscheduler(%struct.task_struct* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %99

71:                                               ; preds = %65
  %72 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @cpuset_cpus_allowed(%struct.task_struct* %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @cpumask_and(i32 %75, %struct.cpumask* %76, i32 %77)
  br label %79

79:                                               ; preds = %93, %71
  %80 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @__set_cpus_allowed_ptr(%struct.task_struct* %80, i32 %81, i32 1)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %79
  %86 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @cpuset_cpus_allowed(%struct.task_struct* %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @cpumask_subset(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @cpumask_copy(i32 %94, i32 %95)
  br label %79

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %70, %61
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @free_cpumask_var(i32 %100)
  br label %102

102:                                              ; preds = %99, %43
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @free_cpumask_var(i32 %103)
  br label %105

105:                                              ; preds = %102, %36, %29
  %106 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %107 = call i32 @put_task_struct(%struct.task_struct* %106)
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %3, align 8
  br label %110

110:                                              ; preds = %105, %15
  %111 = load i64, i64* %3, align 8
  ret i64 %111
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_process_by_pid(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @check_same_owner(%struct.task_struct*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.TYPE_6__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @security_task_setscheduler(%struct.task_struct*) #1

declare dso_local i32 @cpuset_cpus_allowed(%struct.task_struct*, i32) #1

declare dso_local i32 @cpumask_and(i32, %struct.cpumask*, i32) #1

declare dso_local i32 @__set_cpus_allowed_ptr(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @cpumask_subset(i32, i32) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
