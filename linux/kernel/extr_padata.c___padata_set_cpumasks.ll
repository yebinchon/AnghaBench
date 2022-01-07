; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c___padata_set_cpumasks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c___padata_set_cpumasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.parallel_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padata_instance*, i32, i32)* @__padata_set_cpumasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__padata_set_cpumasks(%struct.padata_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.padata_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.parallel_data*, align 8
  store %struct.padata_instance* %0, %struct.padata_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.padata_instance*, %struct.padata_instance** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @padata_validate_cpumask(%struct.padata_instance* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.padata_instance*, %struct.padata_instance** %5, align 8
  %17 = call i32 @__padata_stop(%struct.padata_instance* %16)
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.padata_instance*, %struct.padata_instance** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @padata_validate_cpumask(%struct.padata_instance* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.padata_instance*, %struct.padata_instance** %5, align 8
  %26 = call i32 @__padata_stop(%struct.padata_instance* %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27, %15
  %29 = load %struct.padata_instance*, %struct.padata_instance** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.parallel_data* @padata_alloc_pd(%struct.padata_instance* %29, i32 %30, i32 %31)
  store %struct.parallel_data* %32, %struct.parallel_data** %9, align 8
  %33 = load %struct.parallel_data*, %struct.parallel_data** %9, align 8
  %34 = icmp ne %struct.parallel_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %60

38:                                               ; preds = %28
  %39 = load %struct.padata_instance*, %struct.padata_instance** %5, align 8
  %40 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @cpumask_copy(i32 %42, i32 %43)
  %45 = load %struct.padata_instance*, %struct.padata_instance** %5, align 8
  %46 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @cpumask_copy(i32 %48, i32 %49)
  %51 = load %struct.padata_instance*, %struct.padata_instance** %5, align 8
  %52 = load %struct.parallel_data*, %struct.parallel_data** %9, align 8
  %53 = call i32 @padata_replace(%struct.padata_instance* %51, %struct.parallel_data* %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load %struct.padata_instance*, %struct.padata_instance** %5, align 8
  %58 = call i32 @__padata_start(%struct.padata_instance* %57)
  br label %59

59:                                               ; preds = %56, %38
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @padata_validate_cpumask(%struct.padata_instance*, i32) #1

declare dso_local i32 @__padata_stop(%struct.padata_instance*) #1

declare dso_local %struct.parallel_data* @padata_alloc_pd(%struct.padata_instance*, i32, i32) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @padata_replace(%struct.padata_instance*, %struct.parallel_data*) #1

declare dso_local i32 @__padata_start(%struct.padata_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
