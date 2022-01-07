; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_pin_cfg_show.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_pin_cfg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.widget_attribute = type { i32 }

@AC_WID_PIN = common dso_local global i64 0, align 8
@AC_VERB_GET_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, i32, %struct.widget_attribute*, i8*)* @pin_cfg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_cfg_show(%struct.hdac_device* %0, i32 %1, %struct.widget_attribute* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.widget_attribute*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.widget_attribute* %2, %struct.widget_attribute** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @get_wcaps(%struct.hdac_device* %11, i32 %12)
  %14 = call i64 @get_wcaps_type(i32 %13)
  %15 = load i64, i64* @AC_WID_PIN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %29

18:                                               ; preds = %4
  %19 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AC_VERB_GET_CONFIG_DEFAULT, align 4
  %22 = call i64 @snd_hdac_read(%struct.hdac_device* %19, i32 %20, i32 %21, i32 0, i32* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %24, %17
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hdac_device*, i32) #1

declare dso_local i64 @snd_hdac_read(%struct.hdac_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
