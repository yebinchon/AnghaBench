; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_restore_stream_context.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_restore_stream_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_byt_priv_data = type { %struct.sst_byt*, %struct.sst_byt_pcm_data* }
%struct.sst_byt = type { i32 }
%struct.sst_byt_pcm_data = type { i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PCM: failed stream commit %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"stream context restored at offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sst_byt_pcm_restore_stream_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_pcm_restore_stream_context(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.sst_byt_priv_data*, align 8
  %7 = alloca %struct.sst_byt_pcm_data*, align 8
  %8 = alloca %struct.sst_byt*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %13, i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %5, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %17 = call %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.sst_byt_priv_data* %17, %struct.sst_byt_priv_data** %6, align 8
  %18 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %6, align 8
  %19 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %18, i32 0, i32 1
  %20 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %19, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %20, i64 %23
  store %struct.sst_byt_pcm_data* %24, %struct.sst_byt_pcm_data** %7, align 8
  %25 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %6, align 8
  %26 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %25, i32 0, i32 0
  %27 = load %struct.sst_byt*, %struct.sst_byt** %26, align 8
  store %struct.sst_byt* %27, %struct.sst_byt** %8, align 8
  %28 = load %struct.sst_byt*, %struct.sst_byt** %8, align 8
  %29 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %7, align 8
  %30 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sst_byt_stream_commit(%struct.sst_byt* %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %1
  %43 = load %struct.sst_byt*, %struct.sst_byt** %8, align 8
  %44 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %7, align 8
  %45 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %7, align 8
  %48 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sst_byt_stream_start(%struct.sst_byt* %43, i32 %46, i32 %49)
  %51 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %52 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %7, align 8
  %55 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %42, %35
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sst_byt_stream_commit(%struct.sst_byt*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sst_byt_stream_start(%struct.sst_byt*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
