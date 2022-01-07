; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_ak4396_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_ak4396_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.generic_data* }
%struct.generic_data = type { i32** }

@ak4396_write.codec_spi_map = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 4], align 16
@OXYGEN_SPI_TRIGGER = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA_LENGTH_2 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CLOCK_160 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CODEC_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_SPI_CEN_LATCH_CLOCK_HI = common dso_local global i32 0, align 4
@AK4396_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32, i32, i32)* @ak4396_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4396_write(%struct.oxygen* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.generic_data*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %11 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %10, i32 0, i32 0
  %12 = load %struct.generic_data*, %struct.generic_data** %11, align 8
  store %struct.generic_data* %12, %struct.generic_data** %9, align 8
  %13 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %14 = load i32, i32* @OXYGEN_SPI_TRIGGER, align 4
  %15 = load i32, i32* @OXYGEN_SPI_DATA_LENGTH_2, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OXYGEN_SPI_CLOCK_160, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* @ak4396_write.codec_spi_map, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OXYGEN_SPI_CODEC_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %18, %24
  %26 = load i32, i32* @OXYGEN_SPI_CEN_LATCH_CLOCK_HI, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AK4396_WRITE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %28, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @oxygen_write_spi(%struct.oxygen* %13, i32 %27, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.generic_data*, %struct.generic_data** %9, align 8
  %37 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %35, i32* %45, align 4
  ret void
}

declare dso_local i32 @oxygen_write_spi(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
