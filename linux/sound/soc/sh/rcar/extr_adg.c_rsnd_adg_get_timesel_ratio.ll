; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_get_timesel_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_get_timesel_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.snd_pcm_runtime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_priv*, %struct.rsnd_dai_stream*, i32, i32, i64*, i64*, i64*)* @rsnd_adg_get_timesel_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_adg_get_timesel_ratio(%struct.rsnd_priv* %0, %struct.rsnd_dai_stream* %1, i32 %2, i32 %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.rsnd_priv*, align 8
  %9 = alloca %struct.rsnd_dai_stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.snd_pcm_runtime*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %8, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %21 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %22 = call %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream* %21)
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %15, align 8
  %23 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %24 = call i64 @rsnd_adg_ssi_ws_timing_gen2(%struct.rsnd_dai_stream* %23)
  store i64 %24, i64* %19, align 8
  store i64 %24, i64* %18, align 8
  store i32 0, i32* %16, align 4
  store i64* null, i64** %17, align 8
  store i64 0, i64* %20, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %16, align 4
  store i64* %19, i64** %17, align 8
  br label %41

32:                                               ; preds = %7
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %16, align 4
  store i64* %18, i64** %17, align 8
  br label %40

40:                                               ; preds = %38, %32
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.rsnd_priv*, %struct.rsnd_priv** %8, align 8
  %46 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i64*, i64** %17, align 8
  %49 = call i32 @__rsnd_adg_get_timesel_ratio(%struct.rsnd_priv* %45, %struct.rsnd_dai_stream* %46, i32 %47, i64* %48, i64* %20)
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i64*, i64** %12, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %18, align 8
  %55 = load i64*, i64** %12, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i64*, i64** %13, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %19, align 8
  %61 = load i64*, i64** %13, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64*, i64** %14, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %20, align 8
  %67 = load i64*, i64** %14, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  ret void
}

declare dso_local %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_adg_ssi_ws_timing_gen2(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @__rsnd_adg_get_timesel_ratio(%struct.rsnd_priv*, %struct.rsnd_dai_stream*, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
