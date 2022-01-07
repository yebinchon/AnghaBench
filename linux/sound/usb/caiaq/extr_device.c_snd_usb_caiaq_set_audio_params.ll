; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_device.c_snd_usb_caiaq_set_audio_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_device.c_snd_usb_caiaq_set_audio_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32, i32, i32 }
%struct.device = type { i32 }

@SAMPLERATE_44100 = common dso_local global i8 0, align 1
@SAMPLERATE_48000 = common dso_local global i8 0, align 1
@SAMPLERATE_88200 = common dso_local global i8 0, align 1
@SAMPLERATE_96000 = common dso_local global i8 0, align 1
@SAMPLERATE_192000 = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@DEPTH_16 = common dso_local global i8 0, align 1
@DEPTH_24 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [46 x i8] c"setting audio params: %d Hz, %d bits, %d bpp\0A\00", align 1
@EP1_CMD_AUDIO_PARAMS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unable to set the device's audio params\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_caiaq_set_audio_params(%struct.snd_usb_caiaqdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_caiaqdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8], align 1
  %12 = alloca %struct.device*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %14 = call %struct.device* @caiaqdev_to_dev(%struct.snd_usb_caiaqdev* %13)
  store %struct.device* %14, %struct.device** %12, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %31 [
    i32 44100, label %16
    i32 48000, label %19
    i32 88200, label %22
    i32 96000, label %25
    i32 192000, label %28
  ]

16:                                               ; preds = %4
  %17 = load i8, i8* @SAMPLERATE_44100, align 1
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  br label %34

19:                                               ; preds = %4
  %20 = load i8, i8* @SAMPLERATE_48000, align 1
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %20, i8* %21, align 1
  br label %34

22:                                               ; preds = %4
  %23 = load i8, i8* @SAMPLERATE_88200, align 1
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %23, i8* %24, align 1
  br label %34

25:                                               ; preds = %4
  %26 = load i8, i8* @SAMPLERATE_96000, align 1
  %27 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %26, i8* %27, align 1
  br label %34

28:                                               ; preds = %4
  %29 = load i8, i8* @SAMPLERATE_192000, align 1
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  br label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %108

34:                                               ; preds = %28, %25, %22, %19, %16
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %42 [
    i32 16, label %36
    i32 24, label %39
  ]

36:                                               ; preds = %34
  %37 = load i8, i8* @DEPTH_16, align 1
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 1
  store i8 %37, i8* %38, align 1
  br label %45

39:                                               ; preds = %34
  %40 = load i8, i8* @DEPTH_24, align 1
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 1
  store i8 %40, i8* %41, align 1
  br label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %108

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 2
  store i8 %48, i8* %49, align 1
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 8
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 3
  store i8 %52, i8* %53, align 1
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 4
  store i8 1, i8* %54, align 1
  %55 = load %struct.device*, %struct.device** %12, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %61 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 4
  %62 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %63 = load i32, i32* @EP1_CMD_AUDIO_PARAMS, align 4
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %65 = call i32 @snd_usb_caiaq_send_command(%struct.snd_usb_caiaqdev* %62, i32 %63, i8* %64, i32 5)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %45
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %108

70:                                               ; preds = %45
  %71 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %72 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %75 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* @HZ, align 4
  %80 = call i32 @wait_event_timeout(i32 %73, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* @EPIPE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %108

85:                                               ; preds = %70
  %86 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %87 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.device*, %struct.device** %12, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %97

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %96 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %90
  %98 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %99 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  br label %106

106:                                              ; preds = %103, %102
  %107 = phi i32 [ 0, %102 ], [ %105, %103 ]
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %82, %68, %42, %31
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.device* @caiaqdev_to_dev(%struct.snd_usb_caiaqdev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @snd_usb_caiaq_send_command(%struct.snd_usb_caiaqdev*, i32, i8*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
