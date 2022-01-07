; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_byt_priv_data = type { %struct.sst_byt*, %struct.sst_byt_pcm_data* }
%struct.sst_byt = type { i32 }
%struct.sst_byt_pcm_data = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PCM: hw_params, pcm_data %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set stream format %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"could not set rate %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"could not set formats %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"could not set channels %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"PCM: failed to set DMA buffer %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"PCM: failed stream commit %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @sst_byt_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.sst_byt_priv_data*, align 8
  %9 = alloca %struct.sst_byt_pcm_data*, align 8
  %10 = alloca %struct.sst_byt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 2
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %17, align 8
  store %struct.snd_soc_pcm_runtime* %18, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %20 = load i32, i32* @DRV_NAME, align 4
  %21 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %19, i32 %20)
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %7, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %23 = call %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.sst_byt_priv_data* %23, %struct.sst_byt_priv_data** %8, align 8
  %24 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %8, align 8
  %25 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %24, i32 0, i32 1
  %26 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %25, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %26, i64 %29
  store %struct.sst_byt_pcm_data* %30, %struct.sst_byt_pcm_data** %9, align 8
  %31 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %8, align 8
  %32 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %31, i32 0, i32 0
  %33 = load %struct.sst_byt*, %struct.sst_byt** %32, align 8
  store %struct.sst_byt* %33, %struct.sst_byt** %10, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %9, align 8
  %44 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.sst_byt_pcm_data* %43)
  %45 = load %struct.sst_byt*, %struct.sst_byt** %10, align 8
  %46 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %9, align 8
  %47 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @sst_byt_stream_type(%struct.sst_byt* %45, i32 %48, i32 1, i32 1, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %2
  %57 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %58 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %3, align 4
  br label %163

63:                                               ; preds = %2
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %65 = call i32 @params_rate(%struct.snd_pcm_hw_params* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.sst_byt*, %struct.sst_byt** %10, align 8
  %67 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %9, align 8
  %68 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @sst_byt_stream_set_rate(%struct.sst_byt* %66, i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %76 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %3, align 4
  br label %163

81:                                               ; preds = %63
  %82 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %83 = call i32 @params_format(%struct.snd_pcm_hw_params* %82)
  %84 = call i32 @snd_pcm_format_width(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load %struct.sst_byt*, %struct.sst_byt** %10, align 8
  %86 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %9, align 8
  %87 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @sst_byt_stream_set_bits(%struct.sst_byt* %85, i32 %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %81
  %94 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %95 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %98 = call i32 @params_rate(%struct.snd_pcm_hw_params* %97)
  %99 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %3, align 4
  br label %163

101:                                              ; preds = %81
  %102 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %103 = call i32 @params_channels(%struct.snd_pcm_hw_params* %102)
  %104 = and i32 %103, 15
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %13, align 8
  %106 = load %struct.sst_byt*, %struct.sst_byt** %10, align 8
  %107 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %9, align 8
  %108 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @sst_byt_stream_set_channels(%struct.sst_byt* %106, i32 %109, i64 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %101
  %115 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %116 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %119 = call i32 @params_rate(%struct.snd_pcm_hw_params* %118)
  %120 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %3, align 4
  br label %163

122:                                              ; preds = %101
  %123 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %124 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %125 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %124)
  %126 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %123, i32 %125)
  %127 = load %struct.sst_byt*, %struct.sst_byt** %10, align 8
  %128 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %9, align 8
  %129 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %136 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %135)
  %137 = call i32 @sst_byt_stream_buffer(%struct.sst_byt* %127, i32 %130, i32 %134, i32 %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %122
  %141 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %142 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %3, align 4
  br label %163

147:                                              ; preds = %122
  %148 = load %struct.sst_byt*, %struct.sst_byt** %10, align 8
  %149 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %9, align 8
  %150 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @sst_byt_stream_commit(%struct.sst_byt* %148, i32 %151)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %147
  %156 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %157 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @dev_err(i32 %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %3, align 4
  br label %163

162:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %155, %140, %114, %93, %74, %56
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.sst_byt_pcm_data*) #1

declare dso_local i32 @sst_byt_stream_type(%struct.sst_byt*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sst_byt_stream_set_rate(%struct.sst_byt*, i32, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sst_byt_stream_set_bits(%struct.sst_byt*, i32, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sst_byt_stream_set_channels(%struct.sst_byt*, i32, i64) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sst_byt_stream_buffer(%struct.sst_byt*, i32, i32, i32) #1

declare dso_local i32 @sst_byt_stream_commit(%struct.sst_byt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
