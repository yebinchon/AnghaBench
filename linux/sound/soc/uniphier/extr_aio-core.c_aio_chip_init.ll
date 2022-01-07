; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_chip = type { %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i64 }
%struct.regmap = type { i32 }

@A2APLLCTR0 = common dso_local global i32 0, align 4
@A2APLLCTR0_APLLXPOW_MASK = common dso_local global i32 0, align 4
@A2APLLCTR0_APLLXPOW_PWON = common dso_local global i32 0, align 4
@A2EXMCLKSEL0 = common dso_local global i32 0, align 4
@A2EXMCLKSEL0_EXMCLK_MASK = common dso_local global i32 0, align 4
@A2EXMCLKSEL0_EXMCLK_OUTPUT = common dso_local global i32 0, align 4
@A2AIOINPUTSEL = common dso_local global i32 0, align 4
@A2AIOINPUTSEL_RXSEL_MASK = common dso_local global i32 0, align 4
@A2AIOINPUTSEL_RXSEL_PCMI1_HDMIRX1 = common dso_local global i32 0, align 4
@A2AIOINPUTSEL_RXSEL_PCMI2_SIF = common dso_local global i32 0, align 4
@A2AIOINPUTSEL_RXSEL_PCMI3_EVEA = common dso_local global i32 0, align 4
@A2AIOINPUTSEL_RXSEL_IECI1_HDMIRX1 = common dso_local global i32 0, align 4
@CDA2D_TEST = common dso_local global i32 0, align 4
@CDA2D_TEST_DDR_MODE_MASK = common dso_local global i32 0, align 4
@CDA2D_TEST_DDR_MODE_EXTON0 = common dso_local global i32 0, align 4
@CDA2D_TEST_DDR_MODE_EXTOFF1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aio_chip_init(%struct.uniphier_aio_chip* %0) #0 {
  %2 = alloca %struct.uniphier_aio_chip*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.uniphier_aio_chip* %0, %struct.uniphier_aio_chip** %2, align 8
  %4 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %2, align 8
  %5 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %4, i32 0, i32 1
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load i32, i32* @A2APLLCTR0, align 4
  %9 = load i32, i32* @A2APLLCTR0_APLLXPOW_MASK, align 4
  %10 = load i32, i32* @A2APLLCTR0_APLLXPOW_PWON, align 4
  %11 = call i32 @regmap_update_bits(%struct.regmap* %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = load i32, i32* @A2EXMCLKSEL0, align 4
  %14 = load i32, i32* @A2EXMCLKSEL0_EXMCLK_MASK, align 4
  %15 = load i32, i32* @A2EXMCLKSEL0_EXMCLK_OUTPUT, align 4
  %16 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.regmap*, %struct.regmap** %3, align 8
  %18 = load i32, i32* @A2AIOINPUTSEL, align 4
  %19 = load i32, i32* @A2AIOINPUTSEL_RXSEL_MASK, align 4
  %20 = load i32, i32* @A2AIOINPUTSEL_RXSEL_PCMI1_HDMIRX1, align 4
  %21 = load i32, i32* @A2AIOINPUTSEL_RXSEL_PCMI2_SIF, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @A2AIOINPUTSEL_RXSEL_PCMI3_EVEA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @A2AIOINPUTSEL_RXSEL_IECI1_HDMIRX1, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @regmap_update_bits(%struct.regmap* %17, i32 %18, i32 %19, i32 %26)
  %28 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %2, align 8
  %29 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.regmap*, %struct.regmap** %3, align 8
  %36 = load i32, i32* @CDA2D_TEST, align 4
  %37 = load i32, i32* @CDA2D_TEST_DDR_MODE_MASK, align 4
  %38 = load i32, i32* @CDA2D_TEST_DDR_MODE_EXTON0, align 4
  %39 = call i32 @regmap_update_bits(%struct.regmap* %35, i32 %36, i32 %37, i32 %38)
  br label %46

40:                                               ; preds = %1
  %41 = load %struct.regmap*, %struct.regmap** %3, align 8
  %42 = load i32, i32* @CDA2D_TEST, align 4
  %43 = load i32, i32* @CDA2D_TEST_DDR_MODE_MASK, align 4
  %44 = load i32, i32* @CDA2D_TEST_DDR_MODE_EXTOFF1, align 4
  %45 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
