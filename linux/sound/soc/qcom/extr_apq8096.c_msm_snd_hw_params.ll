; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_apq8096.c_msm_snd_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_apq8096.c_msm_snd_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SLIM_MAX_RX_PORTS = common dso_local global i32 0, align 4
@SLIM_MAX_TX_PORTS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to get codec chan map, err:%d\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to set cpu chan map, err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @msm_snd_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_snd_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %17, align 8
  store %struct.snd_soc_pcm_runtime* %18, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 1
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %20, align 8
  store %struct.snd_soc_dai* %21, %struct.snd_soc_dai** %7, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %23, align 8
  store %struct.snd_soc_dai* %24, %struct.snd_soc_dai** %8, align 8
  %25 = load i32, i32* @SLIM_MAX_RX_PORTS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load i32, i32* @SLIM_MAX_TX_PORTS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i64, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %33 = call i32 @snd_soc_dai_get_channel_map(%struct.snd_soc_dai* %32, i64* %13, i64* %31, i64* %12, i64* %28)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @ENOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %84

44:                                               ; preds = %36, %2
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @ENOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %86

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @snd_soc_dai_set_channel_map(%struct.snd_soc_dai* %58, i64 0, i64* null, i64 %59, i64* %28)
  store i32 %60, i32* %14, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @snd_soc_dai_set_channel_map(%struct.snd_soc_dai* %62, i64 %63, i64* %31, i64 0, i64* null)
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @ENOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %83

76:                                               ; preds = %68, %65
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @ENOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %81, %76
  br label %83

83:                                               ; preds = %82, %73
  br label %84

84:                                               ; preds = %83, %41
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %86

86:                                               ; preds = %84, %49
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snd_soc_dai_get_channel_map(%struct.snd_soc_dai*, i64*, i64*, i64*, i64*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @snd_soc_dai_set_channel_map(%struct.snd_soc_dai*, i64, i64*, i64, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
