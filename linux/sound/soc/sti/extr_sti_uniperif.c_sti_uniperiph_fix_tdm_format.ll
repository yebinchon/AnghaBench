; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_fix_tdm_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_fix_tdm_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32, %struct.uniperif* }
%struct.uniperif = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_mask = type { i32* }

@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"format not supported: %d bits\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_MASK_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_uniperiph_fix_tdm_format(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.uniperif*, align 8
  %7 = alloca %struct.snd_mask*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %9 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %9, i32 0, i32 1
  %11 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  store %struct.uniperif* %11, %struct.uniperif** %6, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %13 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %12, i32 %15)
  store %struct.snd_mask* %16, %struct.snd_mask** %7, align 8
  %17 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %18 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %25 [
    i32 16, label %21
    i32 32, label %23
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  store i32 %22, i32* %8, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  store i32 %24, i32* %8, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %27 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %30 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %77

36:                                               ; preds = %23, %21
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %39 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 32
  %46 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %47 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %53 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* @SNDRV_MASK_MAX, align 4
  %57 = sub nsw i32 %56, 64
  %58 = sdiv i32 %57, 8
  %59 = call i32 @memset(i32* %55, i32 0, i32 %58)
  %60 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %61 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %36
  %67 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %68 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %66, %36
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %73, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
