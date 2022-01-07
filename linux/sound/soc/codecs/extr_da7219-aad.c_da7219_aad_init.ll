; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32, %struct.TYPE_2__*, %struct.da7219_aad_priv* }
%struct.TYPE_2__ = type { i64 }
%struct.da7219_aad_priv = type { i32, i32, i32, %struct.snd_soc_component* }

@DA7219_AAD_IRQ_REG_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_1 = common dso_local global i32 0, align 4
@DA7219_BUTTON_CONFIG_MASK = common dso_local global i32 0, align 4
@da7219_aad_btn_det_work = common dso_local global i32 0, align 4
@da7219_aad_hptest_work = common dso_local global i32 0, align 4
@da7219_aad_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"da7219-aad\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@DA7219_ACCDET_IRQ_MASK_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da7219_aad_init(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.da7219_priv*, align 8
  %5 = alloca %struct.da7219_aad_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.da7219_priv* %11, %struct.da7219_priv** %4, align 8
  %12 = load i32, i32* @DA7219_AAD_IRQ_REG_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.da7219_aad_priv* @devm_kzalloc(i32 %18, i32 24, i32 %19)
  store %struct.da7219_aad_priv* %20, %struct.da7219_aad_priv** %5, align 8
  %21 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %5, align 8
  %22 = icmp ne %struct.da7219_aad_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %94

26:                                               ; preds = %1
  %27 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %5, align 8
  %28 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %29 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %28, i32 0, i32 2
  store %struct.da7219_aad_priv* %27, %struct.da7219_aad_priv** %29, align 8
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %5, align 8
  %32 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %31, i32 0, i32 3
  store %struct.snd_soc_component* %30, %struct.snd_soc_component** %32, align 8
  %33 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %34 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %26
  %38 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %39 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = call i64 @da7219_aad_fw_to_pdata(%struct.snd_soc_component* %45)
  %47 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %48 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %46, i64* %50, align 8
  br label %51

51:                                               ; preds = %44, %37, %26
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = call i32 @da7219_aad_handle_pdata(%struct.snd_soc_component* %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = load i32, i32* @DA7219_ACCDET_CONFIG_1, align 4
  %56 = load i32, i32* @DA7219_BUTTON_CONFIG_MASK, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 0)
  %58 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %5, align 8
  %59 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %58, i32 0, i32 2
  %60 = load i32, i32* @da7219_aad_btn_det_work, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %5, align 8
  %63 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %62, i32 0, i32 1
  %64 = load i32, i32* @da7219_aad_hptest_work, align 4
  %65 = call i32 @INIT_WORK(i32* %63, i32 %64)
  %66 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %5, align 8
  %67 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @da7219_aad_irq_thread, align 4
  %70 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %71 = load i32, i32* @IRQF_ONESHOT, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %5, align 8
  %74 = call i32 @request_threaded_irq(i32 %68, i32* null, i32 %69, i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.da7219_aad_priv* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %51
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %79 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %94

84:                                               ; preds = %51
  %85 = load i32, i32* @DA7219_AAD_IRQ_REG_MAX, align 4
  %86 = call i32 @memset(i32* %15, i32 0, i32 %85)
  %87 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %88 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @DA7219_ACCDET_IRQ_MASK_A, align 4
  %91 = bitcast i32* %15 to i32**
  %92 = load i32, i32* @DA7219_AAD_IRQ_REG_MAX, align 4
  %93 = call i32 @regmap_bulk_write(i32 %89, i32 %90, i32** %91, i32 %92)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %94

94:                                               ; preds = %84, %77, %23
  %95 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.da7219_aad_priv* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i64 @da7219_aad_fw_to_pdata(%struct.snd_soc_component*) #1

declare dso_local i32 @da7219_aad_handle_pdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.da7219_aad_priv*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
