; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/bcd2000/extr_bcd2000.c_bcd2000_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/bcd2000/extr_bcd2000.c_bcd2000_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.bcd2000 = type { i32, i32 }

@devices_mutex = common dso_local global i32 0, align 4
@devices_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @bcd2000_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcd2000_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.bcd2000*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.bcd2000* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.bcd2000* %5, %struct.bcd2000** %3, align 8
  %6 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %7 = icmp ne %struct.bcd2000* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  %10 = call i32 @mutex_lock(i32* @devices_mutex)
  %11 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %12 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snd_card_disconnect(i32 %13)
  %15 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %17 = call i32 @bcd2000_free_usb_related_resources(%struct.bcd2000* %15, %struct.usb_interface* %16)
  %18 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %19 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @devices_used, align 4
  %22 = call i32 @clear_bit(i32 %20, i32 %21)
  %23 = load %struct.bcd2000*, %struct.bcd2000** %3, align 8
  %24 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_card_free_when_closed(i32 %25)
  %27 = call i32 @mutex_unlock(i32* @devices_mutex)
  br label %28

28:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.bcd2000* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_card_disconnect(i32) #1

declare dso_local i32 @bcd2000_free_usb_related_resources(%struct.bcd2000*, %struct.usb_interface*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @snd_card_free_when_closed(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
