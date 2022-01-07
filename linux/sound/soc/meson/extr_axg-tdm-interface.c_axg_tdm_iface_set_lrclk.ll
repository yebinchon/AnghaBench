; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_set_lrclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_set_lrclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.axg_tdm_iface = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"setting sample clock failed: %d\0A\00", align 1
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"setting sample clock duty cycle failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"setting sample clock phase failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*)* @axg_tdm_iface_set_lrclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdm_iface_set_lrclk(%struct.snd_soc_dai* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.axg_tdm_iface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.axg_tdm_iface* %10, %struct.axg_tdm_iface** %6, align 8
  %11 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %12 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %15 = call i32 @params_rate(%struct.snd_pcm_hw_params* %14)
  %16 = call i32 @clk_set_rate(i32 %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %2
  %27 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %28 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %34 [
    i32 130, label %32
    i32 129, label %32
    i32 128, label %32
    i32 132, label %33
    i32 131, label %33
  ]

32:                                               ; preds = %26, %26, %26
  store i32 1, i32* %7, align 4
  br label %37

33:                                               ; preds = %26, %26
  store i32 0, i32* %7, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %74

37:                                               ; preds = %33, %32
  %38 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %39 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @clk_set_duty_cycle(i32 %40, i32 %41, i32 2)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %74

52:                                               ; preds = %37
  %53 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %54 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %57 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @axg_tdm_lrclk_invert(i32 %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 180, i32 0
  %63 = call i32 @clk_set_phase(i32 %55, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %52
  %67 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %66, %45, %34, %19
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_set_duty_cycle(i32, i32, i32) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

declare dso_local i64 @axg_tdm_lrclk_invert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
