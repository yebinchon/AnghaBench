; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3060.c_pcm3060_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3060.c_pcm3060_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm3060_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported sysclock dir: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCM3060_DAI_ID_DAC = common dso_local global i64 0, align 8
@PCM3060_REG_CSEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unsupported sysclock id: %d\0A\00", align 1
@PCM3060_REG67 = common dso_local global i32 0, align 4
@PCM3060_REG72 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @pcm3060_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm3060_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.pcm3060_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %10, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %18 = call %struct.pcm3060_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.pcm3060_priv* %18, %struct.pcm3060_priv** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %90

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %55 [
    i32 128, label %32
    i32 130, label %33
    i32 129, label %44
  ]

32:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %63

33:                                               ; preds = %30
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCM3060_DAI_ID_DAC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @PCM3060_REG_CSEL, align 4
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  store i32 %43, i32* %13, align 4
  br label %63

44:                                               ; preds = %30
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCM3060_DAI_ID_DAC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @PCM3060_REG_CSEL, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i32 [ 0, %50 ], [ %52, %51 ]
  store i32 %54, i32* %13, align 4
  br label %63

55:                                               ; preds = %30
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %90

63:                                               ; preds = %53, %42, %32
  %64 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PCM3060_DAI_ID_DAC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @PCM3060_REG67, align 4
  store i32 %70, i32* %12, align 4
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @PCM3060_REG72, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %11, align 8
  %75 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @PCM3060_REG_CSEL, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %11, align 8
  %83 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %86 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %81, i32* %89, align 4
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %73, %55, %22
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.pcm3060_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
