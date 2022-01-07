; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_media.c_snd_media_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_media.c_snd_media_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { %struct.media_device* }
%struct.media_device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Couldn't create media mixer entities. Error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Couldn't register media device. Error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_media_device_create(%struct.snd_usb_audio* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_audio*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.media_device*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %12 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %11, i32 0, i32 0
  %13 = load %struct.media_device*, %struct.media_device** %12, align 8
  %14 = icmp ne %struct.media_device* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %17 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %16, i32 0, i32 0
  %18 = load %struct.media_device*, %struct.media_device** %17, align 8
  store %struct.media_device* %18, %struct.media_device** %6, align 8
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %21 = load i32, i32* @KBUILD_MODNAME, align 4
  %22 = load i32, i32* @THIS_MODULE, align 4
  %23 = call %struct.media_device* @media_device_usb_allocate(%struct.usb_device* %20, i32 %21, i32 %22)
  store %struct.media_device* %23, %struct.media_device** %6, align 8
  %24 = load %struct.media_device*, %struct.media_device** %6, align 8
  %25 = call i64 @IS_ERR(%struct.media_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %19
  %31 = load %struct.media_device*, %struct.media_device** %6, align 8
  %32 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %33 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %32, i32 0, i32 0
  store %struct.media_device* %31, %struct.media_device** %33, align 8
  br label %34

34:                                               ; preds = %30, %15
  %35 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %36 = call i32 @snd_media_mixer_init(%struct.snd_usb_audio* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 0
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.media_device*, %struct.media_device** %6, align 8
  %46 = getelementptr inbounds %struct.media_device, %struct.media_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @media_devnode_is_registered(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %57

54:                                               ; preds = %50
  %55 = load %struct.media_device*, %struct.media_device** %6, align 8
  %56 = call i32 @media_device_register(%struct.media_device* %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %62 = call i32 @snd_media_mixer_delete(%struct.snd_usb_audio* %61)
  %63 = load %struct.media_device*, %struct.media_device** %6, align 8
  %64 = load i32, i32* @KBUILD_MODNAME, align 4
  %65 = load i32, i32* @THIS_MODULE, align 4
  %66 = call i32 @media_device_delete(%struct.media_device* %63, i32 %64, i32 %65)
  %67 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %68 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %67, i32 0, i32 0
  store %struct.media_device* null, %struct.media_device** %68, align 8
  %69 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %44
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %60, %27
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.media_device* @media_device_usb_allocate(%struct.usb_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.media_device*) #1

declare dso_local i32 @snd_media_mixer_init(%struct.snd_usb_audio*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @media_devnode_is_registered(i32) #1

declare dso_local i32 @media_device_register(%struct.media_device*) #1

declare dso_local i32 @snd_media_mixer_delete(%struct.snd_usb_audio*) #1

declare dso_local i32 @media_device_delete(%struct.media_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
