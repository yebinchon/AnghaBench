; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mixer_interrupt_button_change.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mixer_interrupt_button_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.TYPE_5__*, %struct.scarlett2_mixer_data* }
%struct.TYPE_5__ = type { i32 }
%struct.scarlett2_mixer_data = type { i32, %struct.TYPE_6__**, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_mixer_interface*)* @scarlett2_mixer_interrupt_button_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scarlett2_mixer_interrupt_button_change(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca %struct.usb_mixer_interface*, align 8
  %3 = alloca %struct.scarlett2_mixer_data*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %2, align 8
  %5 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %6 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %5, i32 0, i32 1
  %7 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %6, align 8
  store %struct.scarlett2_mixer_data* %7, %struct.scarlett2_mixer_data** %3, align 8
  %8 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %3, align 8
  %9 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %3, align 8
  %13 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %2, align 8
  %20 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %25 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %3, align 8
  %26 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @snd_ctl_notify(i32 %23, i32 %24, i32* %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %10

37:                                               ; preds = %10
  ret void
}

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
