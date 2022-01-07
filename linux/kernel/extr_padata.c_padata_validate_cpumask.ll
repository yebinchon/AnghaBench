; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_validate_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_validate_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_instance = type { i32 }
%struct.cpumask = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@PADATA_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padata_instance*, %struct.cpumask*)* @padata_validate_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padata_validate_cpumask(%struct.padata_instance* %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.padata_instance*, align 8
  %5 = alloca %struct.cpumask*, align 8
  store %struct.padata_instance* %0, %struct.padata_instance** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %6 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %7 = load i32, i32* @cpu_online_mask, align 4
  %8 = call i32 @cpumask_intersects(%struct.cpumask* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @PADATA_INVALID, align 4
  %12 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %13 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  store i32 0, i32* %3, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @PADATA_INVALID, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %20 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @cpumask_intersects(%struct.cpumask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
