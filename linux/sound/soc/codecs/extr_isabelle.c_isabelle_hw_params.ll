; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_isabelle.c_isabelle_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_isabelle.c_isabelle_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@ISABELLE_FS_RATE_8 = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_11 = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_12 = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_16 = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_22 = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_24 = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_32 = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_44 = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_48 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_CFG_REG = common dso_local global i32 0, align 4
@ISABELLE_FS_RATE_MASK = common dso_local global i32 0, align 4
@ISABELLE_AIF_LENGTH_20 = common dso_local global i32 0, align 4
@ISABELLE_AIF_LENGTH_32 = common dso_local global i32 0, align 4
@ISABELLE_INTF_CFG_REG = common dso_local global i32 0, align 4
@ISABELLE_AIF_LENGTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @isabelle_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isabelle_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_rate(%struct.snd_pcm_hw_params* %14)
  switch i32 %15, label %34 [
    i32 8000, label %16
    i32 11025, label %18
    i32 12000, label %20
    i32 16000, label %22
    i32 22050, label %24
    i32 24000, label %26
    i32 32000, label %28
    i32 44100, label %30
    i32 48000, label %32
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @ISABELLE_FS_RATE_8, align 4
  store i32 %17, i32* %10, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load i32, i32* @ISABELLE_FS_RATE_11, align 4
  store i32 %19, i32* %10, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load i32, i32* @ISABELLE_FS_RATE_12, align 4
  store i32 %21, i32* %10, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load i32, i32* @ISABELLE_FS_RATE_16, align 4
  store i32 %23, i32* %10, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load i32, i32* @ISABELLE_FS_RATE_22, align 4
  store i32 %25, i32* %10, align 4
  br label %37

26:                                               ; preds = %3
  %27 = load i32, i32* @ISABELLE_FS_RATE_24, align 4
  store i32 %27, i32* %10, align 4
  br label %37

28:                                               ; preds = %3
  %29 = load i32, i32* @ISABELLE_FS_RATE_32, align 4
  store i32 %29, i32* %10, align 4
  br label %37

30:                                               ; preds = %3
  %31 = load i32, i32* @ISABELLE_FS_RATE_44, align 4
  store i32 %31, i32* %10, align 4
  br label %37

32:                                               ; preds = %3
  %33 = load i32, i32* @ISABELLE_FS_RATE_48, align 4
  store i32 %33, i32* %10, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %32, %30, %28, %26, %24, %22, %20, %18, %16
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = load i32, i32* @ISABELLE_FS_RATE_CFG_REG, align 4
  %40 = load i32, i32* @ISABELLE_FS_RATE_MASK, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %44 = call i32 @params_width(%struct.snd_pcm_hw_params* %43)
  switch i32 %44, label %53 [
    i32 20, label %45
    i32 32, label %49
  ]

45:                                               ; preds = %37
  %46 = load i32, i32* @ISABELLE_AIF_LENGTH_20, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %56

49:                                               ; preds = %37
  %50 = load i32, i32* @ISABELLE_AIF_LENGTH_32, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %56

53:                                               ; preds = %37
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %62

56:                                               ; preds = %49, %45
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %58 = load i32, i32* @ISABELLE_INTF_CFG_REG, align 4
  %59 = load i32, i32* @ISABELLE_AIF_LENGTH_MASK, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %59, i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %53, %34
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
