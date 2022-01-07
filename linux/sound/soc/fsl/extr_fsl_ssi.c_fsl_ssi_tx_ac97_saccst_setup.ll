; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_tx_ac97_saccst_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_tx_ac97_saccst_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ssi = type { %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@REG_SSI_SACCDIS = common dso_local global i32 0, align 4
@REG_SSI_SACCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_ssi*)* @fsl_ssi_tx_ac97_saccst_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_ssi_tx_ac97_saccst_setup(%struct.fsl_ssi* %0) #0 {
  %2 = alloca %struct.fsl_ssi*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.fsl_ssi* %0, %struct.fsl_ssi** %2, align 8
  %4 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %4, i32 0, i32 1
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.fsl_ssi*, %struct.fsl_ssi** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.regmap*, %struct.regmap** %3, align 8
  %15 = load i32, i32* @REG_SSI_SACCDIS, align 4
  %16 = call i32 @regmap_write(%struct.regmap* %14, i32 %15, i32 255)
  %17 = load %struct.regmap*, %struct.regmap** %3, align 8
  %18 = load i32, i32* @REG_SSI_SACCEN, align 4
  %19 = call i32 @regmap_write(%struct.regmap* %17, i32 %18, i32 768)
  br label %20

20:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
