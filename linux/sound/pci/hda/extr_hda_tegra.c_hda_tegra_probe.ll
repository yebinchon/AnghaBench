; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_card = type { %struct.azx* }
%struct.azx = type { i32 }
%struct.hda_tegra = type { i32, i32*, %struct.azx }

@AZX_DCAPS_CORBRP_SELF_CLEAR = common dso_local global i32 0, align 4
@AZX_DCAPS_PM_RUNTIME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error creating card!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hda_tegra_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_tegra_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.azx*, align 8
  %7 = alloca %struct.hda_tegra*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @AZX_DCAPS_CORBRP_SELF_CLEAR, align 4
  %10 = load i32, i32* @AZX_DCAPS_PM_RUNTIME, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hda_tegra* @devm_kzalloc(i32* %13, i32 24, i32 %14)
  store %struct.hda_tegra* %15, %struct.hda_tegra** %7, align 8
  %16 = load %struct.hda_tegra*, %struct.hda_tegra** %7, align 8
  %17 = icmp ne %struct.hda_tegra* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %83

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.hda_tegra*, %struct.hda_tegra** %7, align 8
  %25 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.hda_tegra*, %struct.hda_tegra** %7, align 8
  %27 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %26, i32 0, i32 2
  store %struct.azx* %27, %struct.azx** %6, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %31 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %32 = load i32, i32* @THIS_MODULE, align 4
  %33 = call i32 @snd_card_new(i32* %29, i32 %30, i32 %31, i32 %32, i32 0, %struct.snd_card** %5)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %83

41:                                               ; preds = %21
  %42 = load %struct.hda_tegra*, %struct.hda_tegra** %7, align 8
  %43 = call i32 @hda_tegra_init_clk(%struct.hda_tegra* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %79

47:                                               ; preds = %41
  %48 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.hda_tegra*, %struct.hda_tegra** %7, align 8
  %51 = call i32 @hda_tegra_create(%struct.snd_card* %48, i32 %49, %struct.hda_tegra* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %79

55:                                               ; preds = %47
  %56 = load %struct.azx*, %struct.azx** %6, align 8
  %57 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %58 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %57, i32 0, i32 0
  store %struct.azx* %56, %struct.azx** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %62 = call i32 @dev_set_drvdata(i32* %60, %struct.snd_card* %61)
  %63 = load %struct.hda_tegra*, %struct.hda_tegra** %7, align 8
  %64 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @pm_runtime_enable(i32* %65)
  %67 = load %struct.azx*, %struct.azx** %6, align 8
  %68 = call i32 @azx_has_pm_runtime(%struct.azx* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %55
  %71 = load %struct.hda_tegra*, %struct.hda_tegra** %7, align 8
  %72 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @pm_runtime_forbid(i32* %73)
  br label %75

75:                                               ; preds = %70, %55
  %76 = load %struct.hda_tegra*, %struct.hda_tegra** %7, align 8
  %77 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %76, i32 0, i32 0
  %78 = call i32 @schedule_work(i32* %77)
  store i32 0, i32* %2, align 4
  br label %83

79:                                               ; preds = %54, %46
  %80 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %81 = call i32 @snd_card_free(%struct.snd_card* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %75, %36, %18
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.hda_tegra* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @snd_card_new(i32*, i32, i32, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hda_tegra_init_clk(%struct.hda_tegra*) #1

declare dso_local i32 @hda_tegra_create(%struct.snd_card*, i32, %struct.hda_tegra*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.snd_card*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @azx_has_pm_runtime(%struct.azx*) #1

declare dso_local i32 @pm_runtime_forbid(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
