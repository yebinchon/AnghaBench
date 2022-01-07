; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_proc.c_proc_audio_usbid_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_proc.c_proc_audio_usbid_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32, i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%04x:%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_audio_usbid_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_audio_usbid_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_usb_audio*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %6 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %7 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %6, i32 0, i32 0
  %8 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  store %struct.snd_usb_audio* %8, %struct.snd_usb_audio** %5, align 8
  %9 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %10 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %15 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %16 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @USB_ID_VENDOR(i32 %17)
  %19 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %20 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @USB_ID_PRODUCT(i32 %21)
  %23 = call i32 @snd_iprintf(%struct.snd_info_buffer* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32) #1

declare dso_local i32 @USB_ID_VENDOR(i32) #1

declare dso_local i32 @USB_ID_PRODUCT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
