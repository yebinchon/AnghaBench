; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }
%struct.rsnd_ssi = type { i32 }

@RSND_SSI_PROBED = common dso_local global i32 0, align 4
@rsnd_ssi_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssi_common_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_common_probe(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.rsnd_ssi*, align 8
  %10 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %11 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %12 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %11)
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %14 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %13)
  store %struct.rsnd_ssi* %14, %struct.rsnd_ssi** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %16 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %17 = call i64 @rsnd_ssi_is_multi_slave(%struct.rsnd_mod* %15, %struct.rsnd_dai_stream* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %22 = load i32, i32* @RSND_SSI_PROBED, align 4
  %23 = call i32 @rsnd_flags_has(%struct.rsnd_ssi* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %27 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @rsnd_ssi_interrupt, align 4
  %30 = load i32, i32* @IRQF_SHARED, align 4
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = call i32 @dev_name(%struct.device* %31)
  %33 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %34 = call i32 @request_irq(i32 %28, i32 %29, i32 %30, i32 %32, %struct.rsnd_mod* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %36 = load i32, i32* @RSND_SSI_PROBED, align 4
  %37 = call i32 @rsnd_flags_set(%struct.rsnd_ssi* %35, i32 %36)
  br label %38

38:                                               ; preds = %25, %20
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local i64 @rsnd_ssi_is_multi_slave(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_flags_has(%struct.rsnd_ssi*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.rsnd_mod*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @rsnd_flags_set(%struct.rsnd_ssi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
