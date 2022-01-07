; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_devres.c___devm_irq_alloc_descs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_devres.c___devm_irq_alloc_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.module = type { i32 }
%struct.irq_affinity_desc = type { i32 }
%struct.irq_desc_devres = type { i32, i32 }

@devm_irq_desc_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__devm_irq_alloc_descs(%struct.device* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.module* %5, %struct.irq_affinity_desc* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.module*, align 8
  %15 = alloca %struct.irq_affinity_desc*, align 8
  %16 = alloca %struct.irq_desc_devres*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.module* %5, %struct.module** %14, align 8
  store %struct.irq_affinity_desc* %6, %struct.irq_affinity_desc** %15, align 8
  %18 = load i32, i32* @devm_irq_desc_release, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.irq_desc_devres* @devres_alloc(i32 %18, i32 8, i32 %19)
  store %struct.irq_desc_devres* %20, %struct.irq_desc_devres** %16, align 8
  %21 = load %struct.irq_desc_devres*, %struct.irq_desc_devres** %16, align 8
  %22 = icmp ne %struct.irq_desc_devres* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %51

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.module*, %struct.module** %14, align 8
  %32 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %15, align 8
  %33 = call i32 @__irq_alloc_descs(i32 %27, i32 %28, i32 %29, i32 %30, %struct.module* %31, %struct.irq_affinity_desc* %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.irq_desc_devres*, %struct.irq_desc_devres** %16, align 8
  %38 = call i32 @devres_free(%struct.irq_desc_devres* %37)
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %8, align 4
  br label %51

40:                                               ; preds = %26
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.irq_desc_devres*, %struct.irq_desc_devres** %16, align 8
  %43 = getelementptr inbounds %struct.irq_desc_devres, %struct.irq_desc_devres* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.irq_desc_devres*, %struct.irq_desc_devres** %16, align 8
  %46 = getelementptr inbounds %struct.irq_desc_devres, %struct.irq_desc_devres* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.device*, %struct.device** %9, align 8
  %48 = load %struct.irq_desc_devres*, %struct.irq_desc_devres** %16, align 8
  %49 = call i32 @devres_add(%struct.device* %47, %struct.irq_desc_devres* %48)
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %40, %36, %23
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local %struct.irq_desc_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @__irq_alloc_descs(i32, i32, i32, i32, %struct.module*, %struct.irq_affinity_desc*) #1

declare dso_local i32 @devres_free(%struct.irq_desc_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.irq_desc_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
