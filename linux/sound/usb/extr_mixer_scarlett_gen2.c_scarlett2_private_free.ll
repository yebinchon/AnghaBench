; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_private_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_private_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_mixer_interface*)* @scarlett2_private_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scarlett2_private_free(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca %struct.usb_mixer_interface*, align 8
  %3 = alloca %struct.scarlett2_mixer_data*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %2, align 8
  %4 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %5 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %4, i32 0, i32 0
  %6 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %5, align 8
  store %struct.scarlett2_mixer_data* %6, %struct.scarlett2_mixer_data** %3, align 8
  %7 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %3, align 8
  %8 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %7, i32 0, i32 0
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %3, align 8
  %11 = call i32 @kfree(%struct.scarlett2_mixer_data* %10)
  %12 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %13 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %12, i32 0, i32 0
  store %struct.scarlett2_mixer_data* null, %struct.scarlett2_mixer_data** %13, align 8
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.scarlett2_mixer_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
