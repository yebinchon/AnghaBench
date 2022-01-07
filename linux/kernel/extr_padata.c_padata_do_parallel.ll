; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_do_parallel.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_do_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_instance = type { i32, i32, i32 }
%struct.padata_priv = type { i32, i32, i32, i32, %struct.parallel_data* }
%struct.parallel_data = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.padata_parallel_queue = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PADATA_INIT = common dso_local global i32 0, align 4
@PADATA_INVALID = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PADATA_RESET = common dso_local global i32 0, align 4
@MAX_OBJ_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @padata_do_parallel(%struct.padata_instance* %0, %struct.padata_priv* %1, i32* %2) #0 {
  %4 = alloca %struct.padata_instance*, align 8
  %5 = alloca %struct.padata_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.padata_parallel_queue*, align 8
  %13 = alloca %struct.parallel_data*, align 8
  store %struct.padata_instance* %0, %struct.padata_instance** %4, align 8
  store %struct.padata_priv* %1, %struct.padata_priv** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = call i32 (...) @rcu_read_lock_bh()
  %15 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %16 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.parallel_data* @rcu_dereference_bh(i32 %17)
  store %struct.parallel_data* %18, %struct.parallel_data** %13, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %22 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PADATA_INIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %29 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PADATA_INVALID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %3
  br label %149

35:                                               ; preds = %27
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %39 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpumask_test_cpu(i32 %37, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %83, label %44

44:                                               ; preds = %35
  %45 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %46 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpumask_weight(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %149

52:                                               ; preds = %44
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %56 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpumask_weight(i32 %58)
  %60 = srem i32 %54, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %62 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cpumask_first(i32 %64)
  store i32 %65, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %77, %52
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %73 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cpumask_next(i32 %71, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %35
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  %86 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %87 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PADATA_RESET, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %149

93:                                               ; preds = %83
  %94 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %95 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %94, i32 0, i32 2
  %96 = call i64 @atomic_read(i32* %95)
  %97 = load i64, i64* @MAX_OBJ_NUM, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %149

100:                                              ; preds = %93
  store i32 0, i32* %11, align 4
  %101 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %102 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %101, i32 0, i32 2
  %103 = call i32 @atomic_inc(i32* %102)
  %104 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %105 = load %struct.padata_priv*, %struct.padata_priv** %5, align 8
  %106 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %105, i32 0, i32 4
  store %struct.parallel_data* %104, %struct.parallel_data** %106, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.padata_priv*, %struct.padata_priv** %5, align 8
  %110 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %112 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %111, i32 0, i32 1
  %113 = call i32 @atomic_inc_return(i32* %112)
  %114 = load %struct.padata_priv*, %struct.padata_priv** %5, align 8
  %115 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %117 = load %struct.padata_priv*, %struct.padata_priv** %5, align 8
  %118 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @padata_cpu_hash(%struct.parallel_data* %116, i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.padata_priv*, %struct.padata_priv** %5, align 8
  %123 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.parallel_data*, %struct.parallel_data** %13, align 8
  %125 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call %struct.padata_parallel_queue* @per_cpu_ptr(i32 %126, i32 %127)
  store %struct.padata_parallel_queue* %128, %struct.padata_parallel_queue** %12, align 8
  %129 = load %struct.padata_parallel_queue*, %struct.padata_parallel_queue** %12, align 8
  %130 = getelementptr inbounds %struct.padata_parallel_queue, %struct.padata_parallel_queue* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = call i32 @spin_lock(i32* %131)
  %133 = load %struct.padata_priv*, %struct.padata_priv** %5, align 8
  %134 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %133, i32 0, i32 2
  %135 = load %struct.padata_parallel_queue*, %struct.padata_parallel_queue** %12, align 8
  %136 = getelementptr inbounds %struct.padata_parallel_queue, %struct.padata_parallel_queue* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = call i32 @list_add_tail(i32* %134, i32* %137)
  %139 = load %struct.padata_parallel_queue*, %struct.padata_parallel_queue** %12, align 8
  %140 = getelementptr inbounds %struct.padata_parallel_queue, %struct.padata_parallel_queue* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  %143 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %144 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.padata_parallel_queue*, %struct.padata_parallel_queue** %12, align 8
  %147 = getelementptr inbounds %struct.padata_parallel_queue, %struct.padata_parallel_queue* %146, i32 0, i32 0
  %148 = call i32 @queue_work(i32 %145, i32* %147)
  br label %149

149:                                              ; preds = %100, %99, %92, %51, %34
  %150 = call i32 (...) @rcu_read_unlock_bh()
  %151 = load i32, i32* %11, align 4
  ret i32 %151
}

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.parallel_data* @rcu_dereference_bh(i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @cpumask_weight(i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @padata_cpu_hash(%struct.parallel_data*, i32) #1

declare dso_local %struct.padata_parallel_queue* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
