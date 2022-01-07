; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_uqrx_full.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_uqrx_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { %struct.platform_device*, %struct.regmap*, %struct.spdif_mixer_control }
%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }
%struct.spdif_mixer_control = type { i32, i32, i32* }

@SPDIF_UBITS_SIZE = common dso_local global i32 0, align 4
@REG_SPDIF_SRU = common dso_local global i32 0, align 4
@SPDIF_QSUB_SIZE = common dso_local global i32 0, align 4
@REG_SPDIF_SRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported channel name\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"isr: %c Channel receive register full\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"User bit receive buffer overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_spdif_priv*, i8)* @spdif_irq_uqrx_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_irq_uqrx_full(%struct.fsl_spdif_priv* %0, i8 signext %1) #0 {
  %3 = alloca %struct.fsl_spdif_priv*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.spdif_mixer_control*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %3, align 8
  store i8 %1, i8* %4, align 1
  %12 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %12, i32 0, i32 2
  store %struct.spdif_mixer_control* %13, %struct.spdif_mixer_control** %5, align 8
  %14 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %14, i32 0, i32 1
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %6, align 8
  %17 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %17, i32 0, i32 0
  %19 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  store %struct.platform_device* %19, %struct.platform_device** %7, align 8
  %20 = load i8, i8* %4, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %32 [
    i32 85, label %22
    i32 81, label %27
  ]

22:                                               ; preds = %2
  %23 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %5, align 8
  %24 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %23, i32 0, i32 0
  store i32* %24, i32** %8, align 8
  %25 = load i32, i32* @SPDIF_UBITS_SIZE, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @REG_SPDIF_SRU, align 4
  store i32 %26, i32* %11, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %5, align 8
  %29 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %28, i32 0, i32 1
  store i32* %29, i32** %8, align 8
  %30 = load i32, i32* @SPDIF_QSUB_SIZE, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @REG_SPDIF_SRQ, align 4
  store i32 %31, i32* %11, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %97

36:                                               ; preds = %27, %22
  %37 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i8, i8* %4, align 1
  %40 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8 signext %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %43, 2
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32*, i32** %8, align 8
  store i32 0, i32* %47, align 4
  br label %64

48:                                               ; preds = %36
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = srem i32 %50, %51
  %53 = add nsw i32 %52, 3
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %97

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.regmap*, %struct.regmap** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @regmap_read(%struct.regmap* %65, i32 %66, i32* %10)
  %68 = load i32, i32* %10, align 4
  %69 = ashr i32 %68, 16
  %70 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %5, align 8
  %71 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %8, align 8
  %75 = load i32, i32* %73, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  store i32 %69, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 8
  %80 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %5, align 8
  %81 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %8, align 8
  %85 = load i32, i32* %83, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32 %79, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %5, align 8
  %90 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  %94 = load i32, i32* %92, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  store i32 %88, i32* %96, align 4
  br label %97

97:                                               ; preds = %64, %59, %32
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 signext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
