; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_might_be_idle.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_might_be_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i64, i32, i32, i32 }
%struct.srcu_data = type { i32 }

@exp_holdoff = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srcu_struct*)* @srcu_might_be_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcu_might_be_idle(%struct.srcu_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srcu_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.srcu_data*, align 8
  %7 = alloca i64, align 8
  store %struct.srcu_struct* %0, %struct.srcu_struct** %3, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %11 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.srcu_data* @this_cpu_ptr(i32 %12)
  store %struct.srcu_data* %13, %struct.srcu_data** %6, align 8
  %14 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %15 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %14, i32 0, i32 0
  %16 = call i64 @rcu_segcblist_pend_cbs(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @local_irq_restore(i64 %19)
  store i32 0, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @local_irq_restore(i64 %22)
  %24 = call i64 (...) @ktime_get_mono_fast_ns()
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* @exp_holdoff, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %30 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %33 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @exp_holdoff, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i64 @time_in_range_open(i64 %28, i64 %31, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4
  br label %62

40:                                               ; preds = %27
  %41 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %42 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %41, i32 0, i32 1
  %43 = call i64 @rcu_seq_current(i32* %42)
  store i64 %43, i64* %4, align 8
  %44 = call i32 (...) @smp_mb()
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %47 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @READ_ONCE(i32 %48)
  %50 = call i64 @ULONG_CMP_LT(i64 %45, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %62

53:                                               ; preds = %40
  %54 = call i32 (...) @smp_mb()
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %57 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %56, i32 0, i32 1
  %58 = call i64 @rcu_seq_current(i32* %57)
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %62

61:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60, %52, %39, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.srcu_data* @this_cpu_ptr(i32) #1

declare dso_local i64 @rcu_segcblist_pend_cbs(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @ktime_get_mono_fast_ns(...) #1

declare dso_local i64 @time_in_range_open(i64, i64, i64) #1

declare dso_local i64 @rcu_seq_current(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
