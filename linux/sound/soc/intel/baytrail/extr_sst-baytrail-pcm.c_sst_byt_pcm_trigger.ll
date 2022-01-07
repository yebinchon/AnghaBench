; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_byt_priv_data = type { i32, %struct.sst_byt*, %struct.sst_byt_pcm_data* }
%struct.sst_byt = type { i32 }
%struct.sst_byt_pcm_data = type { i32, i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PCM: trigger %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @sst_byt_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.sst_byt_priv_data*, align 8
  %8 = alloca %struct.sst_byt_pcm_data*, align 8
  %9 = alloca %struct.sst_byt*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %5, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %13, i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = call %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.sst_byt_priv_data* %17, %struct.sst_byt_priv_data** %7, align 8
  %18 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %7, align 8
  %19 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %18, i32 0, i32 2
  %20 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %19, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %20, i64 %23
  store %struct.sst_byt_pcm_data* %24, %struct.sst_byt_pcm_data** %8, align 8
  %25 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %7, align 8
  %26 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %25, i32 0, i32 1
  %27 = load %struct.sst_byt*, %struct.sst_byt** %26, align 8
  store %struct.sst_byt* %27, %struct.sst_byt** %9, align 8
  %28 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %79 [
    i32 130, label %34
    i32 131, label %42
    i32 132, label %58
    i32 129, label %64
    i32 128, label %70
    i32 133, label %73
  ]

34:                                               ; preds = %2
  %35 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %8, align 8
  %36 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %35, i32 0, i32 2
  store i32 0, i32* %36, align 4
  %37 = load %struct.sst_byt*, %struct.sst_byt** %9, align 8
  %38 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %8, align 8
  %39 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sst_byt_stream_start(%struct.sst_byt* %37, i32 %40, i32 0)
  br label %80

42:                                               ; preds = %2
  %43 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %7, align 8
  %44 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %8, align 8
  %49 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %48, i32 0, i32 1
  %50 = call i32 @schedule_work(i32* %49)
  br label %57

51:                                               ; preds = %42
  %52 = load %struct.sst_byt*, %struct.sst_byt** %9, align 8
  %53 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %8, align 8
  %54 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sst_byt_stream_resume(%struct.sst_byt* %52, i32 %55)
  br label %57

57:                                               ; preds = %51, %47
  br label %80

58:                                               ; preds = %2
  %59 = load %struct.sst_byt*, %struct.sst_byt** %9, align 8
  %60 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %8, align 8
  %61 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sst_byt_stream_resume(%struct.sst_byt* %59, i32 %62)
  br label %80

64:                                               ; preds = %2
  %65 = load %struct.sst_byt*, %struct.sst_byt** %9, align 8
  %66 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %8, align 8
  %67 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sst_byt_stream_stop(%struct.sst_byt* %65, i32 %68)
  br label %80

70:                                               ; preds = %2
  %71 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %7, align 8
  %72 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %2, %70
  %74 = load %struct.sst_byt*, %struct.sst_byt** %9, align 8
  %75 = load %struct.sst_byt_pcm_data*, %struct.sst_byt_pcm_data** %8, align 8
  %76 = getelementptr inbounds %struct.sst_byt_pcm_data, %struct.sst_byt_pcm_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sst_byt_stream_pause(%struct.sst_byt* %74, i32 %77)
  br label %80

79:                                               ; preds = %2
  br label %80

80:                                               ; preds = %79, %73, %64, %58, %57, %34
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.sst_byt_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @sst_byt_stream_start(%struct.sst_byt*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @sst_byt_stream_resume(%struct.sst_byt*, i32) #1

declare dso_local i32 @sst_byt_stream_stop(%struct.sst_byt*, i32) #1

declare dso_local i32 @sst_byt_stream_pause(%struct.sst_byt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
