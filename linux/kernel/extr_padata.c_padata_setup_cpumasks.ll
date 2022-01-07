; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_setup_cpumasks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_setup_cpumasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parallel_data = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cpumask = type { i32 }
%struct.workqueue_attrs = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parallel_data*, %struct.cpumask*, %struct.cpumask*)* @padata_setup_cpumasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padata_setup_cpumasks(%struct.parallel_data* %0, %struct.cpumask* %1, %struct.cpumask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parallel_data*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca %struct.workqueue_attrs*, align 8
  %9 = alloca i32, align 4
  store %struct.parallel_data* %0, %struct.parallel_data** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store %struct.cpumask* %2, %struct.cpumask** %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %13 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @alloc_cpumask_var(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %80

19:                                               ; preds = %3
  %20 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %21 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %25 = load i32, i32* @cpu_online_mask, align 4
  %26 = call i32 @cpumask_and(i32 %23, %struct.cpumask* %24, i32 %25)
  %27 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %28 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @alloc_cpumask_var(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %74

34:                                               ; preds = %19
  %35 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %36 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %40 = load i32, i32* @cpu_online_mask, align 4
  %41 = call i32 @cpumask_and(i32 %38, %struct.cpumask* %39, i32 %40)
  %42 = call %struct.workqueue_attrs* (...) @alloc_workqueue_attrs()
  store %struct.workqueue_attrs* %42, %struct.workqueue_attrs** %8, align 8
  %43 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %8, align 8
  %44 = icmp ne %struct.workqueue_attrs* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %68

46:                                               ; preds = %34
  %47 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %8, align 8
  %48 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %51 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cpumask_copy(i32 %49, i32 %53)
  %55 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %56 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %8, align 8
  %61 = call i32 @apply_workqueue_attrs(i32 %59, %struct.workqueue_attrs* %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %8, align 8
  %63 = call i32 @free_workqueue_attrs(%struct.workqueue_attrs* %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  br label %68

67:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %82

68:                                               ; preds = %66, %45
  %69 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %70 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @free_cpumask_var(i32 %72)
  br label %74

74:                                               ; preds = %68, %33
  %75 = load %struct.parallel_data*, %struct.parallel_data** %5, align 8
  %76 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @free_cpumask_var(i32 %78)
  br label %80

80:                                               ; preds = %74, %18
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %67
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_and(i32, %struct.cpumask*, i32) #1

declare dso_local %struct.workqueue_attrs* @alloc_workqueue_attrs(...) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @apply_workqueue_attrs(i32, %struct.workqueue_attrs*) #1

declare dso_local i32 @free_workqueue_attrs(%struct.workqueue_attrs*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
