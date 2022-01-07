; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_capture_pcm_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_capture_pcm_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dai = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.adav80x = type { i32 }

@ADAV80X_CAPTURE_WORD_LEN16 = common dso_local global i32 0, align 4
@ADAV80X_CAPTRUE_WORD_LEN18 = common dso_local global i32 0, align 4
@ADAV80X_CAPTURE_WORD_LEN20 = common dso_local global i32 0, align 4
@ADAV80X_CAPTURE_WORD_LEN24 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@adav80x_port_ctrl_regs = common dso_local global i32** null, align 8
@ADAV80X_CAPTURE_WORD_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*)* @adav80x_set_capture_pcm_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adav80x_set_capture_pcm_format(%struct.snd_soc_component* %0, %struct.snd_soc_dai* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca %struct.adav80x*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %6, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.adav80x* %11, %struct.adav80x** %8, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %13 = call i32 @params_width(%struct.snd_pcm_hw_params* %12)
  switch i32 %13, label %22 [
    i32 16, label %14
    i32 18, label %16
    i32 20, label %18
    i32 24, label %20
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @ADAV80X_CAPTURE_WORD_LEN16, align 4
  store i32 %15, i32* %9, align 4
  br label %25

16:                                               ; preds = %3
  %17 = load i32, i32* @ADAV80X_CAPTRUE_WORD_LEN18, align 4
  store i32 %17, i32* %9, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @ADAV80X_CAPTURE_WORD_LEN20, align 4
  store i32 %19, i32* %9, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @ADAV80X_CAPTURE_WORD_LEN24, align 4
  store i32 %21, i32* %9, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %20, %18, %16, %14
  %26 = load %struct.adav80x*, %struct.adav80x** %8, align 8
  %27 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32**, i32*** @adav80x_port_ctrl_regs, align 8
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ADAV80X_CAPTURE_WORD_LEN_MASK, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @regmap_update_bits(i32 %28, i32 %36, i32 %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %25, %22
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
