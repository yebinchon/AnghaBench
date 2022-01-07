; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_byt_notify_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_byt_notify_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt_stream = type { i32 }
%struct.sst_byt_pcm_data = type { i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_byt_priv_data = type { %struct.sst_byt* }
%struct.sst_byt = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PCM: App/DMA pointer %u/%u bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_byt_stream*, i8*)* @byt_notify_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_notify_pointer(%struct.sst_byt_stream* %0, i8* %1) #0 {
  %3 = alloca %struct.sst_byt_stream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sst_byt_pcm_data*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.sst_byt_priv_data*, align 8
  %11 = alloca %struct.sst_byt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sst_byt_stream* %0, %struct.sst_byt_stream** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.sst_byt_pcm_data*
  store %struct.sst_byt_pcm_data* %15, %struct.sst_byt_pcm_data** %5, align 8
  %16 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %5, align 8
  %17 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %16, i32 0, i32 2
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %17, align 8
  store %struct.snd_pcm_substream* %18, %struct.snd_pcm_substream** %6, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 1
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %7, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %23, align 8
  store %struct.snd_soc_pcm_runtime* %24, %struct.snd_soc_pcm_runtime** %8, align 8
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %26 = load i32, i32* @DRV_NAME, align 4
  %27 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %25, i32 %26)
  store %struct.snd_soc_component* %27, %struct.snd_soc_component** %9, align 8
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %29 = call %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %28)
  store %struct.sst_byt_priv_data* %29, %struct.sst_byt_priv_data** %10, align 8
  %30 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %10, align 8
  %31 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %30, i32 0, i32 0
  %32 = load %struct.sst_byt*, %struct.sst_byt** %31, align 8
  store %struct.sst_byt* %32, %struct.sst_byt** %11, align 8
  %33 = load %struct.sst_byt*, %struct.sst_byt** %11, align 8
  %34 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %5, align 8
  %35 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %38 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %37)
  %39 = call i32 @sst_byt_get_dsp_position(%struct.sst_byt* %33, i32 %36, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %5, align 8
  %42 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = srem i32 %48, %51
  %53 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %43, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %55 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %61 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %60)
  %62 = load i32, i32* %12, align 4
  ret i32 %62
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sst_byt_get_dsp_position(%struct.sst_byt*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
