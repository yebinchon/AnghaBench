; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { %struct.rsnd_dma_ctrl* }
%struct.rsnd_dma_ctrl = type { i32, i64 }
%struct.platform_device = type { i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"audmapp\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"dma allocate failed\0A\00", align 1
@mem = common dso_local global i32 0, align 4
@mem_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_dma_probe(%struct.rsnd_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsnd_priv*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.rsnd_dma_ctrl*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %3, align 8
  %8 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %9 = call %struct.platform_device* @rsnd_priv_to_pdev(%struct.rsnd_priv* %8)
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %11 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %13 = call i64 @rsnd_is_gen1(%struct.rsnd_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %19, %struct.resource** %7, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.rsnd_dma_ctrl* @devm_kzalloc(%struct.device* %20, i32 16, i32 %21)
  store %struct.rsnd_dma_ctrl* %22, %struct.rsnd_dma_ctrl** %6, align 8
  %23 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %6, align 8
  %24 = icmp ne %struct.rsnd_dma_ctrl* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

31:                                               ; preds = %25
  %32 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %6, align 8
  %33 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = call i32 @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %6, align 8
  %38 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %6, align 8
  %40 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %6, align 8
  %46 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %31
  %50 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %6, align 8
  %51 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %52 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %51, i32 0, i32 0
  store %struct.rsnd_dma_ctrl* %50, %struct.rsnd_dma_ctrl** %52, align 8
  %53 = call i32 @rsnd_mod_init(i32* null, i32* @mem, i32* @mem_ops, i32* null, i32 0, i32 0)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %44, %28, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.platform_device* @rsnd_priv_to_pdev(%struct.rsnd_priv*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i64 @rsnd_is_gen1(%struct.rsnd_priv*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.rsnd_dma_ctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rsnd_mod_init(i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
