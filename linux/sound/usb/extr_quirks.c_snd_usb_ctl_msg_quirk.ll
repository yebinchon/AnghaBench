; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_ctl_msg_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_ctl_msg_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.snd_usb_audio = type { i64 }

@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_ctl_msg_quirk(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.snd_usb_audio*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = call %struct.snd_usb_audio* @dev_get_drvdata(i32* %19)
  store %struct.snd_usb_audio* %20, %struct.snd_usb_audio** %17, align 8
  %21 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %17, align 8
  %22 = icmp ne %struct.snd_usb_audio* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  br label %92

24:                                               ; preds = %8
  %25 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %17, align 8
  %26 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @USB_ID_VENDOR(i64 %27)
  %29 = icmp eq i32 %28, 9146
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @USB_TYPE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @USB_TYPE_CLASS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @msleep(i32 20)
  br label %38

38:                                               ; preds = %36, %30, %24
  %39 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %17, align 8
  %40 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @USB_ID_VENDOR(i64 %41)
  %43 = icmp eq i32 %42, 1604
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @USB_TYPE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @USB_TYPE_CLASS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @msleep(i32 20)
  br label %52

52:                                               ; preds = %50, %44, %38
  %53 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %17, align 8
  %54 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @is_itf_usb_dsd_dac(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @USB_TYPE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @USB_TYPE_CLASS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 @msleep(i32 20)
  br label %66

66:                                               ; preds = %64, %58, %52
  %67 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %17, align 8
  %68 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @USB_ID(i32 5766, i32 221)
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %84, label %72

72:                                               ; preds = %66
  %73 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %17, align 8
  %74 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @USB_ID(i32 1133, i32 2630)
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %17, align 8
  %80 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @USB_ID(i32 2830, i32 841)
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78, %72, %66
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @USB_TYPE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @USB_TYPE_CLASS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %92

92:                                               ; preds = %23, %90, %84, %78
  ret void
}

declare dso_local %struct.snd_usb_audio* @dev_get_drvdata(i32*) #1

declare dso_local i32 @USB_ID_VENDOR(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @is_itf_usb_dsd_dac(i64) #1

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
