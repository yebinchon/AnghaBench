; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_notify_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_notify_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw_stream = type { i32 }
%struct.hsw_pcm_data = type { i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { i8*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.hsw_priv_data = type { %struct.sst_hsw* }
%struct.sst_hsw = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PCM: App pointer %d bytes\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"PCM: position is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"PCM: dma_bytes is wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_hsw_stream*, i8*)* @hsw_notify_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_notify_pointer(%struct.sst_hsw_stream* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_hsw_stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hsw_pcm_data*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.hsw_priv_data*, align 8
  %12 = alloca %struct.sst_hsw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.sst_hsw_stream* %0, %struct.sst_hsw_stream** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.hsw_pcm_data*
  store %struct.hsw_pcm_data* %20, %struct.hsw_pcm_data** %6, align 8
  %21 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %6, align 8
  %22 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %21, i32 0, i32 1
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %22, align 8
  store %struct.snd_pcm_substream* %23, %struct.snd_pcm_substream** %7, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 2
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %25, align 8
  store %struct.snd_pcm_runtime* %26, %struct.snd_pcm_runtime** %8, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 1
  %29 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %28, align 8
  store %struct.snd_soc_pcm_runtime* %29, %struct.snd_soc_pcm_runtime** %9, align 8
  %30 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %31 = load i32, i32* @DRV_NAME, align 4
  %32 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %30, i32 %31)
  store %struct.snd_soc_component* %32, %struct.snd_soc_component** %10, align 8
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %34 = call %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %33)
  store %struct.hsw_priv_data* %34, %struct.hsw_priv_data** %11, align 8
  %35 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %11, align 8
  %36 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %35, i32 0, i32 0
  %37 = load %struct.sst_hsw*, %struct.sst_hsw** %36, align 8
  store %struct.sst_hsw* %37, %struct.sst_hsw** %12, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %39 = load %struct.sst_hsw*, %struct.sst_hsw** %12, align 8
  %40 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %6, align 8
  %41 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sst_hsw_get_dsp_position(%struct.sst_hsw* %39, i32 %42)
  %44 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %38, i32 %43)
  store i64 %44, i64* %14, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %15, align 8
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %48, i32 %51)
  store i64 %52, i64* %16, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = srem i32 %58, %61
  %63 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %53, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %65 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @dev_vdbg(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** %15, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %2
  %72 = load i64, i64* %16, align 8
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %71
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load %struct.sst_hsw*, %struct.sst_hsw** %12, align 8
  %82 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %4, align 8
  %83 = call i32 @sst_hsw_stream_get_silence_start(%struct.sst_hsw* %81, %struct.sst_hsw_stream* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80, %74, %71, %2
  %86 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %87 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %86)
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %3, align 4
  br label %173

89:                                               ; preds = %80
  %90 = load %struct.sst_hsw*, %struct.sst_hsw** %12, align 8
  %91 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %4, align 8
  %92 = call i64 @sst_hsw_stream_get_old_position(%struct.sst_hsw* %90, %struct.sst_hsw_stream* %91)
  store i64 %92, i64* %17, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %17, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %89
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %16, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %17, align 8
  %104 = sub nsw i64 %102, %103
  %105 = call i32 @SST_SAMPLES(%struct.snd_pcm_runtime* %101, i64 %104)
  store i32 %105, i32* %18, align 4
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %15, align 8
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %111 = load i64, i64* %17, align 8
  %112 = call i8* @SST_OLD_POSITION(i8* %109, %struct.snd_pcm_runtime* %110, i64 %111)
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @snd_pcm_format_set_silence(i32 %108, i8* %112, i32 %113)
  br label %120

115:                                              ; preds = %96
  %116 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %117 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %100
  br label %165

121:                                              ; preds = %89
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %16, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %17, align 8
  %129 = sub nsw i64 %127, %128
  %130 = call i32 @SST_SAMPLES(%struct.snd_pcm_runtime* %126, i64 %129)
  store i32 %130, i32* %18, align 4
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** %15, align 8
  %135 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %136 = load i64, i64* %17, align 8
  %137 = call i8* @SST_OLD_POSITION(i8* %134, %struct.snd_pcm_runtime* %135, i64 %136)
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @snd_pcm_format_set_silence(i32 %133, i8* %137, i32 %138)
  br label %145

140:                                              ; preds = %121
  %141 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %142 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %140, %125
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %16, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %151 = load i64, i64* %14, align 8
  %152 = call i32 @SST_SAMPLES(%struct.snd_pcm_runtime* %150, i64 %151)
  store i32 %152, i32* %18, align 4
  %153 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %154 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i8*, i8** %15, align 8
  %157 = load i32, i32* %18, align 4
  %158 = call i32 @snd_pcm_format_set_silence(i32 %155, i8* %156, i32 %157)
  br label %164

159:                                              ; preds = %145
  %160 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %161 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @dev_err(i32 %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %164

164:                                              ; preds = %159, %149
  br label %165

165:                                              ; preds = %164, %120
  %166 = load %struct.sst_hsw*, %struct.sst_hsw** %12, align 8
  %167 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %4, align 8
  %168 = load i64, i64* %14, align 8
  %169 = call i32 @sst_hsw_stream_set_old_position(%struct.sst_hsw* %166, %struct.sst_hsw_stream* %167, i64 %168)
  %170 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %171 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %170)
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %165, %85
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @sst_hsw_get_dsp_position(%struct.sst_hsw*, i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @sst_hsw_stream_get_silence_start(%struct.sst_hsw*, %struct.sst_hsw_stream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i64 @sst_hsw_stream_get_old_position(%struct.sst_hsw*, %struct.sst_hsw_stream*) #1

declare dso_local i32 @SST_SAMPLES(%struct.snd_pcm_runtime*, i64) #1

declare dso_local i32 @snd_pcm_format_set_silence(i32, i8*, i32) #1

declare dso_local i8* @SST_OLD_POSITION(i8*, %struct.snd_pcm_runtime*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sst_hsw_stream_set_old_position(%struct.sst_hsw*, %struct.sst_hsw_stream*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
