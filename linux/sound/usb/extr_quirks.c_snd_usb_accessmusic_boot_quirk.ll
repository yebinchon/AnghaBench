; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_accessmusic_boot_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_accessmusic_boot_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@snd_usb_accessmusic_boot_quirk.seq = internal constant [4 x i32] [i32 78, i32 115, i32 82, i32 1], align 16
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @snd_usb_accessmusic_boot_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_accessmusic_boot_quirk(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = call i32 @usb_sndintpipe(%struct.usb_device* %8, i32 5)
  %10 = call i64 @snd_usb_pipe_sanity_check(%struct.usb_device* %7, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @snd_usb_accessmusic_boot_quirk.seq, i64 0, i64 0))
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmemdup(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @snd_usb_accessmusic_boot_quirk.seq, i64 0, i64 0), i32 %16, i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %15
  %25 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = call i32 @usb_sndintpipe(%struct.usb_device* %26, i32 5)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @snd_usb_accessmusic_boot_quirk.seq, i64 0, i64 0))
  %30 = call i32 @usb_interrupt_msg(%struct.usb_device* %25, i32 %27, i8* %28, i32 %29, i32* %5, i32 1000)
  store i32 %30, i32* %4, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @kfree(i8* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %21, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @snd_usb_pipe_sanity_check(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i8* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @usb_interrupt_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
