; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic26.c_aic26_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic26.c_aic26_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.aic26 = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"aic26_set_fmt(dai=%p, fmt==%i)\0A\00", align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"bad master\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@AIC26_DATFM_I2S = common dso_local global i32 0, align 4
@AIC26_DATFM_DSP = common dso_local global i32 0, align 4
@AIC26_DATFM_RIGHTJ = common dso_local global i32 0, align 4
@AIC26_DATFM_LEFTJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"bad format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @aic26_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic26_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.aic26*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.aic26* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.aic26* %12, %struct.aic26** %7, align 8
  %13 = load %struct.aic26*, %struct.aic26** %7, align 8
  %14 = getelementptr inbounds %struct.aic26, %struct.aic26* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.snd_soc_dai* %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %29 [
    i32 133, label %23
    i32 132, label %26
  ]

23:                                               ; preds = %2
  %24 = load %struct.aic26*, %struct.aic26** %7, align 8
  %25 = getelementptr inbounds %struct.aic26, %struct.aic26* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.aic26*, %struct.aic26** %7, align 8
  %28 = getelementptr inbounds %struct.aic26, %struct.aic26* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.aic26*, %struct.aic26** %7, align 8
  %31 = getelementptr inbounds %struct.aic26, %struct.aic26* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %66

37:                                               ; preds = %26, %23
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %57 [
    i32 130, label %41
    i32 131, label %45
    i32 128, label %49
    i32 129, label %53
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @AIC26_DATFM_I2S, align 4
  %43 = load %struct.aic26*, %struct.aic26** %7, align 8
  %44 = getelementptr inbounds %struct.aic26, %struct.aic26* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %65

45:                                               ; preds = %37
  %46 = load i32, i32* @AIC26_DATFM_DSP, align 4
  %47 = load %struct.aic26*, %struct.aic26** %7, align 8
  %48 = getelementptr inbounds %struct.aic26, %struct.aic26* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %65

49:                                               ; preds = %37
  %50 = load i32, i32* @AIC26_DATFM_RIGHTJ, align 4
  %51 = load %struct.aic26*, %struct.aic26** %7, align 8
  %52 = getelementptr inbounds %struct.aic26, %struct.aic26* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %65

53:                                               ; preds = %37
  %54 = load i32, i32* @AIC26_DATFM_LEFTJ, align 4
  %55 = load %struct.aic26*, %struct.aic26** %7, align 8
  %56 = getelementptr inbounds %struct.aic26, %struct.aic26* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %65

57:                                               ; preds = %37
  %58 = load %struct.aic26*, %struct.aic26** %7, align 8
  %59 = getelementptr inbounds %struct.aic26, %struct.aic26* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %53, %49, %45, %41
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %57, %29
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.aic26* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
