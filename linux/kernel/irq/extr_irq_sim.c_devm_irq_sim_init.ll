; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irq_sim.c_devm_irq_sim_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irq_sim.c_devm_irq_sim_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.irq_sim = type { i32 }
%struct.irq_sim_devres = type { %struct.irq_sim* }

@devm_irq_sim_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_irq_sim_init(%struct.device* %0, %struct.irq_sim* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.irq_sim*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_sim_devres*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.irq_sim* %1, %struct.irq_sim** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @devm_irq_sim_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.irq_sim_devres* @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.irq_sim_devres* %12, %struct.irq_sim_devres** %8, align 8
  %13 = load %struct.irq_sim_devres*, %struct.irq_sim_devres** %8, align 8
  %14 = icmp ne %struct.irq_sim_devres* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.irq_sim*, %struct.irq_sim** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @irq_sim_init(%struct.irq_sim* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.irq_sim_devres*, %struct.irq_sim_devres** %8, align 8
  %26 = call i32 @devres_free(%struct.irq_sim_devres* %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %18
  %29 = load %struct.irq_sim*, %struct.irq_sim** %6, align 8
  %30 = load %struct.irq_sim_devres*, %struct.irq_sim_devres** %8, align 8
  %31 = getelementptr inbounds %struct.irq_sim_devres, %struct.irq_sim_devres* %30, i32 0, i32 0
  store %struct.irq_sim* %29, %struct.irq_sim** %31, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.irq_sim_devres*, %struct.irq_sim_devres** %8, align 8
  %34 = call i32 @devres_add(%struct.device* %32, %struct.irq_sim_devres* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %24, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.irq_sim_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @irq_sim_init(%struct.irq_sim*, i32) #1

declare dso_local i32 @devres_free(%struct.irq_sim_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.irq_sim_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
