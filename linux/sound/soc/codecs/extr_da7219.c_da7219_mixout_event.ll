; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_mixout_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_mixout_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@DA7219_HP_L_CTRL = common dso_local global i32 0, align 4
@DA7219_HP_L_AMP_MIN_GAIN_EN_MASK = common dso_local global i32 0, align 4
@DA7219_HP_R_CTRL = common dso_local global i32 0, align 4
@DA7219_HP_R_AMP_MIN_GAIN_EN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DA7219_MIN_GAIN_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @da7219_mixout_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_mixout_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 131, label %18
    i32 130, label %21
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @DA7219_HP_L_CTRL, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @DA7219_HP_L_AMP_MIN_GAIN_EN_MASK, align 4
  store i32 %20, i32* %10, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @DA7219_HP_R_CTRL, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @DA7219_HP_R_AMP_MIN_GAIN_EN_MASK, align 4
  store i32 %23, i32* %10, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %42 [
    i32 128, label %29
    i32 129, label %37
  ]

29:                                               ; preds = %27
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @DA7219_MIN_GAIN_DELAY, align 4
  %36 = call i32 @msleep(i32 %35)
  br label %42

37:                                               ; preds = %27
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %27, %37, %29
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
