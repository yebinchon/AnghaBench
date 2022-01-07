; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@AUREON_SPI_CLK = common dso_local global i32 0, align 4
@AUREON_CS8415_CS = common dso_local global i32 0, align 4
@AUREON_WM_CS = common dso_local global i32 0, align 4
@AUREON_SPI_MOSI = common dso_local global i32 0, align 4
@AUREON_SPI_MISO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32, i32, i8*, i32)* @aureon_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aureon_spi_read(%struct.snd_ice1712* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.snd_ice1712*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %18 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %17)
  %19 = load i32, i32* @AUREON_SPI_CLK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load i32, i32* @AUREON_CS8415_CS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @AUREON_WM_CS, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %15, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %15, align 4
  %33 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %33, i32 %34)
  %36 = call i32 @udelay(i32 1)
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %77, %6
  %40 = load i32, i32* %13, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %50 = load i32, i32* %15, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %15, align 4
  br label %57

52:                                               ; preds = %42
  %53 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %15, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %58, i32 %59)
  %61 = call i32 @udelay(i32 1)
  %62 = load i32, i32* @AUREON_SPI_CLK, align 4
  %63 = load i32, i32* %15, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %15, align 4
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %65, i32 %66)
  %68 = call i32 @udelay(i32 1)
  %69 = load i32, i32* @AUREON_SPI_CLK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %15, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %15, align 4
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %73, i32 %74)
  %76 = call i32 @udelay(i32 1)
  br label %77

77:                                               ; preds = %57
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %13, align 4
  br label %39

80:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %131, %80
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %81
  store i8 0, i8* %16, align 1
  store i32 7, i32* %13, align 4
  br label %86

86:                                               ; preds = %122, %85
  %87 = load i32, i32* %13, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %125

89:                                               ; preds = %86
  %90 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %91 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i8, i8* %16, align 1
  %93 = zext i8 %92 to i32
  %94 = shl i32 %93, 1
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %16, align 1
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @AUREON_SPI_MISO, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  %102 = load i8, i8* %16, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, %101
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %16, align 1
  %106 = call i32 @udelay(i32 1)
  %107 = load i32, i32* @AUREON_SPI_CLK, align 4
  %108 = load i32, i32* %15, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %15, align 4
  %110 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %110, i32 %111)
  %113 = call i32 @udelay(i32 1)
  %114 = load i32, i32* @AUREON_SPI_CLK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %15, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %15, align 4
  %118 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %118, i32 %119)
  %121 = call i32 @udelay(i32 1)
  br label %122

122:                                              ; preds = %89
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %13, align 4
  br label %86

125:                                              ; preds = %86
  %126 = load i8, i8* %16, align 1
  %127 = load i8*, i8** %11, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 %126, i8* %130, align 1
  br label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %81

134:                                              ; preds = %81
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %15, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %15, align 4
  %138 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %138, i32 %139)
  ret void
}

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
