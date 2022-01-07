; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_write_spi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_io.c_oxygen_write_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@OXYGEN_SPI_DATA1 = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA2 = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA_LENGTH_3 = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA3 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oxygen_write_spi(%struct.oxygen* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %8 = load i32, i32* @OXYGEN_SPI_DATA1, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @oxygen_write8(%struct.oxygen* %7, i32 %8, i32 %9)
  %11 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %12 = load i32, i32* @OXYGEN_SPI_DATA2, align 4
  %13 = load i32, i32* %6, align 4
  %14 = lshr i32 %13, 8
  %15 = call i32 @oxygen_write8(%struct.oxygen* %11, i32 %12, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @OXYGEN_SPI_DATA_LENGTH_3, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %22 = load i32, i32* @OXYGEN_SPI_DATA3, align 4
  %23 = load i32, i32* %6, align 4
  %24 = lshr i32 %23, 16
  %25 = call i32 @oxygen_write8(%struct.oxygen* %21, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %20, %3
  %27 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %28 = load i32, i32* @OXYGEN_SPI_CONTROL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @oxygen_write8(%struct.oxygen* %27, i32 %28, i32 %29)
  %31 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %32 = call i32 @oxygen_wait_spi(%struct.oxygen* %31)
  ret i32 %32
}

declare dso_local i32 @oxygen_write8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_wait_spi(%struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
