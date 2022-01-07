; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.imx_ssi = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }

@SSI_SFCSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @imx_ssi_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.imx_ssi*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %6 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.imx_ssi* @dev_get_drvdata(i32 %7)
  store %struct.imx_ssi* %8, %struct.imx_ssi** %3, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %10 = load %struct.imx_ssi*, %struct.imx_ssi** %3, align 8
  %11 = call i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai* %9, %struct.imx_ssi* %10)
  %12 = load %struct.imx_ssi*, %struct.imx_ssi** %3, align 8
  %13 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SSI_SFCSR_TFWM0(i32 %15)
  %17 = load %struct.imx_ssi*, %struct.imx_ssi** %3, align 8
  %18 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @SSI_SFCSR_RFWM0(i32 %20)
  %22 = or i32 %16, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.imx_ssi*, %struct.imx_ssi** %3, align 8
  %25 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SSI_SFCSR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.imx_ssi*, %struct.imx_ssi** %3, align 8
  %31 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %30, i32 0, i32 1
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 1
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.imx_ssi*, %struct.imx_ssi** %3, align 8
  %35 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %34, i32 0, i32 0
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  ret i32 0
}

declare dso_local %struct.imx_ssi* @dev_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai*, %struct.imx_ssi*) #1

declare dso_local i32 @SSI_SFCSR_TFWM0(i32) #1

declare dso_local i32 @SSI_SFCSR_RFWM0(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
