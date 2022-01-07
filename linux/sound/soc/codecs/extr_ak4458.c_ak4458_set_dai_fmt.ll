; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ak4458_priv = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Master mode unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Audio format 0x%02X unsupported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ak4458_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4458_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.ak4458_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.ak4458_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.ak4458_priv* %12, %struct.ak4458_priv** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %18 [
    i32 132, label %16
    i32 135, label %17
    i32 133, label %17
    i32 134, label %17
  ]

16:                                               ; preds = %2
  br label %25

17:                                               ; preds = %2, %2, %2
  br label %18

18:                                               ; preds = %2, %17
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %35 [
    i32 130, label %29
    i32 129, label %29
    i32 128, label %29
    i32 131, label %29
  ]

29:                                               ; preds = %25, %25, %25, %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.ak4458_priv*, %struct.ak4458_priv** %7, align 8
  %34 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %45

35:                                               ; preds = %25
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %41 = and i32 %39, %40
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %29
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %47 = call i32 @ak4458_rstn_control(%struct.snd_soc_component* %46, i32 0)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %49 = call i32 @ak4458_rstn_control(%struct.snd_soc_component* %48, i32 1)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %35, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.ak4458_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ak4458_rstn_control(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
