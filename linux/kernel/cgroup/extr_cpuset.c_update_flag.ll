; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_flag.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@callback_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpuset*, i32)* @update_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_flag(i32 %0, %struct.cpuset* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpuset*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cpuset* %1, %struct.cpuset** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %13 = call %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset* %12)
  store %struct.cpuset* %13, %struct.cpuset** %8, align 8
  %14 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %15 = icmp ne %struct.cpuset* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %88

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %25 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  br label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %30 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %29, i32 0, i32 1
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %34 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %35 = call i32 @validate_change(%struct.cpuset* %33, %struct.cpuset* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %84

39:                                               ; preds = %32
  %40 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %41 = call i64 @is_sched_load_balance(%struct.cpuset* %40)
  %42 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %43 = call i64 @is_sched_load_balance(%struct.cpuset* %42)
  %44 = icmp ne i64 %41, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %47 = call i64 @is_spread_slab(%struct.cpuset* %46)
  %48 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %49 = call i64 @is_spread_slab(%struct.cpuset* %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %39
  %52 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %53 = call i64 @is_spread_page(%struct.cpuset* %52)
  %54 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %55 = call i64 @is_spread_page(%struct.cpuset* %54)
  %56 = icmp ne i64 %53, %55
  br label %57

57:                                               ; preds = %51, %39
  %58 = phi i1 [ true, %39 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = call i32 @spin_lock_irq(i32* @callback_lock)
  %61 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %62 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %65 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = call i32 @spin_unlock_irq(i32* @callback_lock)
  %67 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %68 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cpumask_empty(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (...) @rebuild_sched_domains_locked()
  br label %77

77:                                               ; preds = %75, %72, %57
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %82 = call i32 @update_tasks_flags(%struct.cpuset* %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %38
  %85 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %86 = call i32 @free_cpuset(%struct.cpuset* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %16
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @validate_change(%struct.cpuset*, %struct.cpuset*) #1

declare dso_local i64 @is_sched_load_balance(%struct.cpuset*) #1

declare dso_local i64 @is_spread_slab(%struct.cpuset*) #1

declare dso_local i64 @is_spread_page(%struct.cpuset*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @rebuild_sched_domains_locked(...) #1

declare dso_local i32 @update_tasks_flags(%struct.cpuset*) #1

declare dso_local i32 @free_cpuset(%struct.cpuset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
