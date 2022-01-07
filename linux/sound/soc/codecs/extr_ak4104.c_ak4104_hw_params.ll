; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4104.c_ak4104_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4104.c_ak4104_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ak4104_private = type { i32 }

@IEC958_AES0_CON_NOT_COPYRIGHT = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_22050 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_24000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_32000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_88200 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_96000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_176400 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_192000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unsupported sampling rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ak4104_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4104_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.ak4104_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.ak4104_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.ak4104_private* %16, %struct.ak4104_private** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @IEC958_AES0_CON_NOT_COPYRIGHT, align 4
  %18 = load i32, i32* %11, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ak4104_private*, %struct.ak4104_private** %9, align 8
  %21 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AK4104_REG_CHN_STATUS(i32 0)
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @regmap_write(i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %11, align 4
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %27 = call i32 @params_rate(%struct.snd_pcm_hw_params* %26)
  switch i32 %27, label %64 [
    i32 22050, label %28
    i32 24000, label %32
    i32 32000, label %36
    i32 44100, label %40
    i32 48000, label %44
    i32 88200, label %48
    i32 96000, label %52
    i32 176400, label %56
    i32 192000, label %60
  ]

28:                                               ; preds = %3
  %29 = load i32, i32* @IEC958_AES3_CON_FS_22050, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %71

32:                                               ; preds = %3
  %33 = load i32, i32* @IEC958_AES3_CON_FS_24000, align 4
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %71

36:                                               ; preds = %3
  %37 = load i32, i32* @IEC958_AES3_CON_FS_32000, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %71

40:                                               ; preds = %3
  %41 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %71

44:                                               ; preds = %3
  %45 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %71

48:                                               ; preds = %3
  %49 = load i32, i32* @IEC958_AES3_CON_FS_88200, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %71

52:                                               ; preds = %3
  %53 = load i32, i32* @IEC958_AES3_CON_FS_96000, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %71

56:                                               ; preds = %3
  %57 = load i32, i32* @IEC958_AES3_CON_FS_176400, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %71

60:                                               ; preds = %3
  %61 = load i32, i32* @IEC958_AES3_CON_FS_192000, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %71

64:                                               ; preds = %3
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %66 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %83

71:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32, %28
  %72 = load %struct.ak4104_private*, %struct.ak4104_private** %9, align 8
  %73 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @AK4104_REG_CHN_STATUS(i32 3)
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @regmap_write(i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %83

82:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %80, %64
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.ak4104_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @AK4104_REG_CHN_STATUS(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
