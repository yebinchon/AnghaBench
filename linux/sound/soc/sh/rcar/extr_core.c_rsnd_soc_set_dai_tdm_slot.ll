; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dai = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"unsupported TDM slots (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rsnd_soc_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_soc_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rsnd_priv*, align 8
  %13 = alloca %struct.rsnd_dai*, align 8
  %14 = alloca %struct.device*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = call %struct.rsnd_priv* @rsnd_dai_to_priv(%struct.snd_soc_dai* %15)
  store %struct.rsnd_priv* %16, %struct.rsnd_priv** %12, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = call %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai* %17)
  store %struct.rsnd_dai* %18, %struct.rsnd_dai** %13, align 8
  %19 = load %struct.rsnd_priv*, %struct.rsnd_priv** %12, align 8
  %20 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %19)
  store %struct.device* %20, %struct.device** %14, align 8
  %21 = load i32, i32* %11, align 4
  switch i32 %21, label %23 [
    i32 16, label %22
    i32 24, label %22
    i32 32, label %22
  ]

22:                                               ; preds = %5, %5, %5
  br label %24

23:                                               ; preds = %5
  store i32 32, i32* %11, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %35 [
    i32 2, label %26
    i32 6, label %26
    i32 8, label %26
  ]

26:                                               ; preds = %24, %24, %24
  %27 = load %struct.rsnd_dai*, %struct.rsnd_dai** %13, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @rsnd_rdai_channels_set(%struct.rsnd_dai* %27, i32 %28)
  %30 = load %struct.rsnd_dai*, %struct.rsnd_dai** %13, align 8
  %31 = call i32 @rsnd_rdai_ssi_lane_set(%struct.rsnd_dai* %30, i32 1)
  %32 = load %struct.rsnd_dai*, %struct.rsnd_dai** %13, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @rsnd_rdai_width_set(%struct.rsnd_dai* %32, i32 %33)
  br label %41

35:                                               ; preds = %24
  %36 = load %struct.device*, %struct.device** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.rsnd_priv* @rsnd_dai_to_priv(%struct.snd_soc_dai*) #1

declare dso_local %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_rdai_channels_set(%struct.rsnd_dai*, i32) #1

declare dso_local i32 @rsnd_rdai_ssi_lane_set(%struct.rsnd_dai*, i32) #1

declare dso_local i32 @rsnd_rdai_width_set(%struct.rsnd_dai*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
