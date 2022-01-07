; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7241.c_es7241_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7241.c_es7241_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.es7241_data = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.es7241_clock_mode* }
%struct.es7241_clock_mode = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"unsupported rate: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @es7241_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es7241_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.es7241_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.es7241_clock_mode*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.es7241_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.es7241_data* %14, %struct.es7241_data** %8, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_rate(%struct.snd_pcm_hw_params* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.es7241_data*, %struct.es7241_data** %8, align 8
  %18 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %66, %3
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.es7241_data*, %struct.es7241_data** %8, align 8
  %25 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %22
  %31 = load %struct.es7241_data*, %struct.es7241_data** %8, align 8
  %32 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.es7241_clock_mode*, %struct.es7241_clock_mode** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.es7241_clock_mode, %struct.es7241_clock_mode* %35, i64 %37
  store %struct.es7241_clock_mode* %38, %struct.es7241_clock_mode** %12, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.es7241_clock_mode*, %struct.es7241_clock_mode** %12, align 8
  %41 = getelementptr inbounds %struct.es7241_clock_mode, %struct.es7241_clock_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.es7241_clock_mode*, %struct.es7241_clock_mode** %12, align 8
  %47 = getelementptr inbounds %struct.es7241_clock_mode, %struct.es7241_clock_mode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp uge i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %30
  br label %66

51:                                               ; preds = %44
  %52 = load %struct.es7241_data*, %struct.es7241_data** %8, align 8
  %53 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.es7241_data*, %struct.es7241_data** %8, align 8
  %58 = load %struct.es7241_clock_mode*, %struct.es7241_clock_mode** %12, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @es7241_set_slave_mode(%struct.es7241_data* %57, %struct.es7241_clock_mode* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %77

61:                                               ; preds = %51
  %62 = load %struct.es7241_data*, %struct.es7241_data** %8, align 8
  %63 = load %struct.es7241_clock_mode*, %struct.es7241_clock_mode** %12, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @es7241_set_master_mode(%struct.es7241_data* %62, %struct.es7241_clock_mode* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %77

66:                                               ; preds = %50
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %22

69:                                               ; preds = %22
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %61, %56
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.es7241_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @es7241_set_slave_mode(%struct.es7241_data*, %struct.es7241_clock_mode*, i32) #1

declare dso_local i32 @es7241_set_master_mode(%struct.es7241_data*, %struct.es7241_clock_mode*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
