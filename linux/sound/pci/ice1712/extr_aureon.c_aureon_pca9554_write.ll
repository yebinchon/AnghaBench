; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_pca9554_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_pca9554_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@PCA9554_DEV = common dso_local global i8 0, align 1
@AUREON_SPI_MOSI = common dso_local global i32 0, align 4
@AUREON_SPI_CLK = common dso_local global i32 0, align 4
@AUREON_WM_RW = common dso_local global i32 0, align 4
@AUREON_WM_CS = common dso_local global i32 0, align 4
@AUREON_CS8415_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i8, i8)* @aureon_pca9554_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aureon_pca9554_write(%struct.snd_ice1712* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %12 = load i8, i8* @PCA9554_DEV, align 1
  store i8 %12, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %14 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %16 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %17 = load i32, i32* @AUREON_SPI_CLK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AUREON_WM_RW, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AUREON_WM_CS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @AUREON_CS8415_CS, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %15, i32 %25)
  %27 = load i32, i32* @AUREON_WM_RW, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @AUREON_CS8415_CS, align 4
  %31 = load i32, i32* @AUREON_WM_CS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @AUREON_SPI_CLK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %43, i32 %44)
  %46 = call i32 @udelay(i32 50)
  %47 = load i32, i32* @AUREON_SPI_CLK, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %50, i32 %51)
  %53 = call i32 @udelay(i32 50)
  %54 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %57, i32 %58)
  %60 = call i32 @udelay(i32 100)
  %61 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %65, i32 %66)
  %68 = call i32 @udelay(i32 50)
  %69 = load i32, i32* @AUREON_SPI_CLK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %73, i32 %74)
  %76 = call i32 @udelay(i32 100)
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %155, %3
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %158

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  switch i32 %81, label %88 [
    i32 0, label %82
    i32 1, label %84
    i32 2, label %86
  ]

82:                                               ; preds = %80
  %83 = load i8, i8* %10, align 1
  store i8 %83, i8* %11, align 1
  br label %88

84:                                               ; preds = %80
  %85 = load i8, i8* %5, align 1
  store i8 %85, i8* %11, align 1
  br label %88

86:                                               ; preds = %80
  %87 = load i8, i8* %6, align 1
  store i8 %87, i8* %11, align 1
  br label %88

88:                                               ; preds = %80, %86, %84, %82
  store i32 7, i32* %8, align 4
  br label %89

89:                                               ; preds = %128, %88
  %90 = load i32, i32* %8, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %131

92:                                               ; preds = %89
  %93 = load i32, i32* @AUREON_SPI_CLK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %97, i32 %98)
  %100 = call i32 @udelay(i32 40)
  %101 = load i8, i8* %11, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %92
  %108 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %116

111:                                              ; preds = %92
  %112 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %111, %107
  %117 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %117, i32 %118)
  %120 = call i32 @udelay(i32 40)
  %121 = load i32, i32* @AUREON_SPI_CLK, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %124, i32 %125)
  %127 = call i32 @udelay(i32 40)
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %8, align 4
  br label %89

131:                                              ; preds = %89
  %132 = load i32, i32* @AUREON_SPI_CLK, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %136, i32 %137)
  %139 = call i32 @udelay(i32 40)
  %140 = load i32, i32* @AUREON_SPI_CLK, align 4
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %143, i32 %144)
  %146 = call i32 @udelay(i32 40)
  %147 = load i32, i32* @AUREON_SPI_CLK, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %7, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %7, align 4
  %151 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %151, i32 %152)
  %154 = call i32 @udelay(i32 40)
  br label %155

155:                                              ; preds = %131
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %77

158:                                              ; preds = %77
  %159 = load i32, i32* @AUREON_SPI_CLK, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %7, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %163, i32 %164)
  %166 = call i32 @udelay(i32 40)
  %167 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %7, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %7, align 4
  %171 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %171, i32 %172)
  %174 = call i32 @udelay(i32 40)
  %175 = load i32, i32* @AUREON_SPI_CLK, align 4
  %176 = load i32, i32* %7, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %7, align 4
  %178 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %178, i32 %179)
  %181 = call i32 @udelay(i32 50)
  %182 = load i32, i32* @AUREON_SPI_MOSI, align 4
  %183 = load i32, i32* %7, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %7, align 4
  %185 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %185, i32 %186)
  %188 = call i32 @udelay(i32 100)
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
