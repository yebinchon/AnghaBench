; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_cs4245_read_spi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_cs4245_read_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i32* }

@OXYGEN_SPI_TRIGGER = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA_LENGTH_2 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CEN_LATCH_CLOCK_HI = common dso_local global i32 0, align 4
@OXYGEN_SPI_CLOCK_1280 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CODEC_SHIFT = common dso_local global i32 0, align 4
@CS4245_SPI_ADDRESS = common dso_local global i32 0, align 4
@CS4245_SPI_WRITE = common dso_local global i32 0, align 4
@CS4245_SPI_READ = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs4245_read_spi(%struct.oxygen* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dg*, align 8
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load %struct.dg*, %struct.dg** %9, align 8
  store %struct.dg* %10, %struct.dg** %6, align 8
  %11 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %12 = load i32, i32* @OXYGEN_SPI_TRIGGER, align 4
  %13 = load i32, i32* @OXYGEN_SPI_DATA_LENGTH_2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OXYGEN_SPI_CEN_LATCH_CLOCK_HI, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OXYGEN_SPI_CLOCK_1280, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OXYGEN_SPI_CODEC_SHIFT, align 4
  %20 = shl i32 0, %19
  %21 = or i32 %18, %20
  %22 = load i32, i32* @CS4245_SPI_ADDRESS, align 4
  %23 = load i32, i32* @CS4245_SPI_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @oxygen_write_spi(%struct.oxygen* %11, i32 %21, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %64

33:                                               ; preds = %2
  %34 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %35 = load i32, i32* @OXYGEN_SPI_TRIGGER, align 4
  %36 = load i32, i32* @OXYGEN_SPI_DATA_LENGTH_2, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @OXYGEN_SPI_CEN_LATCH_CLOCK_HI, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @OXYGEN_SPI_CLOCK_1280, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @OXYGEN_SPI_CODEC_SHIFT, align 4
  %43 = shl i32 0, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @CS4245_SPI_ADDRESS, align 4
  %46 = load i32, i32* @CS4245_SPI_READ, align 4
  %47 = or i32 %45, %46
  %48 = shl i32 %47, 8
  %49 = call i32 @oxygen_write_spi(%struct.oxygen* %34, i32 %44, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %33
  %55 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %56 = load i32, i32* @OXYGEN_SPI_DATA1, align 4
  %57 = call i32 @oxygen_read8(%struct.oxygen* %55, i32 %56)
  %58 = load %struct.dg*, %struct.dg** %6, align 8
  %59 = getelementptr inbounds %struct.dg, %struct.dg* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %54, %52, %31
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @oxygen_write_spi(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_read8(%struct.oxygen*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
