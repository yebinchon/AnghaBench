; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/txx9/extr_txx9aclc-ac97.c_txx9aclc_ac97_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/txx9/extr_txx9aclc-ac97.c_txx9aclc_ac97_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.txx9aclc_plat_drvdata = type { i64, i32 }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@txx9aclc_ac97_irq = common dso_local global i32 0, align 4
@txx9aclc_ac97_ops = common dso_local global i32 0, align 4
@txx9aclc_ac97_component = common dso_local global i32 0, align 4
@txx9aclc_ac97_dai = common dso_local global i32 0, align 4
@TXX9_DIRECTMAP_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @txx9aclc_ac97_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9aclc_ac97_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.txx9aclc_plat_drvdata*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @platform_get_irq(%struct.platform_device* %8, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.txx9aclc_plat_drvdata* @devm_kzalloc(i32* %16, i32 16, i32 %17)
  store %struct.txx9aclc_plat_drvdata* %18, %struct.txx9aclc_plat_drvdata** %4, align 8
  %19 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %4, align 8
  %20 = icmp ne %struct.txx9aclc_plat_drvdata* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %76

24:                                               ; preds = %14
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %5, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i32 @devm_ioremap_resource(i32* %29, %struct.resource* %30)
  %32 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %4, align 8
  %33 = getelementptr inbounds %struct.txx9aclc_plat_drvdata, %struct.txx9aclc_plat_drvdata* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %4, align 8
  %35 = getelementptr inbounds %struct.txx9aclc_plat_drvdata, %struct.txx9aclc_plat_drvdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %4, align 8
  %41 = getelementptr inbounds %struct.txx9aclc_plat_drvdata, %struct.txx9aclc_plat_drvdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %76

44:                                               ; preds = %24
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %4, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.txx9aclc_plat_drvdata* %46)
  %48 = load %struct.resource*, %struct.resource** %5, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %4, align 8
  %52 = getelementptr inbounds %struct.txx9aclc_plat_drvdata, %struct.txx9aclc_plat_drvdata* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @txx9aclc_ac97_irq, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_name(i32* %58)
  %60 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %4, align 8
  %61 = call i32 @devm_request_irq(i32* %54, i32 %55, i32 %56, i32 0, i32 %59, %struct.txx9aclc_plat_drvdata* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %76

66:                                               ; preds = %44
  %67 = call i32 @snd_soc_set_ac97_ops(i32* @txx9aclc_ac97_ops)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %76

72:                                               ; preds = %66
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @devm_snd_soc_register_component(i32* %74, i32* @txx9aclc_ac97_component, i32* @txx9aclc_ac97_dai, i32 1)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %70, %64, %39, %21, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.txx9aclc_plat_drvdata* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.txx9aclc_plat_drvdata*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.txx9aclc_plat_drvdata*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @snd_soc_set_ac97_ops(i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
