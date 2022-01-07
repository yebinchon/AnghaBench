; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c___padata_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c___padata_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_instance = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@hp_online = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.padata_instance*)* @__padata_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__padata_free(%struct.padata_instance* %0) #0 {
  %2 = alloca %struct.padata_instance*, align 8
  store %struct.padata_instance* %0, %struct.padata_instance** %2, align 8
  %3 = load %struct.padata_instance*, %struct.padata_instance** %2, align 8
  %4 = call i32 @padata_stop(%struct.padata_instance* %3)
  %5 = load %struct.padata_instance*, %struct.padata_instance** %2, align 8
  %6 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @padata_free_pd(i32 %7)
  %9 = load %struct.padata_instance*, %struct.padata_instance** %2, align 8
  %10 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free_cpumask_var(i32 %12)
  %14 = load %struct.padata_instance*, %struct.padata_instance** %2, align 8
  %15 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @free_cpumask_var(i32 %17)
  %19 = load %struct.padata_instance*, %struct.padata_instance** %2, align 8
  %20 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @destroy_workqueue(i32 %21)
  %23 = load %struct.padata_instance*, %struct.padata_instance** %2, align 8
  %24 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @destroy_workqueue(i32 %25)
  %27 = load %struct.padata_instance*, %struct.padata_instance** %2, align 8
  %28 = call i32 @kfree(%struct.padata_instance* %27)
  ret void
}

declare dso_local i32 @padata_stop(%struct.padata_instance*) #1

declare dso_local i32 @padata_free_pd(i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.padata_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
