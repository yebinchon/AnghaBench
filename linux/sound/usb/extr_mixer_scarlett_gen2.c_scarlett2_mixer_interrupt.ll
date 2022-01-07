; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mixer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mixer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i64, %struct.usb_mixer_interface* }
%struct.usb_mixer_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCARLETT2_USB_INTERRUPT_VOL_CHANGE = common dso_local global i32 0, align 4
@SCARLETT2_USB_INTERRUPT_BUTTON_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"scarlett mixer interrupt length %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @scarlett2_mixer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scarlett2_mixer_interrupt(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 4
  %9 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %8, align 8
  store %struct.usb_mixer_interface* %9, %struct.usb_mixer_interface** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %52

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SCARLETT2_USB_INTERRUPT_VOL_CHANGE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %35 = call i32 @scarlett2_mixer_interrupt_vol_change(%struct.usb_mixer_interface* %34)
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SCARLETT2_USB_INTERRUPT_BUTTON_CHANGE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %43 = call i32 @scarlett2_mixer_interrupt_button_change(%struct.usb_mixer_interface* %42)
  br label %44

44:                                               ; preds = %41, %36
  br label %51

45:                                               ; preds = %19
  %46 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %47 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @usb_audio_err(%struct.TYPE_2__* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %44
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ECONNRESET, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ESHUTDOWN, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %69 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.urb*, %struct.urb** %2, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.urb*, %struct.urb** %2, align 8
  %76 = load i32, i32* @GFP_ATOMIC, align 4
  %77 = call i32 @usb_submit_urb(%struct.urb* %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %62, %57, %52
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @scarlett2_mixer_interrupt_vol_change(%struct.usb_mixer_interface*) #1

declare dso_local i32 @scarlett2_mixer_interrupt_button_change(%struct.usb_mixer_interface*) #1

declare dso_local i32 @usb_audio_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
