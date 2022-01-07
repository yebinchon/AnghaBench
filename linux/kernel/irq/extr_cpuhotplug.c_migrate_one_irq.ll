; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_cpuhotplug.c_migrate_one_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_cpuhotplug.c_migrate_one_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.irq_desc = type { i32 }
%struct.irq_data = type { i32 }
%struct.irq_chip = type { i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"IRQ %u: Unable to migrate away\0A\00", align 1
@cpu_online_mask = common dso_local global %struct.cpumask* null, align 8
@nr_cpu_ids = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"IRQ%u: set affinity failed(%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_desc*)* @migrate_one_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migrate_one_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.irq_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %11 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %10)
  store %struct.irq_data* %11, %struct.irq_data** %4, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %12)
  store %struct.irq_chip* %13, %struct.irq_chip** %5, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = call i32 @irq_can_move_pcntxt(%struct.irq_data* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %19 = call i32 @irqd_irq_masked(%struct.irq_data* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi i1 [ false, %1 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %25 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %26 = icmp ne %struct.irq_chip* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %29 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %34 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %2, align 4
  br label %123

37:                                               ; preds = %27
  %38 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %39 = call i64 @irqd_is_per_cpu(%struct.irq_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %43 = call i32 @irqd_is_started(%struct.irq_data* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %47 = call i32 @irq_needs_fixup(%struct.irq_data* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45, %41, %37
  %50 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %51 = call i64 @irq_fixup_move_pending(%struct.irq_desc* %50, i32 0)
  store i32 0, i32* %2, align 4
  br label %123

52:                                               ; preds = %45
  %53 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %54 = call i32 @irq_force_complete_move(%struct.irq_desc* %53)
  %55 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %56 = call i64 @irq_fixup_move_pending(%struct.irq_desc* %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %60 = call %struct.cpumask* @irq_desc_get_pending_mask(%struct.irq_desc* %59)
  store %struct.cpumask* %60, %struct.cpumask** %7, align 8
  br label %64

61:                                               ; preds = %52
  %62 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %63 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %62)
  store %struct.cpumask* %63, %struct.cpumask** %7, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %69 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %68, i32 0, i32 1
  %70 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %69, align 8
  %71 = icmp ne i32 (%struct.irq_data*)* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %74 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %73, i32 0, i32 1
  %75 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %74, align 8
  %76 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %77 = call i32 %75(%struct.irq_data* %76)
  br label %78

78:                                               ; preds = %72, %67, %64
  %79 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %80 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  %81 = call i64 @cpumask_any_and(%struct.cpumask* %79, %struct.cpumask* %80)
  %82 = load i64, i64* @nr_cpu_ids, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %86 = call i64 @irqd_affinity_is_managed(%struct.irq_data* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %90 = call i32 @irqd_set_managed_shutdown(%struct.irq_data* %89)
  %91 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %92 = call i32 @irq_shutdown_and_deactivate(%struct.irq_desc* %91)
  store i32 0, i32* %2, align 4
  br label %123

93:                                               ; preds = %84
  %94 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  store %struct.cpumask* %94, %struct.cpumask** %7, align 8
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %78
  %96 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %97 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %98 = call i32 @irq_do_set_affinity(%struct.irq_data* %96, %struct.cpumask* %97, i32 0)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %103 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %112 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %111, i32 0, i32 0
  %113 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %112, align 8
  %114 = icmp ne i32 (%struct.irq_data*)* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %117 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %116, i32 0, i32 0
  %118 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %117, align 8
  %119 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %120 = call i32 %118(%struct.irq_data* %119)
  br label %121

121:                                              ; preds = %115, %110, %107
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %88, %49, %32
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local i32 @irq_can_move_pcntxt(%struct.irq_data*) #1

declare dso_local i32 @irqd_irq_masked(%struct.irq_data*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @irqd_is_per_cpu(%struct.irq_data*) #1

declare dso_local i32 @irqd_is_started(%struct.irq_data*) #1

declare dso_local i32 @irq_needs_fixup(%struct.irq_data*) #1

declare dso_local i64 @irq_fixup_move_pending(%struct.irq_desc*, i32) #1

declare dso_local i32 @irq_force_complete_move(%struct.irq_desc*) #1

declare dso_local %struct.cpumask* @irq_desc_get_pending_mask(%struct.irq_desc*) #1

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i64 @cpumask_any_and(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i64 @irqd_affinity_is_managed(%struct.irq_data*) #1

declare dso_local i32 @irqd_set_managed_shutdown(%struct.irq_data*) #1

declare dso_local i32 @irq_shutdown_and_deactivate(%struct.irq_desc*) #1

declare dso_local i32 @irq_do_set_affinity(%struct.irq_data*, %struct.cpumask*, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
