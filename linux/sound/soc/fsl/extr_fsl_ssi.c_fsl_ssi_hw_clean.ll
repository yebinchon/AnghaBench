; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_hw_clean.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_hw_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ssi = type { i32 }

@REG_SSI_SCR = common dso_local global i32 0, align 4
@SSI_SCR_TE = common dso_local global i32 0, align 4
@SSI_SCR_RE = common dso_local global i32 0, align 4
@REG_SSI_SACNT = common dso_local global i32 0, align 4
@REG_SSI_SOR = common dso_local global i32 0, align 4
@SSI_SCR_SSIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_ssi*)* @fsl_ssi_hw_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_ssi_hw_clean(%struct.fsl_ssi* %0) #0 {
  %2 = alloca %struct.fsl_ssi*, align 8
  store %struct.fsl_ssi* %0, %struct.fsl_ssi** %2, align 8
  %3 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %4 = call i64 @fsl_ssi_is_ac97(%struct.fsl_ssi* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @REG_SSI_SCR, align 4
  %11 = load i32, i32* @SSI_SCR_TE, align 4
  %12 = load i32, i32* @SSI_SCR_RE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %13, i32 0)
  %15 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %16 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @REG_SSI_SACNT, align 4
  %19 = call i32 @regmap_write(i32 %17, i32 %18, i32 0)
  %20 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %21 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @REG_SSI_SOR, align 4
  %24 = call i32 @regmap_write(i32 %22, i32 %23, i32 0)
  %25 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %26 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REG_SSI_SCR, align 4
  %29 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %30 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %6, %1
  ret void
}

declare dso_local i64 @fsl_ssi_is_ac97(%struct.fsl_ssi*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
