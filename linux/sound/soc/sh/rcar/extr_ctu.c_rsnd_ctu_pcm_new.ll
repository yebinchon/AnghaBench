; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ctu.c_rsnd_ctu_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ctu.c_rsnd_ctu_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.rsnd_ctu = type { i32, i32*, i32 }

@KCTRL_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"CTU Pass\00", align 1
@rsnd_kctrl_accept_anytime = common dso_local global i32 0, align 4
@RSND_MAX_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"CTU SV0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"CTU SV1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CTU SV2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CTU SV3\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CTU Reset\00", align 1
@rsnd_ctu_value_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_soc_pcm_runtime*)* @rsnd_ctu_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ctu_pcm_new(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.snd_soc_pcm_runtime* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.rsnd_ctu*, align 8
  %9 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.snd_soc_pcm_runtime* %2, %struct.snd_soc_pcm_runtime** %7, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %11 = call %struct.rsnd_ctu* @rsnd_mod_to_ctu(%struct.rsnd_mod* %10)
  store %struct.rsnd_ctu* %11, %struct.rsnd_ctu** %8, align 8
  %12 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %8, align 8
  %13 = load i32, i32* @KCTRL_INITIALIZED, align 4
  %14 = call i64 @rsnd_flags_has(%struct.rsnd_ctu* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %98

17:                                               ; preds = %3
  %18 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %21 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %22 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %8, align 8
  %23 = getelementptr inbounds %struct.rsnd_ctu, %struct.rsnd_ctu* %22, i32 0, i32 2
  %24 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %25 = call i32 @rsnd_kctrl_new_m(%struct.rsnd_mod* %18, %struct.rsnd_dai_stream* %19, %struct.snd_soc_pcm_runtime* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21, i32* null, i32* %23, i32 %24, i32 12)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %27 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %28 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %29 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %30 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %8, align 8
  %31 = getelementptr inbounds %struct.rsnd_ctu, %struct.rsnd_ctu* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %35 = call i32 @rsnd_kctrl_new_m(%struct.rsnd_mod* %26, %struct.rsnd_dai_stream* %27, %struct.snd_soc_pcm_runtime* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32* null, i32* %33, i32 %34, i32 16777215)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %98

40:                                               ; preds = %17
  %41 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %42 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %43 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %44 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %45 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %8, align 8
  %46 = getelementptr inbounds %struct.rsnd_ctu, %struct.rsnd_ctu* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %50 = call i32 @rsnd_kctrl_new_m(%struct.rsnd_mod* %41, %struct.rsnd_dai_stream* %42, %struct.snd_soc_pcm_runtime* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32* null, i32* %48, i32 %49, i32 16777215)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %98

55:                                               ; preds = %40
  %56 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %57 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %58 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %59 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %60 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %8, align 8
  %61 = getelementptr inbounds %struct.rsnd_ctu, %struct.rsnd_ctu* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %65 = call i32 @rsnd_kctrl_new_m(%struct.rsnd_mod* %56, %struct.rsnd_dai_stream* %57, %struct.snd_soc_pcm_runtime* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32* null, i32* %63, i32 %64, i32 16777215)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %98

70:                                               ; preds = %55
  %71 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %72 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %73 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %74 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %75 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %8, align 8
  %76 = getelementptr inbounds %struct.rsnd_ctu, %struct.rsnd_ctu* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %80 = call i32 @rsnd_kctrl_new_m(%struct.rsnd_mod* %71, %struct.rsnd_dai_stream* %72, %struct.snd_soc_pcm_runtime* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32* null, i32* %78, i32 %79, i32 16777215)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %98

85:                                               ; preds = %70
  %86 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %87 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %88 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %89 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %90 = load i32, i32* @rsnd_ctu_value_reset, align 4
  %91 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %8, align 8
  %92 = getelementptr inbounds %struct.rsnd_ctu, %struct.rsnd_ctu* %91, i32 0, i32 0
  %93 = call i32 @rsnd_kctrl_new_s(%struct.rsnd_mod* %86, %struct.rsnd_dai_stream* %87, %struct.snd_soc_pcm_runtime* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %90, i32* %92, i32 1)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %8, align 8
  %95 = load i32, i32* @KCTRL_INITIALIZED, align 4
  %96 = call i32 @rsnd_flags_set(%struct.rsnd_ctu* %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %85, %83, %68, %53, %38, %16
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.rsnd_ctu* @rsnd_mod_to_ctu(%struct.rsnd_mod*) #1

declare dso_local i64 @rsnd_flags_has(%struct.rsnd_ctu*, i32) #1

declare dso_local i32 @rsnd_kctrl_new_m(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_soc_pcm_runtime*, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @rsnd_kctrl_new_s(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_soc_pcm_runtime*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @rsnd_flags_set(%struct.rsnd_ctu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
