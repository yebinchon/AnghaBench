; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_find_mute_led_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_find_mute_led_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, %struct.sigmatel_spec* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sigmatel_spec = type { i32, i32, i32 }
%struct.dmi_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"gpio_led\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"gpio_led_polarity\00", align 1
@DMI_DEV_TYPE_OEM_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"HP_Mute_LED_%u_%x\00", align 1
@AC_PAR_GPIO_CAP = common dso_local global i32 0, align 4
@AC_GPIO_IO_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"HP_Mute_LED_%u\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"HP_Mute_LED_P_G\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @find_mute_led_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_mute_led_cfg(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigmatel_spec*, align 8
  %7 = alloca %struct.dmi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 1
  %11 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %10, align 8
  store %struct.sigmatel_spec* %11, %struct.sigmatel_spec** %6, align 8
  store %struct.dmi_device* null, %struct.dmi_device** %7, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %14 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %13, i32 0, i32 0
  %15 = call i64 @get_int_hint(%struct.hda_codec* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %20 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %19, i32 0, i32 1
  %21 = call i64 @get_int_hint(%struct.hda_codec* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %20)
  store i32 1, i32* %3, align 4
  br label %119

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %98, %22
  %24 = load i32, i32* @DMI_DEV_TYPE_OEM_STRING, align 4
  %25 = load %struct.dmi_device*, %struct.dmi_device** %7, align 8
  %26 = call %struct.dmi_device* @dmi_find_device(i32 %24, i32* null, %struct.dmi_device* %25)
  store %struct.dmi_device* %26, %struct.dmi_device** %7, align 8
  %27 = icmp ne %struct.dmi_device* %26, null
  br i1 %27, label %28, label %99

28:                                               ; preds = %23
  %29 = load %struct.dmi_device*, %struct.dmi_device** %7, align 8
  %30 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %33 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %32, i32 0, i32 1
  %34 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %35 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %34, i32 0, i32 0
  %36 = call i32 (i32, i8*, i32*, ...) @sscanf(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %33, i32* %35)
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %68

38:                                               ; preds = %28
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AC_PAR_GPIO_CAP, align 4
  %45 = call i32 @snd_hda_param_read(%struct.hda_codec* %39, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @AC_GPIO_IO_COUNT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %50 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %38
  %55 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %56 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %60 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %67

61:                                               ; preds = %38
  %62 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %63 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %66 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %54
  store i32 1, i32* %3, align 4
  br label %119

68:                                               ; preds = %28
  %69 = load %struct.dmi_device*, %struct.dmi_device** %7, align 8
  %70 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %73 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %72, i32 0, i32 1
  %74 = call i32 (i32, i8*, i32*, ...) @sscanf(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %73)
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %78 = call i32 @set_hp_led_gpio(%struct.hda_codec* %77)
  store i32 1, i32* %3, align 4
  br label %119

79:                                               ; preds = %68
  %80 = load %struct.dmi_device*, %struct.dmi_device** %7, align 8
  %81 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @strstr(i32 %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %87 = call i32 @set_hp_led_gpio(%struct.hda_codec* %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %93 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %97

94:                                               ; preds = %85
  %95 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %96 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %90
  store i32 1, i32* %3, align 4
  br label %119

98:                                               ; preds = %79
  br label %23

99:                                               ; preds = %23
  %100 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %101 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @hp_blike_system(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %118

112:                                              ; preds = %109, %106
  %113 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %114 = call i32 @set_hp_led_gpio(%struct.hda_codec* %113)
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %117 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  store i32 1, i32* %3, align 4
  br label %119

118:                                              ; preds = %109, %99
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %112, %97, %76, %67, %17
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @get_int_hint(%struct.hda_codec*, i8*, i32*) #1

declare dso_local %struct.dmi_device* @dmi_find_device(i32, i32*, %struct.dmi_device*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, ...) #1

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @set_hp_led_gpio(%struct.hda_codec*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @hp_blike_system(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
