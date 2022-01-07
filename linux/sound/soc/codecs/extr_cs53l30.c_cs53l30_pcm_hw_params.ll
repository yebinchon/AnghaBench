; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs53l30.c_cs53l30_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs53l30.c_cs53l30_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.cs53l30_private = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CS53L30_INT_SR_CTL = common dso_local global i32 0, align 4
@CS53L30_INTRNL_FS_RATIO_MASK = common dso_local global i32 0, align 4
@cs53l30_mclk_coeffs = common dso_local global %struct.TYPE_2__* null, align 8
@CS53L30_MCLKCTL = common dso_local global i32 0, align 4
@CS53L30_MCLK_INT_SCALE_MASK = common dso_local global i32 0, align 4
@CS53L30_ASPCFG_CTL = common dso_local global i32 0, align 4
@CS53L30_ASP_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs53l30_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs53l30_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.cs53l30_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cs53l30_private* @snd_soc_component_get_drvdata(i32 %13)
  store %struct.cs53l30_private* %14, %struct.cs53l30_private** %8, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_rate(%struct.snd_pcm_hw_params* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %18 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @cs53l30_get_mclk_coeff(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %3
  %28 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %29 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CS53L30_INT_SR_CTL, align 4
  %32 = load i32, i32* @CS53L30_INTRNL_FS_RATIO_MASK, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs53l30_mclk_coeffs, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %38)
  %40 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %41 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CS53L30_MCLKCTL, align 4
  %44 = load i32, i32* @CS53L30_MCLK_INT_SCALE_MASK, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs53l30_mclk_coeffs, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %50)
  %52 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %53 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CS53L30_ASPCFG_CTL, align 4
  %56 = load i32, i32* @CS53L30_ASP_RATE_MASK, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs53l30_mclk_coeffs, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %27, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.cs53l30_private* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs53l30_get_mclk_coeff(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
