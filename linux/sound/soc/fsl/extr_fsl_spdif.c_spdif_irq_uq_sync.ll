; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_uq_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_uq_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { %struct.platform_device*, %struct.spdif_mixer_control }
%struct.platform_device = type { i32 }
%struct.spdif_mixer_control = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"isr: U/Q Channel sync found\0A\00", align 1
@SPDIF_QSUB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_spdif_priv*)* @spdif_irq_uq_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_irq_uq_sync(%struct.fsl_spdif_priv* %0) #0 {
  %2 = alloca %struct.fsl_spdif_priv*, align 8
  %3 = alloca %struct.spdif_mixer_control*, align 8
  %4 = alloca %struct.platform_device*, align 8
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %2, align 8
  %5 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %5, i32 0, i32 1
  store %struct.spdif_mixer_control* %6, %struct.spdif_mixer_control** %3, align 8
  %7 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %7, i32 0, i32 0
  %9 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %14 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %20 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @SPDIF_QSUB_SIZE, align 4
  %24 = sdiv i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %3, align 8
  %27 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
