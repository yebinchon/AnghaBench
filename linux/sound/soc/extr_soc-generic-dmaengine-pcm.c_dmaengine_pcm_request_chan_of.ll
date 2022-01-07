; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_request_chan_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_request_chan_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmaengine_pcm = type { i32, %struct.dma_chan** }
%struct.dma_chan = type { i32 }
%struct.device = type { i64 }
%struct.snd_dmaengine_pcm_config = type { i8**, %struct.device* }

@SND_DMAENGINE_PCM_FLAG_NO_DT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"DMA channels sourced from device %s\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@dmaengine_pcm_dma_channel_names = common dso_local global i8** null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmaengine_pcm*, %struct.device*, %struct.snd_dmaengine_pcm_config*)* @dmaengine_pcm_request_chan_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmaengine_pcm_request_chan_of(%struct.dmaengine_pcm* %0, %struct.device* %1, %struct.snd_dmaengine_pcm_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmaengine_pcm*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dma_chan*, align 8
  store %struct.dmaengine_pcm* %0, %struct.dmaengine_pcm** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.snd_dmaengine_pcm_config* %2, %struct.snd_dmaengine_pcm_config** %7, align 8
  %11 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %12 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_NO_DT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %17
  %23 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %24 = icmp ne %struct.snd_dmaengine_pcm_config* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %27 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %26, i32 0, i32 1
  %28 = load %struct.device*, %struct.device** %27, align 8
  %29 = icmp ne %struct.device* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %32 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %31, i32 0, i32 1
  %33 = load %struct.device*, %struct.device** %32, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30, %25, %22, %3
  store i32 0, i32* %4, align 4
  br label %157

38:                                               ; preds = %30, %17
  %39 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %40 = icmp ne %struct.snd_dmaengine_pcm_config* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %43 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %42, i32 0, i32 1
  %44 = load %struct.device*, %struct.device** %43, align 8
  %45 = icmp ne %struct.device* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %49 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %48, i32 0, i32 1
  %50 = load %struct.device*, %struct.device** %49, align 8
  %51 = call i32 @dev_name(%struct.device* %50)
  %52 = call i32 @dev_warn(%struct.device* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %54 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %53, i32 0, i32 1
  %55 = load %struct.device*, %struct.device** %54, align 8
  store %struct.device* %55, %struct.device** %6, align 8
  br label %56

56:                                               ; preds = %46, %41, %38
  %57 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %136, %56
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %139

62:                                               ; preds = %58
  %63 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %64 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %76

70:                                               ; preds = %62
  %71 = load i8**, i8*** @dmaengine_pcm_dma_channel_names, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %9, align 8
  br label %76

76:                                               ; preds = %70, %69
  %77 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %78 = icmp ne %struct.snd_dmaengine_pcm_config* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %81 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %7, align 8
  %90 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %9, align 8
  br label %96

96:                                               ; preds = %88, %79, %76
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call %struct.dma_chan* @dma_request_slave_channel_reason(%struct.device* %97, i8* %98)
  store %struct.dma_chan* %99, %struct.dma_chan** %10, align 8
  %100 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %101 = call i64 @IS_ERR(%struct.dma_chan* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %96
  %104 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %105 = call i32 @PTR_ERR(%struct.dma_chan* %104)
  %106 = load i32, i32* @EPROBE_DEFER, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @EPROBE_DEFER, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %157

112:                                              ; preds = %103
  %113 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %114 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %113, i32 0, i32 1
  %115 = load %struct.dma_chan**, %struct.dma_chan*** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %115, i64 %117
  store %struct.dma_chan* null, %struct.dma_chan** %118, align 8
  br label %127

119:                                              ; preds = %96
  %120 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %121 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %122 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %121, i32 0, i32 1
  %123 = load %struct.dma_chan**, %struct.dma_chan*** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %123, i64 %125
  store %struct.dma_chan* %120, %struct.dma_chan** %126, align 8
  br label %127

127:                                              ; preds = %119, %112
  %128 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %129 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %139

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %58

139:                                              ; preds = %134, %58
  %140 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %141 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %148 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %147, i32 0, i32 1
  %149 = load %struct.dma_chan**, %struct.dma_chan*** %148, align 8
  %150 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %149, i64 0
  %151 = load %struct.dma_chan*, %struct.dma_chan** %150, align 8
  %152 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %153 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %152, i32 0, i32 1
  %154 = load %struct.dma_chan**, %struct.dma_chan*** %153, align 8
  %155 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %154, i64 1
  store %struct.dma_chan* %151, %struct.dma_chan** %155, align 8
  br label %156

156:                                              ; preds = %146, %139
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %109, %37
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.dma_chan* @dma_request_slave_channel_reason(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
