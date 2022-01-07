; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_sym_error.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_sym_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { i32, %struct.platform_device*, %struct.regmap* }
%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"isr: receiver found illegal symbol\0A\00", align 1
@REG_SPDIF_SIE = common dso_local global i32 0, align 4
@INT_SYM_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_spdif_priv*)* @spdif_irq_sym_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_irq_sym_error(%struct.fsl_spdif_priv* %0) #0 {
  %2 = alloca %struct.fsl_spdif_priv*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.platform_device*, align 8
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %2, align 8
  %5 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %5, i32 0, i32 2
  %7 = load %struct.regmap*, %struct.regmap** %6, align 8
  store %struct.regmap* %7, %struct.regmap** %3, align 8
  %8 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %9 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %8, i32 0, i32 1
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %15 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.regmap*, %struct.regmap** %3, align 8
  %20 = load i32, i32* @REG_SPDIF_SIE, align 4
  %21 = load i32, i32* @INT_SYM_ERR, align 4
  %22 = call i32 @regmap_update_bits(%struct.regmap* %19, i32 %20, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
