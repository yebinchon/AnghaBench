; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm4567.c_ssm4567_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm4567.c_ssm4567_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ssm4567 = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_1_BCLK = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_1_FSYNC = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_1_LJ = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_1_TDM = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_1_PDM = common dso_local global i32 0, align 4
@SSM4567_REG_SAI_CTRL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ssm4567_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm4567_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssm4567*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.ssm4567* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.ssm4567* %10, %struct.ssm4567** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %15 [
    i32 137, label %14
  ]

14:                                               ; preds = %2
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %91

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %35 [
    i32 129, label %22
    i32 132, label %23
    i32 130, label %27
    i32 133, label %31
  ]

22:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %38

23:                                               ; preds = %18
  %24 = load i32, i32* @SSM4567_SAI_CTRL_1_BCLK, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @SSM4567_SAI_CTRL_1_FSYNC, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %38

31:                                               ; preds = %18
  %32 = load i32, i32* @SSM4567_SAI_CTRL_1_BCLK, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %38

35:                                               ; preds = %18
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %91

38:                                               ; preds = %31, %27, %23, %22
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %65 [
    i32 134, label %42
    i32 131, label %43
    i32 136, label %51
    i32 135, label %55
    i32 128, label %61
  ]

42:                                               ; preds = %38
  br label %68

43:                                               ; preds = %38
  %44 = load i32, i32* @SSM4567_SAI_CTRL_1_LJ, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %8, align 4
  br label %68

51:                                               ; preds = %38
  %52 = load i32, i32* @SSM4567_SAI_CTRL_1_TDM, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %68

55:                                               ; preds = %38
  %56 = load i32, i32* @SSM4567_SAI_CTRL_1_TDM, align 4
  %57 = load i32, i32* @SSM4567_SAI_CTRL_1_LJ, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %68

61:                                               ; preds = %38
  %62 = load i32, i32* @SSM4567_SAI_CTRL_1_PDM, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %68

65:                                               ; preds = %38
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %91

68:                                               ; preds = %61, %55, %51, %43, %42
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @SSM4567_SAI_CTRL_1_FSYNC, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.ssm4567*, %struct.ssm4567** %6, align 8
  %77 = getelementptr inbounds %struct.ssm4567, %struct.ssm4567* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SSM4567_REG_SAI_CTRL_1, align 4
  %80 = load i32, i32* @SSM4567_SAI_CTRL_1_BCLK, align 4
  %81 = load i32, i32* @SSM4567_SAI_CTRL_1_FSYNC, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SSM4567_SAI_CTRL_1_LJ, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SSM4567_SAI_CTRL_1_TDM, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @SSM4567_SAI_CTRL_1_PDM, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %88, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %75, %65, %35, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.ssm4567* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
