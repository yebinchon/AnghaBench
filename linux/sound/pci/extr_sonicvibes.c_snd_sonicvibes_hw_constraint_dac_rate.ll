; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_hw_constraint_dac_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_hw_constraint_dac_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32, i32 }
%struct.snd_pcm_hw_rule = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SV_REFFREQUENCY = common dso_local global i32 0, align 4
@SV_ADCMULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_sonicvibes_hw_constraint_dac_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_hw_constraint_dac_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %11 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %12 = call %struct.TYPE_2__* @hw_param_interval(%struct.snd_pcm_hw_params* %10, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %17 = call %struct.TYPE_2__* @hw_param_interval(%struct.snd_pcm_hw_params* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %2
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %23 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %24 = call %struct.TYPE_2__* @hw_param_interval(%struct.snd_pcm_hw_params* %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = udiv i32 48000, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ugt i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 8, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32, i32* %6, align 4
  %34 = udiv i32 48000, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %68

43:                                               ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @snd_sonicvibes_pll(i32 %44, i32* %7, i32* %8, i32* %9)
  %46 = load i32, i32* @SV_REFFREQUENCY, align 4
  %47 = srem i32 %46, 16
  %48 = call i32 @snd_BUG_ON(i32 %47)
  %49 = load i32, i32* @SV_ADCMULT, align 4
  %50 = srem i32 %49, 512
  %51 = call i32 @snd_BUG_ON(i32 %50)
  %52 = load i32, i32* @SV_REFFREQUENCY, align 4
  %53 = sdiv i32 %52, 16
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 2
  %56 = mul i32 %53, %55
  %57 = load i32, i32* %7, align 4
  %58 = mul i32 %56, %57
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SV_ADCMULT, align 4
  %62 = sdiv i32 %61, 512
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 2
  %65 = mul i32 %62, %64
  %66 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %43, %37
  br label %69

69:                                               ; preds = %68, %2
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_sonicvibes_pll(i32, i32*, i32*, i32*) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
