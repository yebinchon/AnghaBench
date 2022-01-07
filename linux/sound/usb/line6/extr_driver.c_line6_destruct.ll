; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_driver.c_line6_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.usb_line6* }
%struct.usb_line6 = type { i32*, i32, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_card*)* @line6_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_destruct(%struct.snd_card* %0) #0 {
  %2 = alloca %struct.snd_card*, align 8
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %2, align 8
  %5 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %6 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %5, i32 0, i32 0
  %7 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  store %struct.usb_line6* %7, %struct.usb_line6** %3, align 8
  %8 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %9 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %8, i32 0, i32 3
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %4, align 8
  %11 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %12 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kfree(i32 %13)
  %15 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %16 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kfree(i32 %17)
  %19 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %20 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @usb_free_urb(i32* %21)
  %23 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %24 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = call i32 @usb_put_dev(%struct.usb_device* %25)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
