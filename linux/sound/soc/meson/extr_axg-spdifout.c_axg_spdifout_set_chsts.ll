; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifout.c_axg_spdifout_set_chsts.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifout.c_axg_spdifout_set_chsts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_spdifout = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Creating IEC958 channel status failed %d\0A\00", align 1
@SPDIFOUT_CHSTS0 = common dso_local global i32 0, align 4
@SPDIFOUT_CHSTS1 = common dso_local global i32 0, align 4
@SPDIFOUT_CHSTS5 = common dso_local global i32 0, align 4
@SPDIFOUT_CHSTS6 = common dso_local global i32 0, align 4
@SPDIFOUT_CHSTS7 = common dso_local global i32 0, align 4
@SPDIFOUT_CHSTSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @axg_spdifout_set_chsts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_spdifout_set_chsts(%struct.snd_pcm_hw_params* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.axg_spdifout*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = call %struct.axg_spdifout* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.axg_spdifout* %12, %struct.axg_spdifout** %6, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %15 = call i32 @snd_pcm_create_iec958_consumer_hw_params(%struct.snd_pcm_hw_params* %13, i32* %14, i32 4)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 16
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 24
  %39 = or i32 %35, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %41 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SPDIFOUT_CHSTS0, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @regmap_write(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @SPDIFOUT_CHSTS1, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %57, %25
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SPDIFOUT_CHSTS5, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %53 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @regmap_write(i32 %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %51
  %58 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %59 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @regmap_get_reg_stride(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %68 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SPDIFOUT_CHSTS6, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @regmap_write(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @SPDIFOUT_CHSTS7, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %84, %66
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @SPDIFOUT_CHSTSB, align 4
  %77 = icmp ule i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %80 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @regmap_write(i32 %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %78
  %85 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %86 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @regmap_get_reg_stride(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  br label %74

93:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %18
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.axg_spdifout* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_pcm_create_iec958_consumer_hw_params(%struct.snd_pcm_hw_params*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @regmap_get_reg_stride(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
