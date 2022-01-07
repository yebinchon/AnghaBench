; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98504.c_max98504_set_channel_map.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98504.c_max98504_set_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.max98504_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }

@MAX98504_PCM_TX_CHANNEL_SOURCES = common dso_local global i32 0, align 4
@MAX98504_PDM_TX_CONTROL = common dso_local global i32 0, align 4
@MAX98504_MEASUREMENT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32*, i32, i32*)* @max98504_set_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98504_set_channel_map(%struct.snd_soc_dai* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.max98504_priv*, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = call %struct.max98504_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.max98504_priv* %16, %struct.max98504_priv** %11, align 8
  %17 = load %struct.max98504_priv*, %struct.max98504_priv** %11, align 8
  %18 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %37, %5
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* %13, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %31, %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %13, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %54 [
    i32 129, label %44
    i32 128, label %49
  ]

44:                                               ; preds = %40
  %45 = load %struct.regmap*, %struct.regmap** %12, align 8
  %46 = load i32, i32* @MAX98504_PCM_TX_CHANNEL_SOURCES, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @regmap_write(%struct.regmap* %45, i32 %46, i32 %47)
  br label %56

49:                                               ; preds = %40
  %50 = load %struct.regmap*, %struct.regmap** %12, align 8
  %51 = load i32, i32* @MAX98504_PDM_TX_CONTROL, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @regmap_write(%struct.regmap* %50, i32 %51, i32 %52)
  br label %56

54:                                               ; preds = %40
  %55 = call i32 @WARN_ON(i32 1)
  br label %56

56:                                               ; preds = %54, %49, %44
  %57 = load %struct.regmap*, %struct.regmap** %12, align 8
  %58 = load i32, i32* @MAX98504_MEASUREMENT_ENABLE, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 3, i32 1
  %63 = call i32 @regmap_write(%struct.regmap* %57, i32 %58, i32 %62)
  ret i32 0
}

declare dso_local %struct.max98504_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
