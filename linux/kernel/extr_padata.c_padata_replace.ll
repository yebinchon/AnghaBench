; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_replace.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_instance = type { i32, i32, %struct.parallel_data* }
%struct.parallel_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PADATA_RESET = common dso_local global i32 0, align 4
@PADATA_CPU_PARALLEL = common dso_local global i32 0, align 4
@PADATA_CPU_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.padata_instance*, %struct.parallel_data*)* @padata_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @padata_replace(%struct.padata_instance* %0, %struct.parallel_data* %1) #0 {
  %3 = alloca %struct.padata_instance*, align 8
  %4 = alloca %struct.parallel_data*, align 8
  %5 = alloca %struct.parallel_data*, align 8
  %6 = alloca i32, align 4
  store %struct.padata_instance* %0, %struct.padata_instance** %3, align 8
  store %struct.parallel_data* %1, %struct.parallel_data** %4, align 8
  %7 = load %struct.padata_instance*, %struct.padata_instance** %3, align 8
  %8 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %7, i32 0, i32 2
  %9 = load %struct.parallel_data*, %struct.parallel_data** %8, align 8
  store %struct.parallel_data* %9, %struct.parallel_data** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @PADATA_RESET, align 4
  %11 = load %struct.padata_instance*, %struct.padata_instance** %3, align 8
  %12 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.padata_instance*, %struct.padata_instance** %3, align 8
  %16 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %15, i32 0, i32 2
  %17 = load %struct.parallel_data*, %struct.parallel_data** %16, align 8
  %18 = load %struct.parallel_data*, %struct.parallel_data** %4, align 8
  %19 = call i32 @rcu_assign_pointer(%struct.parallel_data* %17, %struct.parallel_data* %18)
  %20 = call i32 (...) @synchronize_rcu()
  %21 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %22 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.parallel_data*, %struct.parallel_data** %4, align 8
  %26 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpumask_equal(i32 %24, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @PADATA_CPU_PARALLEL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %37 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.parallel_data*, %struct.parallel_data** %4, align 8
  %41 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpumask_equal(i32 %39, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @PADATA_CPU_SERIAL, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %35
  %51 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %52 = call i32 @padata_flush_queues(%struct.parallel_data* %51)
  %53 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %54 = call i32 @padata_free_pd(%struct.parallel_data* %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.padata_instance*, %struct.padata_instance** %3, align 8
  %59 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %58, i32 0, i32 1
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.parallel_data*, %struct.parallel_data** %4, align 8
  %62 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %61, i32 0, i32 0
  %63 = call i32 @blocking_notifier_call_chain(i32* %59, i32 %60, %struct.TYPE_2__* %62)
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* @PADATA_RESET, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.padata_instance*, %struct.padata_instance** %3, align 8
  %68 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  ret void
}

declare dso_local i32 @rcu_assign_pointer(%struct.parallel_data*, %struct.parallel_data*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @cpumask_equal(i32, i32) #1

declare dso_local i32 @padata_flush_queues(%struct.parallel_data*) #1

declare dso_local i32 @padata_free_pd(%struct.parallel_data*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
