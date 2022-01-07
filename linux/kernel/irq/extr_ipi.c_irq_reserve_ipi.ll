; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_irq_reserve_ipi.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_irq_reserve_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.cpumask = type { i32 }
%struct.irq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Reservation on a non IPI domain\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Reservation is not in possible_cpu_mask\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Reservation for empty destination mask\0A\00", align 1
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Destination mask has holes\0A\00", align 1
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Can't reserve IPI, failed to alloc descs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Can't reserve IPI, failed to alloc hw irqs\0A\00", align 1
@IRQ_NO_BALANCING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_reserve_ipi(%struct.irq_domain* %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %13 = icmp ne %struct.irq_domain* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %16 = call i32 @irq_domain_is_ipi(%struct.irq_domain* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %2
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %127

22:                                               ; preds = %14
  %23 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %24 = load i32, i32* @cpu_possible_mask, align 4
  %25 = call i32 @cpumask_subset(%struct.cpumask* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %127

31:                                               ; preds = %22
  %32 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %33 = call i32 @cpumask_weight(%struct.cpumask* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %127

40:                                               ; preds = %31
  %41 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %42 = call i64 @irq_domain_is_ipi_single(%struct.irq_domain* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %67

45:                                               ; preds = %40
  %46 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %47 = call i32 @cpumask_first(%struct.cpumask* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %50 = call i32 @cpumask_next_zero(i32 %48, %struct.cpumask* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @nr_cpu_ids, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %57 = call i32 @cpumask_next(i32 %55, %struct.cpumask* %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %54, %45
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @nr_cpu_ids, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %127

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @NUMA_NO_NODE, align 4
  %70 = call i32 @irq_domain_alloc_descs(i32 -1, i32 %68, i32 0, i32 %69, i32* null)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %127

77:                                               ; preds = %67
  %78 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @NUMA_NO_NODE, align 4
  %82 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %83 = bitcast %struct.cpumask* %82 to i8*
  %84 = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* %78, i32 %79, i32 %80, i32 %81, i8* %83, i32 1, i32* null)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %121

89:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %116, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %95, %96
  %98 = call %struct.irq_data* @irq_get_irq_data(i32 %97)
  store %struct.irq_data* %98, %struct.irq_data** %8, align 8
  %99 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %100 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %105 = call i32 @cpumask_copy(i32 %103, %struct.cpumask* %104)
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %108 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* @IRQ_NO_BALANCING, align 4
  %115 = call i32 @irq_set_status_flags(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %94
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %90

119:                                              ; preds = %90
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %127

121:                                              ; preds = %87
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @irq_free_descs(i32 %122, i32 %123)
  %125 = load i32, i32* @EBUSY, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %121, %119, %73, %62, %36, %27, %18
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @irq_domain_is_ipi(%struct.irq_domain*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @cpumask_subset(%struct.cpumask*, i32) #1

declare dso_local i32 @cpumask_weight(%struct.cpumask*) #1

declare dso_local i64 @irq_domain_is_ipi_single(%struct.irq_domain*) #1

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @cpumask_next_zero(i32, %struct.cpumask*) #1

declare dso_local i32 @cpumask_next(i32, %struct.cpumask*) #1

declare dso_local i32 @irq_domain_alloc_descs(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @__irq_domain_alloc_irqs(%struct.irq_domain*, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @cpumask_copy(i32, %struct.cpumask*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irq_free_descs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
