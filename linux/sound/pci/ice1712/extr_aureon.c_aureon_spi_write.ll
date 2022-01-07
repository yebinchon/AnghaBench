; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VT1724_SUBDEVICE_PRODIGY71LT = common dso_local global i64 0, align 8
@VT1724_SUBDEVICE_PRODIGY71XT = common dso_local global i64 0, align 8
@PRODIGY_SPI_MOSI = common dso_local global i32 0, align 4
@PRODIGY_SPI_CLK = common dso_local global i32 0, align 4
@PRODIGY_WM_CS = common dso_local global i32 0, align 4
@AUREON_WM_RW = common dso_local global i32 0, align 4
@AUREON_SPI_MOSI = common dso_local global i32 0, align 4
@AUREON_SPI_CLK = common dso_local global i32 0, align 4
@AUREON_WM_CS = common dso_local global i32 0, align 4
@AUREON_CS8415_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32, i32)* @aureon_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aureon_spi_write(%struct.snd_ice1712* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71LT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71XT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21, %4
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %30 = load i32, i32* @PRODIGY_SPI_MOSI, align 4
  %31 = load i32, i32* @PRODIGY_SPI_CLK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PRODIGY_WM_CS, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %29, i32 %35)
  %37 = load i32, i32* @PRODIGY_SPI_MOSI, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @PRODIGY_SPI_CLK, align 4
  store i32 %38, i32* %12, align 4
  br label %57

39:                                               ; preds = %21
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %41 = load i32, i32* @AUREON_WM_RW, align 4
  %42 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @AUREON_SPI_CLK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @AUREON_WM_CS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @AUREON_CS8415_CS, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %40, i32 %50)
  %52 = load i32, i32* @AUREON_SPI_MOSI, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @AUREON_SPI_CLK, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @AUREON_WM_RW, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %39, %28
  %58 = load i32, i32* %6, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %62, i32 %63)
  %65 = call i32 @udelay(i32 1)
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %106, %57
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %76, i32 %77)
  %79 = call i32 @udelay(i32 1)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %10, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %94

89:                                               ; preds = %71
  %90 = load i32, i32* %11, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %95, i32 %96)
  %98 = call i32 @udelay(i32 1)
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %102, i32 %103)
  %105 = call i32 @udelay(i32 1)
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %10, align 4
  br label %68

109:                                              ; preds = %68
  %110 = load i32, i32* %12, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %117, i32 %118)
  %120 = call i32 @udelay(i32 1)
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %124, i32 %125)
  %127 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
