; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_mbox2_setup_48_24_magic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_mbox2_setup_48_24_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @mbox2_setup_48_24_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbox2_setup_48_24_magic(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca [12 x i32], align 16
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %5 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 128, i32* %5, align 4
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 187, i32* %6, align 4
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 0, i32* %7, align 4
  %8 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %9, i32 0)
  %11 = bitcast [12 x i32]* %4 to i32**
  %12 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %8, i32 %10, i32 1, i32 34, i32 256, i32 133, i32** %11, i32 3)
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %15 = call i32 @usb_sndctrlpipe(%struct.usb_device* %14, i32 0)
  %16 = bitcast [3 x i32]* %3 to i32**
  %17 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %13, i32 %15, i32 129, i32 162, i32 256, i32 133, i32** %16, i32 3)
  %18 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %20 = call i32 @usb_sndctrlpipe(%struct.usb_device* %19, i32 0)
  %21 = bitcast [3 x i32]* %3 to i32**
  %22 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %18, i32 %20, i32 129, i32 162, i32 256, i32 134, i32** %21, i32 3)
  %23 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %25 = call i32 @usb_sndctrlpipe(%struct.usb_device* %24, i32 0)
  %26 = bitcast [3 x i32]* %3 to i32**
  %27 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %23, i32 %25, i32 129, i32 162, i32 256, i32 3, i32** %26, i32 3)
  ret void
}

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32**, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
