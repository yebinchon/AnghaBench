; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_chip.c_usb6fire_chip_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_chip.c_usb6fire_chip_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.sfire_chip = type { i64, i32, i32 }

@register_mutex = common dso_local global i32 0, align 4
@devices = common dso_local global i32** null, align 8
@chips = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb6fire_chip_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_chip_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.sfire_chip*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.sfire_chip* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.sfire_chip* %5, %struct.sfire_chip** %3, align 8
  %6 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %7 = icmp ne %struct.sfire_chip* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %10 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %14 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %8
  %18 = call i32 @mutex_lock(i32* @register_mutex)
  %19 = load i32**, i32*** @devices, align 8
  %20 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %21 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  store i32* null, i32** %23, align 8
  %24 = load i32**, i32*** @chips, align 8
  %25 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %26 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32*, i32** %24, i64 %27
  store i32* null, i32** %28, align 8
  %29 = call i32 @mutex_unlock(i32* @register_mutex)
  %30 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %31 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %33 = call i32 @usb6fire_chip_abort(%struct.sfire_chip* %32)
  %34 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %35 = call i32 @usb6fire_chip_destroy(%struct.sfire_chip* %34)
  br label %36

36:                                               ; preds = %17, %8
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

declare dso_local %struct.sfire_chip* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb6fire_chip_abort(%struct.sfire_chip*) #1

declare dso_local i32 @usb6fire_chip_destroy(%struct.sfire_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
