; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_wm8785_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_wm8785_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.generic_data* }
%struct.generic_data = type { i32* }

@OXYGEN_SPI_TRIGGER = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA_LENGTH_2 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CLOCK_160 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CODEC_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_SPI_CEN_LATCH_CLOCK_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32, i32)* @wm8785_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8785_write(%struct.oxygen* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.generic_data*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load %struct.generic_data*, %struct.generic_data** %9, align 8
  store %struct.generic_data* %10, %struct.generic_data** %7, align 8
  %11 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %12 = load i32, i32* @OXYGEN_SPI_TRIGGER, align 4
  %13 = load i32, i32* @OXYGEN_SPI_DATA_LENGTH_2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OXYGEN_SPI_CLOCK_160, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OXYGEN_SPI_CODEC_SHIFT, align 4
  %18 = shl i32 3, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @OXYGEN_SPI_CEN_LATCH_CLOCK_LO, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 9
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @oxygen_write_spi(%struct.oxygen* %11, i32 %21, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.generic_data*, %struct.generic_data** %7, align 8
  %29 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.generic_data*, %struct.generic_data** %7, align 8
  %36 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %3
  ret void
}

declare dso_local i32 @oxygen_write_spi(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
