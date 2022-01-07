; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_setup_ac97.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_setup_ac97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ssi = type { %struct.regmap* }
%struct.regmap = type { i32 }

@REG_SSI_STCCR = common dso_local global i32 0, align 4
@REG_SSI_SRCCR = common dso_local global i32 0, align 4
@REG_SSI_SACNT = common dso_local global i32 0, align 4
@SSI_SACNT_AC97EN = common dso_local global i32 0, align 4
@SSI_SACNT_FV = common dso_local global i32 0, align 4
@REG_SSI_SCR = common dso_local global i32 0, align 4
@SSI_SCR_SSIEN = common dso_local global i32 0, align 4
@SSI_SCR_TE = common dso_local global i32 0, align 4
@SSI_SCR_RE = common dso_local global i32 0, align 4
@REG_SSI_SOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_ssi*)* @fsl_ssi_setup_ac97 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_ssi_setup_ac97(%struct.fsl_ssi* %0) #0 {
  %2 = alloca %struct.fsl_ssi*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.fsl_ssi* %0, %struct.fsl_ssi** %2, align 8
  %4 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %4, i32 0, i32 0
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load i32, i32* @REG_SSI_STCCR, align 4
  %9 = call i32 @SSI_SxCCR_WL(i32 17)
  %10 = call i32 @SSI_SxCCR_DC(i32 13)
  %11 = or i32 %9, %10
  %12 = call i32 @regmap_write(%struct.regmap* %7, i32 %8, i32 %11)
  %13 = load %struct.regmap*, %struct.regmap** %3, align 8
  %14 = load i32, i32* @REG_SSI_SRCCR, align 4
  %15 = call i32 @SSI_SxCCR_WL(i32 17)
  %16 = call i32 @SSI_SxCCR_DC(i32 13)
  %17 = or i32 %15, %16
  %18 = call i32 @regmap_write(%struct.regmap* %13, i32 %14, i32 %17)
  %19 = load %struct.regmap*, %struct.regmap** %3, align 8
  %20 = load i32, i32* @REG_SSI_SACNT, align 4
  %21 = load i32, i32* @SSI_SACNT_AC97EN, align 4
  %22 = load i32, i32* @SSI_SACNT_FV, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @regmap_write(%struct.regmap* %19, i32 %20, i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %3, align 8
  %26 = load i32, i32* @REG_SSI_SCR, align 4
  %27 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %28 = load i32, i32* @SSI_SCR_TE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SSI_SCR_RE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %33 = load i32, i32* @SSI_SCR_TE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SSI_SCR_RE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @regmap_update_bits(%struct.regmap* %25, i32 %26, i32 %31, i32 %36)
  %38 = load %struct.regmap*, %struct.regmap** %3, align 8
  %39 = load i32, i32* @REG_SSI_SOR, align 4
  %40 = call i32 @SSI_SOR_WAIT(i32 3)
  %41 = call i32 @regmap_write(%struct.regmap* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @SSI_SxCCR_WL(i32) #1

declare dso_local i32 @SSI_SxCCR_DC(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @SSI_SOR_WAIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
