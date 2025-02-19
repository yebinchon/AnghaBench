; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssi_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_dma_probe(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %10 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %11 = call i64 @rsnd_ssi_is_multi_slave(%struct.rsnd_mod* %9, %struct.rsnd_dai_stream* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %16 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %17 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %18 = call i32 @rsnd_ssi_common_probe(%struct.rsnd_mod* %15, %struct.rsnd_dai_stream* %16, %struct.rsnd_priv* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %14
  %24 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %25 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %26 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %27 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %26, i32 0, i32 0
  %28 = call i32 @rsnd_dma_attach(%struct.rsnd_dai_stream* %24, %struct.rsnd_mod* %25, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %21, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @rsnd_ssi_is_multi_slave(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_ssi_common_probe(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_dma_attach(%struct.rsnd_dai_stream*, %struct.rsnd_mod*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
