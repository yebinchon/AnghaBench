; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_phase.c_phase28_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_phase.c_phase28_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, %struct.snd_akm4xxx*, %struct.phase28_spec* }
%struct.snd_akm4xxx = type { i32 }
%struct.phase28_spec = type { i8**, i8** }

@phase28_init.wm_inits_phase28 = internal constant [61 x i16] [i16 27, i16 68, i16 28, i16 11, i16 29, i16 9, i16 24, i16 0, i16 22, i16 290, i16 23, i16 34, i16 0, i16 0, i16 1, i16 0, i16 2, i16 0, i16 3, i16 0, i16 4, i16 0, i16 5, i16 0, i16 6, i16 0, i16 7, i16 0, i16 8, i16 256, i16 9, i16 255, i16 10, i16 255, i16 11, i16 255, i16 12, i16 255, i16 13, i16 255, i16 14, i16 255, i16 15, i16 255, i16 16, i16 255, i16 17, i16 511, i16 18, i16 0, i16 19, i16 144, i16 20, i16 0, i16 21, i16 0, i16 25, i16 0, i16 26, i16 0, i16 -1], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PHASE28_WM_RESET = common dso_local global i32 0, align 4
@PHASE28_WM_CS = common dso_local global i32 0, align 4
@PHASE28_HP_SEL = common dso_local global i32 0, align 4
@WM_VOL_MUTE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @phase28_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phase28_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_akm4xxx*, align 8
  %6 = alloca %struct.phase28_spec*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 0
  store i32 8, i32* %10, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 1
  store i32 2, i32* %12, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 16, i32 %13)
  %15 = bitcast i8* %14 to %struct.phase28_spec*
  store %struct.phase28_spec* %15, %struct.phase28_spec** %6, align 8
  %16 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %17 = icmp ne %struct.phase28_spec* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %143

21:                                               ; preds = %1
  %22 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 4
  store %struct.phase28_spec* %22, %struct.phase28_spec** %24, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 4, i32 %25)
  %27 = bitcast i8* %26 to %struct.snd_akm4xxx*
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 3
  store %struct.snd_akm4xxx* %27, %struct.snd_akm4xxx** %29, align 8
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %31 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %30, i32 0, i32 3
  %32 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %31, align 8
  store %struct.snd_akm4xxx* %32, %struct.snd_akm4xxx** %5, align 8
  %33 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %34 = icmp ne %struct.snd_akm4xxx* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %143

38:                                               ; preds = %21
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %42 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %41, i32 6291455)
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %43)
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = load i32, i32* @PHASE28_WM_RESET, align 4
  %47 = load i32, i32* @PHASE28_WM_CS, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PHASE28_HP_SEL, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %45, i32 %51)
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %54 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @PHASE28_WM_RESET, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %59, i32 %60)
  %62 = call i32 @udelay(i32 1)
  %63 = load i32, i32* @PHASE28_WM_CS, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %66, i32 %67)
  %69 = call i32 @udelay(i32 1)
  %70 = load i32, i32* @PHASE28_WM_RESET, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %73, i32 %74)
  %76 = call i32 @udelay(i32 1)
  store i16* getelementptr inbounds ([61 x i16], [61 x i16]* @phase28_init.wm_inits_phase28, i64 0, i64 0), i16** %7, align 8
  br label %77

77:                                               ; preds = %91, %38
  %78 = load i16*, i16** %7, align 8
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp ne i32 %80, 65535
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %84 = load i16*, i16** %7, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 0
  %86 = load i16, i16* %85, align 2
  %87 = load i16*, i16** %7, align 8
  %88 = getelementptr inbounds i16, i16* %87, i64 1
  %89 = load i16, i16* %88, align 2
  %90 = call i32 @wm_put(%struct.snd_ice1712* %83, i16 zeroext %86, i16 zeroext %89)
  br label %91

91:                                               ; preds = %82
  %92 = load i16*, i16** %7, align 8
  %93 = getelementptr inbounds i16, i16* %92, i64 2
  store i16* %93, i16** %7, align 8
  br label %77

94:                                               ; preds = %77
  %95 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %96 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %95)
  %97 = load i8*, i8** @WM_VOL_MUTE, align 8
  %98 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %99 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* %97, i8** %101, align 8
  %102 = load i8*, i8** @WM_VOL_MUTE, align 8
  %103 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %104 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  store i8* %102, i8** %106, align 8
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %139, %94
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %110 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %107
  %114 = load i8*, i8** @WM_VOL_MUTE, align 8
  %115 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %116 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %114, i8** %120, align 8
  %121 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %124 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %131 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = srem i32 %133, 2
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @wm_set_vol(%struct.snd_ice1712* %121, i32 %122, i8* %129, i8* %137)
  br label %139

139:                                              ; preds = %113
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %107

142:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %35, %18
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @wm_set_vol(%struct.snd_ice1712*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
