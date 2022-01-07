; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_reorder.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parallel_data = type { i32, i32, i32, i32, i32, %struct.padata_instance* }
%struct.padata_instance = type { i32 }
%struct.padata_priv = type { i32, i32 }
%struct.padata_serial_queue = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.padata_parallel_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parallel_data*)* @padata_reorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @padata_reorder(%struct.parallel_data* %0) #0 {
  %2 = alloca %struct.parallel_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.padata_priv*, align 8
  %5 = alloca %struct.padata_serial_queue*, align 8
  %6 = alloca %struct.padata_instance*, align 8
  %7 = alloca %struct.padata_parallel_queue*, align 8
  store %struct.parallel_data* %0, %struct.parallel_data** %2, align 8
  %8 = load %struct.parallel_data*, %struct.parallel_data** %2, align 8
  %9 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %8, i32 0, i32 5
  %10 = load %struct.padata_instance*, %struct.padata_instance** %9, align 8
  store %struct.padata_instance* %10, %struct.padata_instance** %6, align 8
  %11 = load %struct.parallel_data*, %struct.parallel_data** %2, align 8
  %12 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %11, i32 0, i32 3
  %13 = call i32 @spin_trylock_bh(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %83

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %23
  %18 = load %struct.parallel_data*, %struct.parallel_data** %2, align 8
  %19 = call %struct.padata_priv* @padata_find_next(%struct.parallel_data* %18, i32 1)
  store %struct.padata_priv* %19, %struct.padata_priv** %4, align 8
  %20 = load %struct.padata_priv*, %struct.padata_priv** %4, align 8
  %21 = icmp ne %struct.padata_priv* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %54

23:                                               ; preds = %17
  %24 = load %struct.padata_priv*, %struct.padata_priv** %4, align 8
  %25 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  %27 = load %struct.parallel_data*, %struct.parallel_data** %2, align 8
  %28 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i8* @per_cpu_ptr(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.padata_serial_queue*
  store %struct.padata_serial_queue* %32, %struct.padata_serial_queue** %5, align 8
  %33 = load %struct.padata_serial_queue*, %struct.padata_serial_queue** %5, align 8
  %34 = getelementptr inbounds %struct.padata_serial_queue, %struct.padata_serial_queue* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.padata_priv*, %struct.padata_priv** %4, align 8
  %38 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %37, i32 0, i32 1
  %39 = load %struct.padata_serial_queue*, %struct.padata_serial_queue** %5, align 8
  %40 = getelementptr inbounds %struct.padata_serial_queue, %struct.padata_serial_queue* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %38, i32* %41)
  %43 = load %struct.padata_serial_queue*, %struct.padata_serial_queue** %5, align 8
  %44 = getelementptr inbounds %struct.padata_serial_queue, %struct.padata_serial_queue* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.padata_instance*, %struct.padata_instance** %6, align 8
  %49 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.padata_serial_queue*, %struct.padata_serial_queue** %5, align 8
  %52 = getelementptr inbounds %struct.padata_serial_queue, %struct.padata_serial_queue* %51, i32 0, i32 0
  %53 = call i32 @queue_work_on(i32 %47, i32 %50, i32* %52)
  br label %17

54:                                               ; preds = %22
  %55 = load %struct.parallel_data*, %struct.parallel_data** %2, align 8
  %56 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %55, i32 0, i32 3
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = call i32 (...) @smp_mb()
  %59 = load %struct.parallel_data*, %struct.parallel_data** %2, align 8
  %60 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.parallel_data*, %struct.parallel_data** %2, align 8
  %63 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @per_cpu_ptr(i32 %61, i32 %64)
  %66 = bitcast i8* %65 to %struct.padata_parallel_queue*
  store %struct.padata_parallel_queue* %66, %struct.padata_parallel_queue** %7, align 8
  %67 = load %struct.padata_parallel_queue*, %struct.padata_parallel_queue** %7, align 8
  %68 = getelementptr inbounds %struct.padata_parallel_queue, %struct.padata_parallel_queue* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @list_empty(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %54
  %73 = load %struct.parallel_data*, %struct.parallel_data** %2, align 8
  %74 = call %struct.padata_priv* @padata_find_next(%struct.parallel_data* %73, i32 0)
  %75 = icmp ne %struct.padata_priv* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.padata_instance*, %struct.padata_instance** %6, align 8
  %78 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.parallel_data*, %struct.parallel_data** %2, align 8
  %81 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %80, i32 0, i32 1
  %82 = call i32 @queue_work(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %15, %76, %72, %54
  ret void
}

declare dso_local i32 @spin_trylock_bh(i32*) #1

declare dso_local %struct.padata_priv* @padata_find_next(%struct.parallel_data*, i32) #1

declare dso_local i8* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
