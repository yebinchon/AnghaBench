; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.rsnd_src = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"SRC Out Rate Switch\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SRC In Rate Switch\00", align 1
@rsnd_kctrl_accept_anytime = common dso_local global i32 0, align 4
@rsnd_src_set_convert_rate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"SRC Out Rate\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"SRC In Rate\00", align 1
@rsnd_kctrl_accept_runtime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_soc_pcm_runtime*)* @rsnd_src_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_src_pcm_new(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.snd_soc_pcm_runtime* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.rsnd_src*, align 8
  %9 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.snd_soc_pcm_runtime* %2, %struct.snd_soc_pcm_runtime** %7, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %11 = call %struct.rsnd_src* @rsnd_mod_to_src(%struct.rsnd_mod* %10)
  store %struct.rsnd_src* %11, %struct.rsnd_src** %8, align 8
  %12 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %13 = call i64 @rsnd_io_to_mod_cmd(%struct.rsnd_dai_stream* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %17 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %53

20:                                               ; preds = %15, %3
  %21 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %22 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %24 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %25 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)
  %29 = load i32, i32* @rsnd_kctrl_accept_anytime, align 4
  %30 = load i32, i32* @rsnd_src_set_convert_rate, align 4
  %31 = load %struct.rsnd_src*, %struct.rsnd_src** %8, align 8
  %32 = getelementptr inbounds %struct.rsnd_src, %struct.rsnd_src* %31, i32 0, i32 1
  %33 = call i32 @rsnd_kctrl_new_s(%struct.rsnd_mod* %21, %struct.rsnd_dai_stream* %22, %struct.snd_soc_pcm_runtime* %23, i8* %28, i32 %29, i32 %30, i32* %32, i32 1)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %20
  %39 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %40 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %41 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %42 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %43 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %47 = load i32, i32* @rsnd_kctrl_accept_runtime, align 4
  %48 = load i32, i32* @rsnd_src_set_convert_rate, align 4
  %49 = load %struct.rsnd_src*, %struct.rsnd_src** %8, align 8
  %50 = getelementptr inbounds %struct.rsnd_src, %struct.rsnd_src* %49, i32 0, i32 0
  %51 = call i32 @rsnd_kctrl_new_s(%struct.rsnd_mod* %39, %struct.rsnd_dai_stream* %40, %struct.snd_soc_pcm_runtime* %41, i8* %46, i32 %47, i32 %48, i32* %50, i32 192000)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %38, %36, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.rsnd_src* @rsnd_mod_to_src(%struct.rsnd_mod*) #1

declare dso_local i64 @rsnd_io_to_mod_cmd(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_kctrl_new_s(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.snd_soc_pcm_runtime*, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
