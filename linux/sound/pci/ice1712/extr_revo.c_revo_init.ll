; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_revo.c_revo_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_revo.c_revo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, %struct.TYPE_4__, %struct.snd_akm4xxx*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_akm4xxx = type { i32 }
%struct.TYPE_3__ = type { i32 }

@revo_i2s_mclk_changed = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@akm_revo_front = common dso_local global i32 0, align 4
@akm_revo_front_priv = common dso_local global i32 0, align 4
@akm_revo_surround = common dso_local global i32 0, align 4
@akm_revo_surround_priv = common dso_local global i32 0, align 4
@VT1724_REVO_MUTE = common dso_local global i32 0, align 4
@akm_revo51 = common dso_local global i32 0, align 4
@akm_revo51_priv = common dso_local global i32 0, align 4
@akm_revo51_adc = common dso_local global i32 0, align 4
@akm_revo51_adc_priv = common dso_local global i32 0, align 4
@ptc_revo51_volume = common dso_local global i32 0, align 4
@akm_ap192 = common dso_local global i32 0, align 4
@akm_ap192_priv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @revo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revo_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.snd_akm4xxx*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %29 [
    i32 128, label %10
    i32 129, label %19
    i32 130, label %24
  ]

10:                                               ; preds = %1
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  store i32 8, i32* %12, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = load i32, i32* @revo_i2s_mclk_changed, align 4
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %17 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %21 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %20, i32 0, i32 0
  store i32 8, i32* %21, align 8
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 1
  store i32 2, i32* %23, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %26 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %25, i32 0, i32 0
  store i32 2, i32* %26, align 8
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %28 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %27, i32 0, i32 1
  store i32 2, i32* %28, align 4
  br label %33

29:                                               ; preds = %1
  %30 = call i32 (...) @snd_BUG()
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %126

33:                                               ; preds = %24, %19, %10
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.snd_akm4xxx* @kcalloc(i32 2, i32 4, i32 %34)
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %37 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %36, i32 0, i32 4
  store %struct.snd_akm4xxx* %35, %struct.snd_akm4xxx** %37, align 8
  store %struct.snd_akm4xxx* %35, %struct.snd_akm4xxx** %4, align 8
  %38 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %39 = icmp ne %struct.snd_akm4xxx* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %126

43:                                               ; preds = %33
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %45 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %125 [
    i32 128, label %48
    i32 129, label %72
    i32 130, label %103
  ]

48:                                               ; preds = %43
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %50 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %49, i32 0, i32 2
  store i32 2, i32* %50, align 8
  %51 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %53 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %51, i32* @akm_revo_front, i32* @akm_revo_front_priv, %struct.snd_ice1712* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %126

58:                                               ; preds = %48
  %59 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %60 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %59, i64 1
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %62 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %60, i32* @akm_revo_surround, i32* @akm_revo_surround_priv, %struct.snd_ice1712* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %126

67:                                               ; preds = %58
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %69 = load i32, i32* @VT1724_REVO_MUTE, align 4
  %70 = load i32, i32* @VT1724_REVO_MUTE, align 4
  %71 = call i32 @snd_ice1712_gpio_write_bits(%struct.snd_ice1712* %68, i32 %69, i32 %70)
  br label %125

72:                                               ; preds = %43
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %74 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %73, i32 0, i32 2
  store i32 2, i32* %74, align 8
  %75 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %76 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %77 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %75, i32* @akm_revo51, i32* @akm_revo51_priv, %struct.snd_ice1712* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %126

82:                                               ; preds = %72
  %83 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %84 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %83, i64 1
  %85 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %86 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %84, i32* @akm_revo51_adc, i32* @akm_revo51_adc_priv, %struct.snd_ice1712* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %126

91:                                               ; preds = %82
  %92 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %93 = call i32 @revo51_i2c_init(%struct.snd_ice1712* %92, i32* @ptc_revo51_volume)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %126

98:                                               ; preds = %91
  %99 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %100 = load i32, i32* @VT1724_REVO_MUTE, align 4
  %101 = load i32, i32* @VT1724_REVO_MUTE, align 4
  %102 = call i32 @snd_ice1712_gpio_write_bits(%struct.snd_ice1712* %99, i32 %100, i32 %101)
  br label %125

103:                                              ; preds = %43
  %104 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %105 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  %106 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %107 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %108 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %106, i32* @akm_ap192, i32* @akm_ap192_priv, %struct.snd_ice1712* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %126

113:                                              ; preds = %103
  %114 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %115 = call i32 @ap192_ak4114_init(%struct.snd_ice1712* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %126

120:                                              ; preds = %113
  %121 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %122 = load i32, i32* @VT1724_REVO_MUTE, align 4
  %123 = load i32, i32* @VT1724_REVO_MUTE, align 4
  %124 = call i32 @snd_ice1712_gpio_write_bits(%struct.snd_ice1712* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %43, %120, %98, %67
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %118, %111, %96, %89, %80, %65, %56, %40, %29
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @snd_BUG(...) #1

declare dso_local %struct.snd_akm4xxx* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx*, i32*, i32*, %struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_write_bits(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @revo51_i2c_init(%struct.snd_ice1712*, i32*) #1

declare dso_local i32 @ap192_ak4114_init(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
