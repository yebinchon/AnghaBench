; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_deemph.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_deemph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adav80x = type { i32, i32, i64 }

@ADAV80X_DAC_CTRL2_DEEMPH_32 = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2_DEEMPH_44 = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2_DEEMPH_48 = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2_DEEMPH_NONE = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2 = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2_DEEMPH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @adav80x_set_deemph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adav80x_set_deemph(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.adav80x*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.adav80x* %6, %struct.adav80x** %3, align 8
  %7 = load %struct.adav80x*, %struct.adav80x** %3, align 8
  %8 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.adav80x*, %struct.adav80x** %3, align 8
  %13 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %21 [
    i32 32000, label %15
    i32 44100, label %17
    i32 48000, label %19
    i32 64000, label %19
    i32 88200, label %19
    i32 96000, label %19
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @ADAV80X_DAC_CTRL2_DEEMPH_32, align 4
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %11
  %18 = load i32, i32* @ADAV80X_DAC_CTRL2_DEEMPH_44, align 4
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %11, %11, %11, %11
  %20 = load i32, i32* @ADAV80X_DAC_CTRL2_DEEMPH_48, align 4
  store i32 %20, i32* %4, align 4
  br label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @ADAV80X_DAC_CTRL2_DEEMPH_NONE, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %19, %17, %15
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ADAV80X_DAC_CTRL2_DEEMPH_NONE, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = load %struct.adav80x*, %struct.adav80x** %3, align 8
  %28 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ADAV80X_DAC_CTRL2, align 4
  %31 = load i32, i32* @ADAV80X_DAC_CTRL2_DEEMPH_MASK, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  ret i32 %33
}

declare dso_local %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
