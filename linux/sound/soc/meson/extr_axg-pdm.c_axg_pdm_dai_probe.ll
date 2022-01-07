; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.axg_pdm = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"enabling pclk failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"setting sysclk failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"enabling sysclk failed\0A\00", align 1
@PDM_CTRL = common dso_local global i32 0, align 4
@PDM_CTRL_BYPASS_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid filter configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @axg_pdm_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_pdm_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.axg_pdm*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %7 = call %struct.axg_pdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %6)
  store %struct.axg_pdm* %7, %struct.axg_pdm** %4, align 8
  %8 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %9 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %1
  %21 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %22 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %25 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_set_rate(i32 %23, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %79

37:                                               ; preds = %20
  %38 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %39 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_prepare_enable(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %79

49:                                               ; preds = %37
  %50 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %51 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @axg_pdm_disable(i32 %52)
  %54 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %55 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PDM_CTRL, align 4
  %58 = load i32, i32* @PDM_CTRL_BYPASS_MODE, align 4
  %59 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 0)
  %60 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %61 = call i32 @axg_pdm_set_hcic_ctrl(%struct.axg_pdm* %60)
  %62 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %63 = call i32 @axg_pdm_set_hpf_ctrl(%struct.axg_pdm* %62)
  %64 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %65 = call i32 @axg_pdm_set_lpf_filters(%struct.axg_pdm* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %49
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %74

73:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %85

74:                                               ; preds = %68
  %75 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %76 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @clk_disable_unprepare(i32 %77)
  br label %79

79:                                               ; preds = %74, %44, %32
  %80 = load %struct.axg_pdm*, %struct.axg_pdm** %4, align 8
  %81 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @clk_disable_unprepare(i32 %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %73, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.axg_pdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @axg_pdm_disable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @axg_pdm_set_hcic_ctrl(%struct.axg_pdm*) #1

declare dso_local i32 @axg_pdm_set_hpf_ctrl(%struct.axg_pdm*) #1

declare dso_local i32 @axg_pdm_set_lpf_filters(%struct.axg_pdm*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
