; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_pio_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_pio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.rsnd_ssi = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssi_pio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_pio_init(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.rsnd_ssi*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %6, align 8
  %9 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %10 = call %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream* %9)
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %7, align 8
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %12 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %11)
  store %struct.rsnd_ssi* %12, %struct.rsnd_ssi** %8, align 8
  %13 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %14 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %15 = call i32 @rsnd_ssi_is_parent(%struct.rsnd_mod* %13, %struct.rsnd_dai_stream* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %3
  %18 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %19 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %28 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %27, i32 1)
  %29 = mul nsw i32 %26, %28
  %30 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %31 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %33 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %36 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %17, %3
  %38 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %39 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %40 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %41 = call i32 @rsnd_ssi_init(%struct.rsnd_mod* %38, %struct.rsnd_dai_stream* %39, %struct.rsnd_priv* %40)
  ret i32 %41
}

declare dso_local %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_ssi_is_parent(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @samples_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @rsnd_ssi_init(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
