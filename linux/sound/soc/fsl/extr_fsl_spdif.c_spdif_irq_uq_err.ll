; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_uq_err.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_uq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { %struct.platform_device*, %struct.regmap*, %struct.spdif_mixer_control }
%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }
%struct.spdif_mixer_control = type { i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"isr: U/Q Channel framing error\0A\00", align 1
@REG_SPDIF_SRU = common dso_local global i32 0, align 4
@REG_SPDIF_SRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_spdif_priv*)* @spdif_irq_uq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_irq_uq_err(%struct.fsl_spdif_priv* %0) #0 {
  %2 = alloca %struct.fsl_spdif_priv*, align 8
  %3 = alloca %struct.spdif_mixer_control*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %2, align 8
  %7 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %7, i32 0, i32 2
  store %struct.spdif_mixer_control* %8, %struct.spdif_mixer_control** %3, align 8
  %9 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %9, i32 0, i32 1
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %13 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %12, i32 0, i32 0
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.regmap*, %struct.regmap** %4, align 8
  %19 = load i32, i32* @REG_SPDIF_SRU, align 4
  %20 = call i32 @regmap_read(%struct.regmap* %18, i32 %19, i32* %6)
  %21 = load %struct.regmap*, %struct.regmap** %4, align 8
  %22 = load i32, i32* @REG_SPDIF_SRQ, align 4
  %23 = call i32 @regmap_read(%struct.regmap* %21, i32 %22, i32* %6)
  %24 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %25 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %27 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %29 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
