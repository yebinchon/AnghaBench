; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }

@SSI_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*, i32)* @rsnd_ssi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_irq(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsnd_mod*, align 8
  %7 = alloca %struct.rsnd_dai_stream*, align 8
  %8 = alloca %struct.rsnd_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %6, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %7, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.rsnd_priv*, %struct.rsnd_priv** %8, align 8
  %12 = call i64 @rsnd_is_gen1(%struct.rsnd_priv* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

15:                                               ; preds = %4
  %16 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %17 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %18 = call i64 @rsnd_ssi_is_parent(%struct.rsnd_mod* %16, %struct.rsnd_dai_stream* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %41

21:                                               ; preds = %15
  %22 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %23 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %24 = call i32 @rsnd_ssi_is_run_mods(%struct.rsnd_mod* %22, %struct.rsnd_dai_stream* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %41

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %32 = call i64 @rsnd_ssi_is_dma_mode(%struct.rsnd_mod* %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 234881024, i32 251658240
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %38 = load i32, i32* @SSI_INT_ENABLE, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %37, i32 %38, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %26, %20, %14
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @rsnd_is_gen1(%struct.rsnd_priv*) #1

declare dso_local i64 @rsnd_ssi_is_parent(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_ssi_is_run_mods(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_ssi_is_dma_mode(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
