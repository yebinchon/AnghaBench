; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.TYPE_2__, %struct.xonar_wm87x6* }
%struct.TYPE_2__ = type { i32 }
%struct.xonar_wm87x6 = type { i32* }

@OXYGEN_FUNCTION_2WIRE_SPI_MASK = common dso_local global i32 0, align 4
@OXYGEN_FUNCTION_SPI = common dso_local global i32 0, align 4
@WM8776_HPLVOL = common dso_local global i32 0, align 4
@WM8776_DACMASTER = common dso_local global i32 0, align 4
@WM8776_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32, i32)* @wm8776_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8776_write(%struct.oxygen* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xonar_wm87x6*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 1
  %10 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %9, align 8
  store %struct.xonar_wm87x6* %10, %struct.xonar_wm87x6** %7, align 8
  %11 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %12 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @OXYGEN_FUNCTION_2WIRE_SPI_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @OXYGEN_FUNCTION_SPI, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @wm8776_write_spi(%struct.oxygen* %20, i32 %21, i32 %22)
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @wm8776_write_i2c(%struct.oxygen* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  %32 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = icmp ult i32 %30, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @WM8776_HPLVOL, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @WM8776_DACMASTER, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @WM8776_UPDATE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %40, %36
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  %52 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %29
  ret void
}

declare dso_local i32 @wm8776_write_spi(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @wm8776_write_i2c(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
