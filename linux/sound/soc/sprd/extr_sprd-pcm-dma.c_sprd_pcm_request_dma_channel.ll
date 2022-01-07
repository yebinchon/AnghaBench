; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_request_dma_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_request_dma_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { %struct.sprd_pcm_dma_private* }
%struct.sprd_pcm_dma_private = type { %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_params* }
%struct.sprd_pcm_dma_data = type { i32 }
%struct.sprd_pcm_dma_params = type { i32* }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SPRD_PCM_CHANNEL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid dma channel number:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to request dma channel:%s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @sprd_pcm_request_dma_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pcm_request_dma_channel(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.sprd_pcm_dma_private*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.sprd_pcm_dma_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sprd_pcm_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %6, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %18, align 8
  store %struct.sprd_pcm_dma_private* %19, %struct.sprd_pcm_dma_private** %7, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %21, align 8
  store %struct.snd_soc_pcm_runtime* %22, %struct.snd_soc_pcm_runtime** %8, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %24 = load i32, i32* @DRV_NAME, align 4
  %25 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %23, i32 %24)
  store %struct.snd_soc_component* %25, %struct.snd_soc_component** %9, align 8
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %27 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %10, align 8
  %29 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %7, align 8
  %30 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %29, i32 0, i32 1
  %31 = load %struct.sprd_pcm_dma_params*, %struct.sprd_pcm_dma_params** %30, align 8
  store %struct.sprd_pcm_dma_params* %31, %struct.sprd_pcm_dma_params** %11, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SPRD_PCM_CHANNEL_MAX, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %10, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %87

41:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %83, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %7, align 8
  %48 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %47, i32 0, i32 0
  %49 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %49, i64 %51
  store %struct.sprd_pcm_dma_data* %52, %struct.sprd_pcm_dma_data** %13, align 8
  %53 = load %struct.device*, %struct.device** %10, align 8
  %54 = load %struct.sprd_pcm_dma_params*, %struct.sprd_pcm_dma_params** %11, align 8
  %55 = getelementptr inbounds %struct.sprd_pcm_dma_params, %struct.sprd_pcm_dma_params* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dma_request_slave_channel(%struct.device* %53, i32 %60)
  %62 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %13, align 8
  %63 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %13, align 8
  %65 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %46
  %69 = load %struct.device*, %struct.device** %10, align 8
  %70 = load %struct.sprd_pcm_dma_params*, %struct.sprd_pcm_dma_params** %11, align 8
  %71 = getelementptr inbounds %struct.sprd_pcm_dma_params, %struct.sprd_pcm_dma_params* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %79 = call i32 @sprd_pcm_release_dma_channel(%struct.snd_pcm_substream* %78)
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %87

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %42

86:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %68, %35
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dma_request_slave_channel(%struct.device*, i32) #1

declare dso_local i32 @sprd_pcm_release_dma_channel(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
