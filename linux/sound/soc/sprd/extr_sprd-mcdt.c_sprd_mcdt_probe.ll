; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sprd_mcdt_dev = type { i32, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sprd_mcdt_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sprd-mcdt\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to request MCDT IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_mcdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_mcdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sprd_mcdt_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sprd_mcdt_dev* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.sprd_mcdt_dev* %11, %struct.sprd_mcdt_dev** %4, align 8
  %12 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %13 = icmp ne %struct.sprd_mcdt_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call i32 @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %26 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %28 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %34 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %72

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %41 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %43 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.sprd_mcdt_dev* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i32 @platform_get_irq(%struct.platform_device* %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %72

54:                                               ; preds = %37
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @sprd_mcdt_irq_handler, align 4
  %59 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %60 = call i32 @devm_request_irq(i32* %56, i32 %57, i32 %58, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.sprd_mcdt_dev* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %72

68:                                               ; preds = %54
  %69 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %70 = load %struct.resource*, %struct.resource** %5, align 8
  %71 = call i32 @sprd_mcdt_init_chans(%struct.sprd_mcdt_dev* %69, %struct.resource* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %63, %52, %32, %14
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.sprd_mcdt_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sprd_mcdt_dev*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.sprd_mcdt_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sprd_mcdt_init_chans(%struct.sprd_mcdt_dev*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
