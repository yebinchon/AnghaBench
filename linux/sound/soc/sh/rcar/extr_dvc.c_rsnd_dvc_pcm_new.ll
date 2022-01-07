; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dvc.c_rsnd_dvc_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dvc.c_rsnd_dvc_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.rsnd_dvc = type { i32, i32, i32, i32, i32 }
%struct.rsnd_dai = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"DVC Out Playback Volume\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DVC In Capture Volume\00", align 1
@rsnd_kctrl_accept_anytime = common dso_local global i32 0, align 4
@rsnd_dvc_volume_update = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"DVC Out Mute Switch\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DVC In Mute Switch\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"DVC Out Ramp Switch\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"DVC In Ramp Switch\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"DVC Out Ramp Up Rate\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"DVC In Ramp Up Rate\00", align 1
@volume_ramp_rate = common dso_local global i32 0, align 4
@VOLUME_RAMP_MAX_DVC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"DVC Out Ramp Down Rate\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"DVC In Ramp Down Rate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_soc_pcm_runtime*)* @rsnd_dvc_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dvc_pcm_new(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.snd_soc_pcm_runtime* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.rsnd_dvc*, align 8
  %9 = alloca %struct.rsnd_dai*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.snd_soc_pcm_runtime* %2, %struct.snd_soc_pcm_runtime** %7, align 8
  %13 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %14 = call %struct.rsnd_dvc* @rsnd_mod_to_dvc(%struct.rsnd_mod* %13)
  store %struct.rsnd_dvc* %14, %struct.rsnd_dvc** %8, align 8
  %15 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %16 = call %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream* %15)
  store %struct.rsnd_dai* %16, %struct.rsnd_dai** %9, align 8
  %17 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %18 = call i32 @rsnd_io_is_play(%struct.rsnd_dai_stream* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.rsnd_dai*, %struct.rsnd_dai** %9, align 8
  %20 = call i32 @rsnd_rdai_channels_get(%struct.rsnd_dai* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %22 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)
  %28 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %29 = load i32, i32* @rsnd_dvc_volume_update, align 4
  %30 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %8, align 8
  %31 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %30, i32 0, i32 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @rsnd_kctrl_new_m(%struct.rsnd_mod* %21, %struct.rsnd_dai_stream* %22, %struct.snd_soc_pcm_runtime* %23, i8* %27, i32 %28, i32 %29, i32* %31, i32 %32, i32 8388607)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %112

38:                                               ; preds = %3
  %39 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %40 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %41 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)
  %46 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %47 = load i32, i32* @rsnd_dvc_volume_update, align 4
  %48 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %8, align 8
  %49 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %48, i32 0, i32 3
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @rsnd_kctrl_new_m(%struct.rsnd_mod* %39, %struct.rsnd_dai_stream* %40, %struct.snd_soc_pcm_runtime* %41, i8* %45, i32 %46, i32 %47, i32* %49, i32 %50, i32 1)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %112

56:                                               ; preds = %38
  %57 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %58 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %59 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)
  %64 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %65 = load i32, i32* @rsnd_dvc_volume_update, align 4
  %66 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %8, align 8
  %67 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %66, i32 0, i32 2
  %68 = call i32 @rsnd_kctrl_new_s(%struct.rsnd_mod* %57, %struct.rsnd_dai_stream* %58, %struct.snd_soc_pcm_runtime* %59, i8* %63, i32 %64, i32 %65, i32* %67, i32 1)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %112

73:                                               ; preds = %56
  %74 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %75 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %76 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)
  %81 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %82 = load i32, i32* @rsnd_dvc_volume_update, align 4
  %83 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %8, align 8
  %84 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %83, i32 0, i32 1
  %85 = load i32, i32* @volume_ramp_rate, align 4
  %86 = load i32, i32* @VOLUME_RAMP_MAX_DVC, align 4
  %87 = call i32 @rsnd_kctrl_new_e(%struct.rsnd_mod* %74, %struct.rsnd_dai_stream* %75, %struct.snd_soc_pcm_runtime* %76, i8* %80, i32 %81, i32 %82, i32* %84, i32 %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %73
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  br label %112

92:                                               ; preds = %73
  %93 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %94 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %95 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0)
  %100 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %101 = load i32, i32* @rsnd_dvc_volume_update, align 4
  %102 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %8, align 8
  %103 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %102, i32 0, i32 0
  %104 = load i32, i32* @volume_ramp_rate, align 4
  %105 = load i32, i32* @VOLUME_RAMP_MAX_DVC, align 4
  %106 = call i32 @rsnd_kctrl_new_e(%struct.rsnd_mod* %93, %struct.rsnd_dai_stream* %94, %struct.snd_soc_pcm_runtime* %95, i8* %99, i32 %100, i32 %101, i32* %103, i32 %104, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %92
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %4, align 4
  br label %112

111:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %109, %90, %71, %54, %36
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.rsnd_dvc* @rsnd_mod_to_dvc(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_rdai_channels_get(%struct.rsnd_dai*) #1

declare dso_local i32 @rsnd_kctrl_new_m(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_soc_pcm_runtime*, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rsnd_kctrl_new_s(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_soc_pcm_runtime*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @rsnd_kctrl_new_e(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_soc_pcm_runtime*, i8*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
