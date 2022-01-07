; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm4567.c_ssm4567_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm4567.c_ssm4567_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ssm4567 = type { i32 }

@SSM4567_DAC_FS_8000_12000 = common dso_local global i32 0, align 4
@SSM4567_DAC_FS_16000_24000 = common dso_local global i32 0, align 4
@SSM4567_DAC_FS_32000_48000 = common dso_local global i32 0, align 4
@SSM4567_DAC_FS_64000_96000 = common dso_local global i32 0, align 4
@SSM4567_DAC_FS_128000_192000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSM4567_REG_DAC_CTRL = common dso_local global i32 0, align 4
@SSM4567_DAC_FS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ssm4567_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm4567_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.ssm4567*, align 8
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
  %16 = call %struct.ssm4567* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.ssm4567* %16, %struct.ssm4567** %9, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp uge i32 %19, 8000
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp ule i32 %22, 12000
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @SSM4567_DAC_FS_8000_12000, align 4
  store i32 %25, i32* %11, align 4
  br label %65

26:                                               ; preds = %21, %3
  %27 = load i32, i32* %10, align 4
  %28 = icmp uge i32 %27, 16000
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp ule i32 %30, 24000
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @SSM4567_DAC_FS_16000_24000, align 4
  store i32 %33, i32* %11, align 4
  br label %64

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %10, align 4
  %36 = icmp uge i32 %35, 32000
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp ule i32 %38, 48000
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @SSM4567_DAC_FS_32000_48000, align 4
  store i32 %41, i32* %11, align 4
  br label %63

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %10, align 4
  %44 = icmp uge i32 %43, 64000
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp ule i32 %46, 96000
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @SSM4567_DAC_FS_64000_96000, align 4
  store i32 %49, i32* %11, align 4
  br label %62

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %10, align 4
  %52 = icmp uge i32 %51, 128000
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp ule i32 %54, 192000
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @SSM4567_DAC_FS_128000_192000, align 4
  store i32 %57, i32* %11, align 4
  br label %61

58:                                               ; preds = %53, %50
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %73

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %24
  %66 = load %struct.ssm4567*, %struct.ssm4567** %9, align 8
  %67 = getelementptr inbounds %struct.ssm4567, %struct.ssm4567* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SSM4567_REG_DAC_CTRL, align 4
  %70 = load i32, i32* @SSM4567_DAC_FS_MASK, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %65, %58
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.ssm4567* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
