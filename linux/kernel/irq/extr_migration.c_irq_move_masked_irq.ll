; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_migration.c_irq_move_masked_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_migration.c_irq_move_masked_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.irq_chip* }
%struct.irq_chip = type { i32 }
%struct.irq_desc = type { i32, i32, %struct.irq_data }

@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_move_masked_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.irq_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.irq_desc* @irq_data_to_desc(%struct.irq_data* %7)
  store %struct.irq_desc* %8, %struct.irq_desc** %3, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 2
  store %struct.irq_data* %10, %struct.irq_data** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load %struct.irq_chip*, %struct.irq_chip** %12, align 8
  store %struct.irq_chip* %13, %struct.irq_chip** %5, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = call i32 @irqd_is_setaffinity_pending(%struct.irq_data* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %74

22:                                               ; preds = %1
  %23 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %24 = call i32 @irqd_clr_move_pending(%struct.irq_data* %23)
  %25 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %26 = call i64 @irqd_is_per_cpu(%struct.irq_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @WARN_ON(i32 1)
  br label %74

30:                                               ; preds = %22
  %31 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %32 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cpumask_empty(i32 %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %74

38:                                               ; preds = %30
  %39 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %40 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %74

44:                                               ; preds = %38
  %45 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %46 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %45, i32 0, i32 1
  %47 = call i32 @assert_raw_spin_locked(i32* %46)
  %48 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %49 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @cpu_online_mask, align 4
  %52 = call i64 @cpumask_any_and(i32 %50, i32 %51)
  %53 = load i64, i64* @nr_cpu_ids, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %44
  %56 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %57 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %58 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @irq_do_set_affinity(%struct.irq_data* %56, i32 %59, i32 0)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %67 = call i32 @irqd_set_move_pending(%struct.irq_data* %66)
  br label %74

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %44
  %70 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %71 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @cpumask_clear(i32 %72)
  br label %74

74:                                               ; preds = %69, %65, %43, %37, %28, %21
  ret void
}

declare dso_local %struct.irq_desc* @irq_data_to_desc(%struct.irq_data*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @irqd_is_setaffinity_pending(%struct.irq_data*) #1

declare dso_local i32 @irqd_clr_move_pending(%struct.irq_data*) #1

declare dso_local i64 @irqd_is_per_cpu(%struct.irq_data*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @assert_raw_spin_locked(i32*) #1

declare dso_local i64 @cpumask_any_and(i32, i32) #1

declare dso_local i32 @irq_do_set_affinity(%struct.irq_data*, i32, i32) #1

declare dso_local i32 @irqd_set_move_pending(%struct.irq_data*) #1

declare dso_local i32 @cpumask_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
