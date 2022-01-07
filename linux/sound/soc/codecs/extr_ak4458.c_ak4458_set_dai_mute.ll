; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_set_dai_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_set_dai_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ak4458_priv = type { i32, i64 }

@AK4458_0B_CONTROL7 = common dso_local global i32 0, align 4
@AK4458_ATS_MASK = common dso_local global i32 0, align 4
@AK4458_ATS_SHIFT = common dso_local global i32 0, align 4
@att_speed = common dso_local global i32* null, align 8
@AK4458_01_CONTROL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ak4458_set_dai_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4458_set_dai_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.ak4458_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %5, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = call %struct.ak4458_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.ak4458_priv* %16, %struct.ak4458_priv** %6, align 8
  %17 = load %struct.ak4458_priv*, %struct.ak4458_priv** %6, align 8
  %18 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %21 = load i32, i32* @AK4458_0B_CONTROL7, align 4
  %22 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @AK4458_ATS_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @AK4458_ATS_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** @att_speed, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 1000
  %35 = sdiv i32 %32, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %2
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %40 = load i32, i32* @AK4458_01_CONTROL2, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 1, i32 1)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mdelay(i32 %42)
  %44 = load %struct.ak4458_priv*, %struct.ak4458_priv** %6, align 8
  %45 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.ak4458_priv*, %struct.ak4458_priv** %6, align 8
  %50 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @gpiod_set_value_cansleep(i64 %51, i32 1)
  br label %53

53:                                               ; preds = %48, %38
  br label %70

54:                                               ; preds = %2
  %55 = load %struct.ak4458_priv*, %struct.ak4458_priv** %6, align 8
  %56 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.ak4458_priv*, %struct.ak4458_priv** %6, align 8
  %61 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @gpiod_set_value_cansleep(i64 %62, i32 0)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %66 = load i32, i32* @AK4458_01_CONTROL2, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 1, i32 0)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @mdelay(i32 %68)
  br label %70

70:                                               ; preds = %64, %53
  ret i32 0
}

declare dso_local %struct.ak4458_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
