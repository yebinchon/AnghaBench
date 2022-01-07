; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__, %struct.aureon_spec* }
%struct.TYPE_2__ = type { i64 }
%struct.aureon_spec = type { i32 }

@aureon_reset.wm_inits_aureon = internal constant [61 x i16] [i16 27, i16 68, i16 28, i16 11, i16 29, i16 9, i16 24, i16 0, i16 22, i16 290, i16 23, i16 34, i16 0, i16 0, i16 1, i16 0, i16 2, i16 0, i16 3, i16 0, i16 4, i16 0, i16 5, i16 0, i16 6, i16 0, i16 7, i16 0, i16 8, i16 256, i16 9, i16 255, i16 10, i16 255, i16 11, i16 255, i16 12, i16 255, i16 13, i16 255, i16 14, i16 255, i16 15, i16 255, i16 16, i16 255, i16 17, i16 511, i16 18, i16 0, i16 19, i16 144, i16 20, i16 0, i16 21, i16 0, i16 25, i16 0, i16 26, i16 0, i16 -1], align 16
@aureon_reset.wm_inits_prodigy = internal constant [61 x i16] [i16 27, i16 0, i16 28, i16 9, i16 29, i16 9, i16 24, i16 0, i16 22, i16 34, i16 23, i16 6, i16 0, i16 0, i16 1, i16 0, i16 2, i16 0, i16 3, i16 0, i16 4, i16 0, i16 5, i16 0, i16 6, i16 0, i16 7, i16 0, i16 8, i16 256, i16 9, i16 127, i16 10, i16 127, i16 11, i16 127, i16 12, i16 127, i16 13, i16 127, i16 14, i16 127, i16 15, i16 127, i16 16, i16 127, i16 17, i16 511, i16 18, i16 0, i16 19, i16 144, i16 20, i16 0, i16 21, i16 0, i16 25, i16 0, i16 26, i16 0, i16 -1], align 16
@aureon_reset.cs_inits = internal constant [5 x i16] [i16 1089, i16 384, i16 513, i16 1541, i16 -1], align 2
@AUREON_WM_RESET = common dso_local global i32 0, align 4
@AUREON_WM_CS = common dso_local global i32 0, align 4
@AUREON_CS8415_CS = common dso_local global i32 0, align 4
@AUREON_HP_SEL = common dso_local global i32 0, align 4
@VT1724_SUBDEVICE_PRODIGY71 = common dso_local global i64 0, align 8
@VT1724_SUBDEVICE_PRODIGY71LT = common dso_local global i64 0, align 8
@VT1724_SUBDEVICE_PRODIGY71XT = common dso_local global i64 0, align 8
@PCA9554_DIR = common dso_local global i32 0, align 4
@PCA9554_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @aureon_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aureon_reset(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aureon_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 1
  %10 = load %struct.aureon_spec*, %struct.aureon_spec** %9, align 8
  store %struct.aureon_spec* %10, %struct.aureon_spec** %7, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = call i32 @aureon_ac97_init(%struct.snd_ice1712* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %144

17:                                               ; preds = %1
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %19 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %18, i32 6291455)
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %21 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %20)
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = load i32, i32* @AUREON_WM_RESET, align 4
  %24 = load i32, i32* @AUREON_WM_CS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AUREON_CS8415_CS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AUREON_HP_SEL, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %22, i32 %30)
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %33 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @AUREON_WM_RESET, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %38, i32 %39)
  %41 = call i32 @udelay(i32 1)
  %42 = load i32, i32* @AUREON_WM_CS, align 4
  %43 = load i32, i32* @AUREON_CS8415_CS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %47, i32 %48)
  %50 = call i32 @udelay(i32 1)
  %51 = load i32, i32* @AUREON_WM_RESET, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %54, i32 %55)
  %57 = call i32 @udelay(i32 1)
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %59 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %17
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %66 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71LT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %73 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71XT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %64, %17
  store i16* getelementptr inbounds ([61 x i16], [61 x i16]* @aureon_reset.wm_inits_prodigy, i64 0, i64 0), i16** %5, align 8
  br label %80

79:                                               ; preds = %71
  store i16* getelementptr inbounds ([61 x i16], [61 x i16]* @aureon_reset.wm_inits_aureon, i64 0, i64 0), i16** %5, align 8
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %95, %80
  %82 = load i16*, i16** %5, align 8
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp ne i32 %84, 65535
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %88 = load i16*, i16** %5, align 8
  %89 = getelementptr inbounds i16, i16* %88, i64 0
  %90 = load i16, i16* %89, align 2
  %91 = load i16*, i16** %5, align 8
  %92 = getelementptr inbounds i16, i16* %91, i64 1
  %93 = load i16, i16* %92, align 2
  %94 = call i32 @wm_put(%struct.snd_ice1712* %87, i16 zeroext %90, i16 zeroext %93)
  br label %95

95:                                               ; preds = %86
  %96 = load i16*, i16** %5, align 8
  %97 = getelementptr inbounds i16, i16* %96, i64 2
  store i16* %97, i16** %5, align 8
  br label %81

98:                                               ; preds = %81
  %99 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %100 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71LT, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %98
  %106 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %107 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71XT, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %105
  store i16* getelementptr inbounds ([5 x i16], [5 x i16]* @aureon_reset.cs_inits, i64 0, i64 0), i16** %5, align 8
  br label %113

113:                                              ; preds = %127, %112
  %114 = load i16*, i16** %5, align 8
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  %117 = icmp ne i32 %116, 65535
  br i1 %117, label %118, label %130

118:                                              ; preds = %113
  %119 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %120 = load i32, i32* @AUREON_CS8415_CS, align 4
  %121 = load i16*, i16** %5, align 8
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = or i32 %123, 2097152
  %125 = trunc i32 %124 to i16
  %126 = call i32 @aureon_spi_write(%struct.snd_ice1712* %119, i32 %120, i16 zeroext %125, i32 24)
  br label %127

127:                                              ; preds = %118
  %128 = load i16*, i16** %5, align 8
  %129 = getelementptr inbounds i16, i16* %128, i32 1
  store i16* %129, i16** %5, align 8
  br label %113

130:                                              ; preds = %113
  %131 = load %struct.aureon_spec*, %struct.aureon_spec** %7, align 8
  %132 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %131, i32 0, i32 0
  store i32 1, i32* %132, align 4
  %133 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %134 = call i32 @aureon_set_headphone_amp(%struct.snd_ice1712* %133, i32 1)
  br label %135

135:                                              ; preds = %130, %105, %98
  %136 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %137 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %136)
  %138 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %139 = load i32, i32* @PCA9554_DIR, align 4
  %140 = call i32 @aureon_pca9554_write(%struct.snd_ice1712* %138, i32 %139, i32 0)
  %141 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %142 = load i32, i32* @PCA9554_OUT, align 4
  %143 = call i32 @aureon_pca9554_write(%struct.snd_ice1712* %141, i32 %142, i32 0)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %135, %15
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @aureon_ac97_init(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @aureon_spi_write(%struct.snd_ice1712*, i32, i16 zeroext, i32) #1

declare dso_local i32 @aureon_set_headphone_amp(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @aureon_pca9554_write(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
