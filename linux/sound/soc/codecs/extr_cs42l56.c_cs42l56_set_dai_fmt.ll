; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42l56_private = type { i32, i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@CS42L56_MASTER_MODE = common dso_local global i32 0, align 4
@CS42L56_SLAVE_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@CS42L56_DIG_FMT_I2S = common dso_local global i32 0, align 4
@CS42L56_DIG_FMT_LEFT_J = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@CS42L56_SCLK_INV = common dso_local global i32 0, align 4
@CS42L56_CLKCTL_1 = common dso_local global i32 0, align 4
@CS42L56_MS_MODE_MASK = common dso_local global i32 0, align 4
@CS42L56_SERIAL_FMT = common dso_local global i32 0, align 4
@CS42L56_DIG_FMT_MASK = common dso_local global i32 0, align 4
@CS42L56_SCLK_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs42l56_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l56_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs42l56_private*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.cs42l56_private* %12, %struct.cs42l56_private** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %24 [
    i32 133, label %16
    i32 132, label %20
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @CS42L56_MASTER_MODE, align 4
  %18 = load %struct.cs42l56_private*, %struct.cs42l56_private** %7, align 8
  %19 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @CS42L56_SLAVE_MODE, align 4
  %22 = load %struct.cs42l56_private*, %struct.cs42l56_private** %7, align 8
  %23 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %78

27:                                               ; preds = %20, %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %39 [
    i32 131, label %31
    i32 129, label %35
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* @CS42L56_DIG_FMT_I2S, align 4
  %33 = load %struct.cs42l56_private*, %struct.cs42l56_private** %7, align 8
  %34 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %42

35:                                               ; preds = %27
  %36 = load i32, i32* @CS42L56_DIG_FMT_LEFT_J, align 4
  %37 = load %struct.cs42l56_private*, %struct.cs42l56_private** %7, align 8
  %38 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %78

42:                                               ; preds = %35, %31
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %53 [
    i32 128, label %46
    i32 130, label %49
  ]

46:                                               ; preds = %42
  %47 = load %struct.cs42l56_private*, %struct.cs42l56_private** %7, align 8
  %48 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %56

49:                                               ; preds = %42
  %50 = load i32, i32* @CS42L56_SCLK_INV, align 4
  %51 = load %struct.cs42l56_private*, %struct.cs42l56_private** %7, align 8
  %52 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %49, %46
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %58 = load i32, i32* @CS42L56_CLKCTL_1, align 4
  %59 = load i32, i32* @CS42L56_MS_MODE_MASK, align 4
  %60 = load %struct.cs42l56_private*, %struct.cs42l56_private** %7, align 8
  %61 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %59, i32 %62)
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %65 = load i32, i32* @CS42L56_SERIAL_FMT, align 4
  %66 = load i32, i32* @CS42L56_DIG_FMT_MASK, align 4
  %67 = load %struct.cs42l56_private*, %struct.cs42l56_private** %7, align 8
  %68 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %66, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %72 = load i32, i32* @CS42L56_CLKCTL_1, align 4
  %73 = load i32, i32* @CS42L56_SCLK_INV_MASK, align 4
  %74 = load %struct.cs42l56_private*, %struct.cs42l56_private** %7, align 8
  %75 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %56, %53, %39, %24
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
