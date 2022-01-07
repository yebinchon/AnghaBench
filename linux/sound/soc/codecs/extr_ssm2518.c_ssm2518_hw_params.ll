; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ssm2518 = type { i32, i64 }

@SSM2518_SAI_CTRL1_FS_MASK = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FS_8000_12000 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FS_16000_24000 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FS_32000_48000 = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FS_64000_96000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FMT_RJ_16BIT = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FMT_RJ_24BIT = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FMT_MASK = common dso_local global i32 0, align 4
@SSM2518_REG_CLOCK = common dso_local global i32 0, align 4
@SSM2518_CLOCK_ASR = common dso_local global i32 0, align 4
@SSM2518_REG_SAI_CTRL1 = common dso_local global i32 0, align 4
@SSM2518_REG_POWER1 = common dso_local global i32 0, align 4
@SSM2518_POWER1_MCS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ssm2518_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2518_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.ssm2518*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.ssm2518* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.ssm2518* %19, %struct.ssm2518** %9, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.ssm2518*, %struct.ssm2518** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @ssm2518_lookup_mcs(%struct.ssm2518* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %4, align 4
  br label %124

29:                                               ; preds = %3
  %30 = load i32, i32* @SSM2518_SAI_CTRL1_FS_MASK, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp uge i32 %31, 8000
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = icmp ule i32 %34, 12000
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @SSM2518_SAI_CTRL1_FS_8000_12000, align 4
  store i32 %37, i32* %11, align 4
  br label %68

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %10, align 4
  %40 = icmp uge i32 %39, 16000
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp ule i32 %42, 24000
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @SSM2518_SAI_CTRL1_FS_16000_24000, align 4
  store i32 %45, i32* %11, align 4
  br label %67

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %10, align 4
  %48 = icmp uge i32 %47, 32000
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp ule i32 %50, 48000
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @SSM2518_SAI_CTRL1_FS_32000_48000, align 4
  store i32 %53, i32* %11, align 4
  br label %66

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %10, align 4
  %56 = icmp uge i32 %55, 64000
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp ule i32 %58, 96000
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @SSM2518_SAI_CTRL1_FS_64000_96000, align 4
  store i32 %61, i32* %11, align 4
  br label %65

62:                                               ; preds = %57, %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %124

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %52
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.ssm2518*, %struct.ssm2518** %9, align 8
  %70 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %75 = call i32 @params_width(%struct.snd_pcm_hw_params* %74)
  switch i32 %75, label %84 [
    i32 16, label %76
    i32 24, label %80
  ]

76:                                               ; preds = %73
  %77 = load i32, i32* @SSM2518_SAI_CTRL1_FMT_RJ_16BIT, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %87

80:                                               ; preds = %73
  %81 = load i32, i32* @SSM2518_SAI_CTRL1_FMT_RJ_24BIT, align 4
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %124

87:                                               ; preds = %80, %76
  %88 = load i32, i32* @SSM2518_SAI_CTRL1_FMT_MASK, align 4
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %87, %68
  %92 = load %struct.ssm2518*, %struct.ssm2518** %9, align 8
  %93 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SSM2518_REG_CLOCK, align 4
  %96 = load i32, i32* @SSM2518_CLOCK_ASR, align 4
  %97 = load i32, i32* @SSM2518_CLOCK_ASR, align 4
  %98 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %4, align 4
  br label %124

103:                                              ; preds = %91
  %104 = load %struct.ssm2518*, %struct.ssm2518** %9, align 8
  %105 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SSM2518_REG_SAI_CTRL1, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %4, align 4
  br label %124

115:                                              ; preds = %103
  %116 = load %struct.ssm2518*, %struct.ssm2518** %9, align 8
  %117 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SSM2518_REG_POWER1, align 4
  %120 = load i32, i32* @SSM2518_POWER1_MCS_MASK, align 4
  %121 = load i32, i32* %13, align 4
  %122 = shl i32 %121, 1
  %123 = call i32 @regmap_update_bits(i32 %118, i32 %119, i32 %120, i32 %122)
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %115, %113, %101, %84, %62, %27
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.ssm2518* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ssm2518_lookup_mcs(%struct.ssm2518*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
