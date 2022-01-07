; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_common_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_common_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_ssi = type { i32 }

@RSND_SSI_PROBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssi_common_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_common_remove(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.rsnd_ssi*, align 8
  %9 = alloca %struct.rsnd_mod*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %11 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %10)
  store %struct.rsnd_ssi* %11, %struct.rsnd_ssi** %8, align 8
  %12 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %13 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %12)
  store %struct.rsnd_mod* %13, %struct.rsnd_mod** %9, align 8
  %14 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %15 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %16 = icmp ne %struct.rsnd_mod* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %20 = load i32, i32* @RSND_SSI_PROBED, align 4
  %21 = call i64 @rsnd_flags_has(%struct.rsnd_ssi* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %25 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.rsnd_mod* %27)
  %29 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %30 = load i32, i32* @RSND_SSI_PROBED, align 4
  %31 = call i32 @rsnd_flags_del(%struct.rsnd_ssi* %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %18
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_flags_has(%struct.rsnd_ssi*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_flags_del(%struct.rsnd_ssi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
