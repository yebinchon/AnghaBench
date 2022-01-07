; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_use_busif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_use_busif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_ssi = type { i32 }

@RSND_SSI_NO_BUSIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_ssi_use_busif(%struct.rsnd_dai_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_ssi*, align 8
  %6 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  %7 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %8 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %7)
  store %struct.rsnd_mod* %8, %struct.rsnd_mod** %4, align 8
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %10 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %9)
  store %struct.rsnd_ssi* %10, %struct.rsnd_ssi** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %12 = call i32 @rsnd_ssi_is_dma_mode(%struct.rsnd_mod* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %5, align 8
  %17 = load i32, i32* @RSND_SSI_NO_BUSIF, align 4
  %18 = call i32 @rsnd_flags_has(%struct.rsnd_ssi* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %23 = call i64 @rsnd_io_to_mod_src(%struct.rsnd_dai_stream* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_ssi_is_dma_mode(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_flags_has(%struct.rsnd_ssi*, i32) #1

declare dso_local i64 @rsnd_io_to_mod_src(%struct.rsnd_dai_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
