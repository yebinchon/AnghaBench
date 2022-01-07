; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_byt_priv_data = type { %struct.sst_byt*, %struct.sst_byt_pcm_data* }
%struct.sst_byt = type { i32 }
%struct.sst_byt_pcm_data = type { i32, i32*, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PCM: close\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Free stream fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sst_byt_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.sst_byt_priv_data*, align 8
  %6 = alloca %struct.sst_byt_pcm_data*, align 8
  %7 = alloca %struct.sst_byt*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = load i32, i32* @DRV_NAME, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %12, i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %4, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %16 = call %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.sst_byt_priv_data* %16, %struct.sst_byt_priv_data** %5, align 8
  %17 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %5, align 8
  %18 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %17, i32 0, i32 1
  %19 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %18, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %19, i64 %22
  store %struct.sst_byt_pcm_data* %23, %struct.sst_byt_pcm_data** %6, align 8
  %24 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %5, align 8
  %25 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %24, i32 0, i32 0
  %26 = load %struct.sst_byt*, %struct.sst_byt** %25, align 8
  store %struct.sst_byt* %26, %struct.sst_byt** %7, align 8
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %28 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %6, align 8
  %32 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %31, i32 0, i32 2
  %33 = call i32 @cancel_work_sync(i32* %32)
  %34 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %6, align 8
  %35 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.sst_byt*, %struct.sst_byt** %7, align 8
  %38 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %6, align 8
  %39 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sst_byt_stream_free(%struct.sst_byt* %37, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %46 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %52

49:                                               ; preds = %1
  %50 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %6, align 8
  %51 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %6, align 8
  %54 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst_byt_stream_free(%struct.sst_byt*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
