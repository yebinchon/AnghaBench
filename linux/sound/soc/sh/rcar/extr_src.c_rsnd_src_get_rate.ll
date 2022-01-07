; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.snd_pcm_runtime = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_src_get_rate(%struct.rsnd_priv* %0, %struct.rsnd_dai_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsnd_mod*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %13 = call %struct.rsnd_mod* @rsnd_io_to_mod_src(%struct.rsnd_dai_stream* %12)
  store %struct.rsnd_mod* %13, %struct.rsnd_mod** %8, align 8
  %14 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %15 = call %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream* %14)
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %17 = call i32 @rsnd_io_is_play(%struct.rsnd_dai_stream* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %27 = icmp ne %struct.rsnd_mod* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %30 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %31 = call i32 @rsnd_src_convert_rate(%struct.rsnd_dai_stream* %29, %struct.rsnd_mod* %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %21
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_src(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_src_convert_rate(%struct.rsnd_dai_stream*, %struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
