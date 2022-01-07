; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_irq_destroy_ipi.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_irq_destroy_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.irq_data = type { %struct.TYPE_2__*, %struct.irq_domain* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_domain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Trying to destroy a non IPI domain!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_destroy_ipi(i32 %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.irq_data* @irq_get_irq_data(i32 %10)
  store %struct.irq_data* %11, %struct.irq_data** %6, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %13 = icmp ne %struct.irq_data* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %16 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %15)
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi %struct.cpumask* [ %16, %14 ], [ null, %17 ]
  store %struct.cpumask* %19, %struct.cpumask** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %24 = icmp ne %struct.irq_data* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %27 = icmp ne %struct.cpumask* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %22, %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %85

31:                                               ; preds = %25
  %32 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %33 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %32, i32 0, i32 1
  %34 = load %struct.irq_domain*, %struct.irq_domain** %33, align 8
  store %struct.irq_domain* %34, %struct.irq_domain** %8, align 8
  %35 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %36 = icmp eq %struct.irq_domain* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %85

43:                                               ; preds = %31
  %44 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %45 = call i32 @irq_domain_is_ipi(%struct.irq_domain* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %85

51:                                               ; preds = %43
  %52 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %53 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %54 = call i32 @cpumask_subset(%struct.cpumask* %52, %struct.cpumask* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %51
  %64 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %65 = call i64 @irq_domain_is_ipi_per_cpu(%struct.irq_domain* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %70 = call i32 @cpumask_first(%struct.cpumask* %69)
  %71 = add i32 %68, %70
  %72 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %73 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub i32 %71, %76
  store i32 %77, i32* %4, align 4
  %78 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %79 = call i32 @cpumask_weight(%struct.cpumask* %78)
  store i32 %79, i32* %9, align 4
  br label %81

80:                                               ; preds = %63
  store i32 1, i32* %9, align 4
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @irq_domain_free_irqs(i32 %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %60, %47, %40, %28
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irq_domain_is_ipi(%struct.irq_domain*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @cpumask_subset(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i64 @irq_domain_is_ipi_per_cpu(%struct.irq_domain*) #1

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @cpumask_weight(%struct.cpumask*) #1

declare dso_local i32 @irq_domain_free_irqs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
