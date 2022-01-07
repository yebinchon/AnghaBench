; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_asoc_qcom_lpass_platform_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_asoc_qcom_lpass_platform_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpass_data = type { i64, i32, %struct.lpass_variant* }
%struct.lpass_variant = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"lpass-irq-lpaif\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LPAIF_IRQ_PORT_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error writing to irqen reg: %d\0A\00", align 1
@lpass_platform_lpaif_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"irq request failed: %d\0A\00", align 1
@lpass_component_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_qcom_lpass_platform_register(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpass_data*, align 8
  %5 = alloca %struct.lpass_variant*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.lpass_data* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.lpass_data* %8, %struct.lpass_data** %4, align 8
  %9 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %10 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %9, i32 0, i32 2
  %11 = load %struct.lpass_variant*, %struct.lpass_variant** %10, align 8
  store %struct.lpass_variant* %11, %struct.lpass_variant** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i64 @platform_get_irq_byname(%struct.platform_device* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %15 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %17 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %61

23:                                               ; preds = %1
  %24 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %25 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.lpass_variant*, %struct.lpass_variant** %5, align 8
  %28 = load i32, i32* @LPAIF_IRQ_PORT_HOST, align 4
  %29 = call i32 @LPAIF_IRQEN_REG(%struct.lpass_variant* %27, i32 %28)
  %30 = call i32 @regmap_write(i32 %26, i32 %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %23
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %43 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @lpass_platform_lpaif_irq, align 4
  %46 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %47 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %48 = call i32 @devm_request_irq(i32* %41, i64 %44, i32 %45, i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.lpass_data* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %39
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @devm_snd_soc_register_component(i32* %59, i32* @lpass_component_driver, i32* null, i32 0)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %51, %33, %20
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.lpass_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @LPAIF_IRQEN_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i8*, %struct.lpass_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
