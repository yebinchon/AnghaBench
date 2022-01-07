; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_cs4245_write_spi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_cs4245_write_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i32* }

@CS4245_SPI_ADDRESS = common dso_local global i32 0, align 4
@CS4245_SPI_WRITE = common dso_local global i32 0, align 4
@OXYGEN_SPI_TRIGGER = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA_LENGTH_3 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CLOCK_1280 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CODEC_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_SPI_CEN_LATCH_CLOCK_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs4245_write_spi(%struct.oxygen* %0, i32 %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dg*, align 8
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %8 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %7, i32 0, i32 0
  %9 = load %struct.dg*, %struct.dg** %8, align 8
  store %struct.dg* %9, %struct.dg** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @CS4245_SPI_ADDRESS, align 4
  %13 = load i32, i32* @CS4245_SPI_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = shl i32 %14, 16
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.dg*, %struct.dg** %5, align 8
  %19 = getelementptr inbounds %struct.dg, %struct.dg* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %28 = load i32, i32* @OXYGEN_SPI_TRIGGER, align 4
  %29 = load i32, i32* @OXYGEN_SPI_DATA_LENGTH_3, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @OXYGEN_SPI_CLOCK_1280, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @OXYGEN_SPI_CODEC_SHIFT, align 4
  %34 = shl i32 0, %33
  %35 = or i32 %32, %34
  %36 = load i32, i32* @OXYGEN_SPI_CEN_LATCH_CLOCK_HI, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @oxygen_write_spi(%struct.oxygen* %27, i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local i32 @oxygen_write_spi(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
