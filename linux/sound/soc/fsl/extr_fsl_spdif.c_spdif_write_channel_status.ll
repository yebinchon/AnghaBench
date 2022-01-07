; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_write_channel_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_write_channel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { %struct.platform_device*, %struct.regmap*, %struct.spdif_mixer_control }
%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }
%struct.spdif_mixer_control = type { i32* }

@REG_SPDIF_STCSCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"STCSCH: 0x%06x\0A\00", align 1
@REG_SPDIF_STCSCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"STCSCL: 0x%06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_spdif_priv*)* @spdif_write_channel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_write_channel_status(%struct.fsl_spdif_priv* %0) #0 {
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
  %15 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %16 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bitrev8(i32 %19)
  %21 = shl i32 %20, 16
  %22 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %23 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bitrev8(i32 %26)
  %28 = shl i32 %27, 8
  %29 = or i32 %21, %28
  %30 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %31 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bitrev8(i32 %34)
  %36 = or i32 %29, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.regmap*, %struct.regmap** %4, align 8
  %38 = load i32, i32* @REG_SPDIF_STCSCH, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @regmap_write(%struct.regmap* %37, i32 %38, i32 %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %46 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bitrev8(i32 %49)
  %51 = shl i32 %50, 16
  store i32 %51, i32* %6, align 4
  %52 = load %struct.regmap*, %struct.regmap** %4, align 8
  %53 = load i32, i32* @REG_SPDIF_STCSCL, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @regmap_write(%struct.regmap* %52, i32 %53, i32 %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  ret void
}

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
