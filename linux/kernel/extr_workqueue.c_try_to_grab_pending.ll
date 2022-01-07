; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_try_to_grab_pending.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_try_to_grab_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.worker_pool = type { i32, i32 }
%struct.pool_workqueue = type { %struct.worker_pool* }
%struct.delayed_work = type { i32 }

@WORK_STRUCT_PENDING_BIT = common dso_local global i32 0, align 4
@WORK_STRUCT_DELAYED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_struct*, i32, i64*)* @try_to_grab_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_grab_pending(%struct.work_struct* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.work_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.worker_pool*, align 8
  %9 = alloca %struct.pool_workqueue*, align 8
  %10 = alloca %struct.delayed_work*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %18 = call %struct.delayed_work* @to_delayed_work(%struct.work_struct* %17)
  store %struct.delayed_work* %18, %struct.delayed_work** %10, align 8
  %19 = load %struct.delayed_work*, %struct.delayed_work** %10, align 8
  %20 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %19, i32 0, i32 0
  %21 = call i32 @del_timer(i32* %20)
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %102

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* @WORK_STRUCT_PENDING_BIT, align 4
  %28 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %29 = call i32* @work_data_bits(%struct.work_struct* %28)
  %30 = call i32 @test_and_set_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %102

33:                                               ; preds = %26
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %36 = call %struct.worker_pool* @get_work_pool(%struct.work_struct* %35)
  store %struct.worker_pool* %36, %struct.worker_pool** %8, align 8
  %37 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %38 = icmp ne %struct.worker_pool* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %87

40:                                               ; preds = %33
  %41 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %42 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %45 = call %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* %44)
  store %struct.pool_workqueue* %45, %struct.pool_workqueue** %9, align 8
  %46 = load %struct.pool_workqueue*, %struct.pool_workqueue** %9, align 8
  %47 = icmp ne %struct.pool_workqueue* %46, null
  br i1 %47, label %48, label %83

48:                                               ; preds = %40
  %49 = load %struct.pool_workqueue*, %struct.pool_workqueue** %9, align 8
  %50 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %49, i32 0, i32 0
  %51 = load %struct.worker_pool*, %struct.worker_pool** %50, align 8
  %52 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %53 = icmp eq %struct.worker_pool* %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %48
  %55 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %56 = call i32 @debug_work_deactivate(%struct.work_struct* %55)
  %57 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %58 = call i32* @work_data_bits(%struct.work_struct* %57)
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WORK_STRUCT_DELAYED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %65 = call i32 @pwq_activate_delayed_work(%struct.work_struct* %64)
  br label %66

66:                                               ; preds = %63, %54
  %67 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %68 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %67, i32 0, i32 0
  %69 = call i32 @list_del_init(i32* %68)
  %70 = load %struct.pool_workqueue*, %struct.pool_workqueue** %9, align 8
  %71 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %72 = call i32 @get_work_color(%struct.work_struct* %71)
  %73 = call i32 @pwq_dec_nr_in_flight(%struct.pool_workqueue* %70, i32 %72)
  %74 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %75 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %76 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @set_work_pool_and_keep_pending(%struct.work_struct* %74, i32 %77)
  %79 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %80 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %4, align 4
  br label %102

83:                                               ; preds = %48, %40
  %84 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  %85 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %39
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @local_irq_restore(i64 %90)
  %92 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %93 = call i64 @work_is_canceling(%struct.work_struct* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %102

98:                                               ; preds = %87
  %99 = call i32 (...) @cpu_relax()
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %95, %66, %32, %24
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.delayed_work* @to_delayed_work(%struct.work_struct*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32* @work_data_bits(%struct.work_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.worker_pool* @get_work_pool(%struct.work_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pool_workqueue* @get_work_pwq(%struct.work_struct*) #1

declare dso_local i32 @debug_work_deactivate(%struct.work_struct*) #1

declare dso_local i32 @pwq_activate_delayed_work(%struct.work_struct*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @pwq_dec_nr_in_flight(%struct.pool_workqueue*, i32) #1

declare dso_local i32 @get_work_color(%struct.work_struct*) #1

declare dso_local i32 @set_work_pool_and_keep_pending(%struct.work_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @work_is_canceling(%struct.work_struct*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
