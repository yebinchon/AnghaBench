; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.hsw_priv_data = type { %struct.hsw_pcm_data**, %struct.sst_hsw* }
%struct.hsw_pcm_data = type { i32 }
%struct.sst_hsw = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@mod_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"PCM: DMA pointer %du bytes, pos %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @hsw_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.hsw_priv_data*, align 8
  %7 = alloca %struct.hsw_pcm_data*, align 8
  %8 = alloca %struct.sst_hsw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 2
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %3, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 1
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %4, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %20 = load i32, i32* @DRV_NAME, align 4
  %21 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %19, i32 %20)
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %5, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %23 = call %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.hsw_priv_data* %23, %struct.hsw_priv_data** %6, align 8
  %24 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %25 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %24, i32 0, i32 1
  %26 = load %struct.sst_hsw*, %struct.sst_hsw** %25, align 8
  store %struct.sst_hsw* %26, %struct.sst_hsw** %8, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mod_map, align 8
  %28 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %37 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %36, i32 0, i32 0
  %38 = load %struct.hsw_pcm_data**, %struct.hsw_pcm_data*** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %38, i64 %40
  %42 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %41, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %42, i64 %45
  store %struct.hsw_pcm_data* %46, %struct.hsw_pcm_data** %7, align 8
  %47 = load %struct.sst_hsw*, %struct.sst_hsw** %8, align 8
  %48 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %7, align 8
  %49 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sst_hsw_get_dsp_position(%struct.sst_hsw* %47, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.sst_hsw*, %struct.sst_hsw** %8, align 8
  %56 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %7, align 8
  %57 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sst_hsw_get_dsp_presentation_position(%struct.sst_hsw* %55, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %61 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dev_vdbg(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sst_hsw_get_dsp_position(%struct.sst_hsw*, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @sst_hsw_get_dsp_presentation_position(%struct.sst_hsw*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
