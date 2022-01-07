; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-i2s.c_zx_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-i2s.c_zx_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.zx_i2s_info = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @zx_i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.zx_i2s_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.zx_i2s_info* @dev_get_drvdata(i32 %12)
  store %struct.zx_i2s_info* %13, %struct.zx_i2s_info** %7, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %77 [
    i32 130, label %21
    i32 131, label %35
    i32 132, label %35
    i32 129, label %49
    i32 128, label %63
    i32 133, label %63
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %7, align 8
  %26 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @zx_i2s_rx_dma_en(i32 %27, i32 1)
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %7, align 8
  %31 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @zx_i2s_tx_dma_en(i32 %32, i32 1)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %3, %3, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %7, align 8
  %40 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @zx_i2s_rx_en(i32 %41, i32 1)
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %7, align 8
  %45 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @zx_i2s_tx_en(i32 %46, i32 1)
  br label %48

48:                                               ; preds = %43, %38
  br label %80

49:                                               ; preds = %3
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %7, align 8
  %54 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @zx_i2s_rx_dma_en(i32 %55, i32 0)
  br label %62

57:                                               ; preds = %49
  %58 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %7, align 8
  %59 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @zx_i2s_tx_dma_en(i32 %60, i32 0)
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %3, %3, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %7, align 8
  %68 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @zx_i2s_rx_en(i32 %69, i32 0)
  br label %76

71:                                               ; preds = %63
  %72 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %7, align 8
  %73 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @zx_i2s_tx_en(i32 %74, i32 0)
  br label %76

76:                                               ; preds = %71, %66
  br label %80

77:                                               ; preds = %3
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %76, %48
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local %struct.zx_i2s_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @zx_i2s_rx_dma_en(i32, i32) #1

declare dso_local i32 @zx_i2s_tx_dma_en(i32, i32) #1

declare dso_local i32 @zx_i2s_rx_en(i32, i32) #1

declare dso_local i32 @zx_i2s_tx_en(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
