; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_isabelle.c_isabelle_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_isabelle.c_isabelle_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ISABELLE_AIF_MS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ISABELLE_I2S_MODE = common dso_local global i32 0, align 4
@ISABELLE_LEFT_J_MODE = common dso_local global i32 0, align 4
@ISABELLE_PDM_MODE = common dso_local global i32 0, align 4
@ISABELLE_INTF_CFG_REG = common dso_local global i32 0, align 4
@ISABELLE_AIF_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @isabelle_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isabelle_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %23 [
    i32 131, label %14
    i32 132, label %19
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @ISABELLE_AIF_MS, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @ISABELLE_AIF_MS, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %19, %14
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %42 [
    i32 130, label %30
    i32 129, label %34
    i32 128, label %38
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* @ISABELLE_I2S_MODE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %45

34:                                               ; preds = %26
  %35 = load i32, i32* @ISABELLE_LEFT_J_MODE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %45

38:                                               ; preds = %26
  %39 = load i32, i32* @ISABELLE_PDM_MODE, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %38, %34, %30
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %47 = load i32, i32* @ISABELLE_INTF_CFG_REG, align 4
  %48 = load i32, i32* @ISABELLE_AIF_MS, align 4
  %49 = load i32, i32* @ISABELLE_AIF_FMT_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %50, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %42, %23
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
