; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_config_save.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_config_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }

@SCARLETT2_USB_CONFIG_SAVE = common dso_local global i32 0, align 4
@SCARLETT2_USB_DATA_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_mixer_interface*)* @scarlett2_config_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scarlett2_config_save(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca %struct.usb_mixer_interface*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %2, align 8
  %4 = load i32, i32* @SCARLETT2_USB_CONFIG_SAVE, align 4
  %5 = call i32 @cpu_to_le32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %7 = load i32, i32* @SCARLETT2_USB_DATA_CMD, align 4
  %8 = call i32 @scarlett2_usb(%struct.usb_mixer_interface* %6, i32 %7, i32* %3, i32 4, i32* null, i32 0)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @scarlett2_usb(%struct.usb_mixer_interface*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
