; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_scarlett_controls_create_generic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_scarlett_controls_create_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.scarlett_device_info = type { i32, %struct.scarlett_mixer_control* }
%struct.scarlett_mixer_control = type { i32, i32, i32 }
%struct.usb_mixer_elem_info = type { i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@usb_scarlett_ctl_switch = common dso_local global i32 0, align 4
@scarlett_ctl_resume = common dso_local global i32 0, align 4
@USB_MIXER_S16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@usb_scarlett_ctl_master = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Input %d Impedance Switch\00", align 1
@usb_scarlett_ctl_enum = common dso_local global i32 0, align 4
@scarlett_ctl_enum_resume = common dso_local global i32 0, align 4
@opt_impedance = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Input %d Pad Switch\00", align 1
@opt_pad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.scarlett_device_info*)* @scarlett_controls_create_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett_controls_create_generic(%struct.usb_mixer_interface* %0, %struct.scarlett_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca %struct.scarlett_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scarlett_mixer_control*, align 8
  %11 = alloca %struct.usb_mixer_elem_info*, align 8
  %12 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store %struct.scarlett_device_info* %1, %struct.scarlett_device_info** %5, align 8
  %13 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %18 = load i32, i32* @scarlett_ctl_resume, align 4
  %19 = load i32, i32* @USB_MIXER_S16, align 4
  %20 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %17, i32* @usb_scarlett_ctl_switch, i32 %18, i32 10, i32 1, i32 0, i32 %19, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* null, %struct.usb_mixer_elem_info** %11)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %105

25:                                               ; preds = %2
  %26 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %27 = load i32, i32* @scarlett_ctl_resume, align 4
  %28 = load i32, i32* @USB_MIXER_S16, align 4
  %29 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %26, i32* @usb_scarlett_ctl_master, i32 %27, i32 10, i32 2, i32 0, i32 %28, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.usb_mixer_elem_info** %11)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %105

34:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %101, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.scarlett_device_info*, %struct.scarlett_device_info** %5, align 8
  %38 = getelementptr inbounds %struct.scarlett_device_info, %struct.scarlett_device_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %104

41:                                               ; preds = %35
  %42 = load %struct.scarlett_device_info*, %struct.scarlett_device_info** %5, align 8
  %43 = getelementptr inbounds %struct.scarlett_device_info, %struct.scarlett_device_info* %42, i32 0, i32 1
  %44 = load %struct.scarlett_mixer_control*, %struct.scarlett_mixer_control** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.scarlett_mixer_control, %struct.scarlett_mixer_control* %44, i64 %46
  store %struct.scarlett_mixer_control* %47, %struct.scarlett_mixer_control** %10, align 8
  %48 = load %struct.scarlett_mixer_control*, %struct.scarlett_mixer_control** %10, align 8
  %49 = getelementptr inbounds %struct.scarlett_mixer_control, %struct.scarlett_mixer_control* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %100 [
    i32 130, label %51
    i32 129, label %66
    i32 128, label %83
  ]

51:                                               ; preds = %41
  %52 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %53 = load %struct.scarlett_mixer_control*, %struct.scarlett_mixer_control** %10, align 8
  %54 = getelementptr inbounds %struct.scarlett_mixer_control, %struct.scarlett_mixer_control* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.scarlett_mixer_control*, %struct.scarlett_mixer_control** %10, align 8
  %57 = getelementptr inbounds %struct.scarlett_mixer_control, %struct.scarlett_mixer_control* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.scarlett_device_info*, %struct.scarlett_device_info** %5, align 8
  %60 = call i32 @add_output_ctls(%struct.usb_mixer_interface* %52, i32 %55, i32 %58, %struct.scarlett_device_info* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %105

65:                                               ; preds = %51
  br label %100

66:                                               ; preds = %41
  %67 = load %struct.scarlett_mixer_control*, %struct.scarlett_mixer_control** %10, align 8
  %68 = getelementptr inbounds %struct.scarlett_mixer_control, %struct.scarlett_mixer_control* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %72 = load i32, i32* @scarlett_ctl_enum_resume, align 4
  %73 = load %struct.scarlett_mixer_control*, %struct.scarlett_mixer_control** %10, align 8
  %74 = getelementptr inbounds %struct.scarlett_mixer_control, %struct.scarlett_mixer_control* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @USB_MIXER_S16, align 4
  %77 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %71, i32* @usb_scarlett_ctl_enum, i32 %72, i32 1, i32 9, i32 %75, i32 %76, i32 1, i8* %16, i32* @opt_impedance, %struct.usb_mixer_elem_info** %11)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %105

82:                                               ; preds = %66
  br label %100

83:                                               ; preds = %41
  %84 = load %struct.scarlett_mixer_control*, %struct.scarlett_mixer_control** %10, align 8
  %85 = getelementptr inbounds %struct.scarlett_mixer_control, %struct.scarlett_mixer_control* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %89 = load i32, i32* @scarlett_ctl_enum_resume, align 4
  %90 = load %struct.scarlett_mixer_control*, %struct.scarlett_mixer_control** %10, align 8
  %91 = getelementptr inbounds %struct.scarlett_mixer_control, %struct.scarlett_mixer_control* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @USB_MIXER_S16, align 4
  %94 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %88, i32* @usb_scarlett_ctl_enum, i32 %89, i32 1, i32 11, i32 %92, i32 %93, i32 1, i8* %16, i32* @opt_pad, %struct.usb_mixer_elem_info** %11)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %105

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %41, %99, %82, %65
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %35

104:                                              ; preds = %35
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %97, %80, %63, %32, %23
  %106 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @add_new_ctl(%struct.usb_mixer_interface*, i32*, i32, i32, i32, i32, i32, i32, i8*, i32*, %struct.usb_mixer_elem_info**) #2

declare dso_local i32 @add_output_ctls(%struct.usb_mixer_interface*, i32, i32, %struct.scarlett_device_info*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
