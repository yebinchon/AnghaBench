; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_update_unbound_numa.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_update_unbound_numa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_attrs = type { i32* }
%struct.workqueue_struct = type { i32, i32, %struct.pool_workqueue*, i32, %struct.TYPE_6__* }
%struct.pool_workqueue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@wq_pool_mutex = common dso_local global i32 0, align 4
@wq_numa_enabled = common dso_local global i32 0, align 4
@WQ_UNBOUND = common dso_local global i32 0, align 4
@wq_update_unbound_numa_attrs_buf = common dso_local global %struct.workqueue_attrs* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"workqueue: allocation failed while updating NUMA affinity of \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.workqueue_struct*, i32, i32)* @wq_update_unbound_numa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wq_update_unbound_numa(%struct.workqueue_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.workqueue_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pool_workqueue*, align 8
  %10 = alloca %struct.pool_workqueue*, align 8
  %11 = alloca %struct.workqueue_attrs*, align 8
  %12 = alloca i32*, align 8
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @cpu_to_node(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ -1, %17 ], [ %19, %18 ]
  store i32 %21, i32* %8, align 4
  store %struct.pool_workqueue* null, %struct.pool_workqueue** %9, align 8
  %22 = call i32 @lockdep_assert_held(i32* @wq_pool_mutex)
  %23 = load i32, i32* @wq_numa_enabled, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %27 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @WQ_UNBOUND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %34 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %25, %20
  br label %132

40:                                               ; preds = %32
  %41 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** @wq_update_unbound_numa_attrs_buf, align 8
  store %struct.workqueue_attrs* %41, %struct.workqueue_attrs** %11, align 8
  %42 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %11, align 8
  %43 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %12, align 8
  %45 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %11, align 8
  %46 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %47 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call i32 @copy_workqueue_attrs(%struct.workqueue_attrs* %45, %struct.TYPE_6__* %48)
  %50 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct* %50, i32 %51)
  store %struct.pool_workqueue* %52, %struct.pool_workqueue** %10, align 8
  %53 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %54 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %53, i32 0, i32 2
  %55 = load %struct.pool_workqueue*, %struct.pool_workqueue** %54, align 8
  %56 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = call i64 @wq_calc_node_cpumask(%struct.TYPE_5__* %59, i32 %60, i32 %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %40
  %66 = load i32*, i32** %12, align 8
  %67 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %68 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @cpumask_equal(i32* %66, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %132

77:                                               ; preds = %65
  br label %79

78:                                               ; preds = %40
  br label %98

79:                                               ; preds = %77
  %80 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %81 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %11, align 8
  %82 = call %struct.pool_workqueue* @alloc_unbound_pwq(%struct.workqueue_struct* %80, %struct.workqueue_attrs* %81)
  store %struct.pool_workqueue* %82, %struct.pool_workqueue** %10, align 8
  %83 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %84 = icmp ne %struct.pool_workqueue* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %87 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pr_warn(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %98

90:                                               ; preds = %79
  %91 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %92 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %91, i32 0, i32 1
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %97 = call %struct.pool_workqueue* @numa_pwq_tbl_install(%struct.workqueue_struct* %94, i32 %95, %struct.pool_workqueue* %96)
  store %struct.pool_workqueue* %97, %struct.pool_workqueue** %9, align 8
  br label %126

98:                                               ; preds = %85, %78
  %99 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %100 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %99, i32 0, i32 1
  %101 = call i32 @mutex_lock(i32* %100)
  %102 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %103 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %102, i32 0, i32 2
  %104 = load %struct.pool_workqueue*, %struct.pool_workqueue** %103, align 8
  %105 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = call i32 @spin_lock_irq(i32* %107)
  %109 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %110 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %109, i32 0, i32 2
  %111 = load %struct.pool_workqueue*, %struct.pool_workqueue** %110, align 8
  %112 = call i32 @get_pwq(%struct.pool_workqueue* %111)
  %113 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %114 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %113, i32 0, i32 2
  %115 = load %struct.pool_workqueue*, %struct.pool_workqueue** %114, align 8
  %116 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock_irq(i32* %118)
  %120 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %123 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %122, i32 0, i32 2
  %124 = load %struct.pool_workqueue*, %struct.pool_workqueue** %123, align 8
  %125 = call %struct.pool_workqueue* @numa_pwq_tbl_install(%struct.workqueue_struct* %120, i32 %121, %struct.pool_workqueue* %124)
  store %struct.pool_workqueue* %125, %struct.pool_workqueue** %9, align 8
  br label %126

126:                                              ; preds = %98, %90
  %127 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %128 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.pool_workqueue*, %struct.pool_workqueue** %9, align 8
  %131 = call i32 @put_pwq_unlocked(%struct.pool_workqueue* %130)
  br label %132

132:                                              ; preds = %126, %76, %39
  ret void
}

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @copy_workqueue_attrs(%struct.workqueue_attrs*, %struct.TYPE_6__*) #1

declare dso_local %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct*, i32) #1

declare dso_local i64 @wq_calc_node_cpumask(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i64 @cpumask_equal(i32*, i32) #1

declare dso_local %struct.pool_workqueue* @alloc_unbound_pwq(%struct.workqueue_struct*, %struct.workqueue_attrs*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pool_workqueue* @numa_pwq_tbl_install(%struct.workqueue_struct*, i32, %struct.pool_workqueue*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @get_pwq(%struct.pool_workqueue*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_pwq_unlocked(%struct.pool_workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
