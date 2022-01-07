; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_add_output_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_add_output_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.scarlett_device_info = type { i32 }
%struct.usb_mixer_elem_info = type { i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Master %d (%s) Playback Switch\00", align 1
@usb_scarlett_ctl_switch = common dso_local global i32 0, align 4
@scarlett_ctl_resume = common dso_local global i32 0, align 4
@USB_MIXER_S16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Master %d (%s) Playback Volume\00", align 1
@usb_scarlett_ctl_master = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Master %dL (%s) Source Playback Enum\00", align 1
@usb_scarlett_ctl_dynamic_enum = common dso_local global i32 0, align 4
@scarlett_ctl_enum_resume = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Master %dR (%s) Source Playback Enum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i32, i8*, %struct.scarlett_device_info*)* @add_output_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_output_ctls(%struct.usb_mixer_interface* %0, i32 %1, i8* %2, %struct.scarlett_device_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_mixer_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.scarlett_device_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.usb_mixer_elem_info*, align 8
  %14 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.scarlett_device_info* %3, %struct.scarlett_device_info** %9, align 8
  %15 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = trunc i64 %16 to i32
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22)
  %24 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %25 = load i32, i32* @scarlett_ctl_resume, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @USB_MIXER_S16, align 4
  %30 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %24, i32* @usb_scarlett_ctl_switch, i32 %25, i32 10, i32 1, i32 %28, i32 %29, i32 2, i8* %18, i32* null, %struct.usb_mixer_elem_info** %13)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %90

35:                                               ; preds = %4
  %36 = trunc i64 %16 to i32
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @snprintf(i8* %18, i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %39)
  %41 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %42 = load i32, i32* @scarlett_ctl_resume, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 2, %43
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* @USB_MIXER_S16, align 4
  %47 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %41, i32* @usb_scarlett_ctl_master, i32 %42, i32 10, i32 2, i32 %45, i32 %46, i32 2, i8* %18, i32* null, %struct.usb_mixer_elem_info** %13)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %90

52:                                               ; preds = %35
  %53 = trunc i64 %16 to i32
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @snprintf(i8* %18, i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %55, i8* %56)
  %58 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %59 = load i32, i32* @scarlett_ctl_enum_resume, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 2, %60
  %62 = load i32, i32* @USB_MIXER_S16, align 4
  %63 = load %struct.scarlett_device_info*, %struct.scarlett_device_info** %9, align 8
  %64 = getelementptr inbounds %struct.scarlett_device_info, %struct.scarlett_device_info* %63, i32 0, i32 0
  %65 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %58, i32* @usb_scarlett_ctl_dynamic_enum, i32 %59, i32 51, i32 0, i32 %61, i32 %62, i32 1, i8* %18, i32* %64, %struct.usb_mixer_elem_info** %13)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %90

70:                                               ; preds = %52
  %71 = trunc i64 %16 to i32
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @snprintf(i8* %18, i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %73, i8* %74)
  %76 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %77 = load i32, i32* @scarlett_ctl_enum_resume, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 2, %78
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* @USB_MIXER_S16, align 4
  %82 = load %struct.scarlett_device_info*, %struct.scarlett_device_info** %9, align 8
  %83 = getelementptr inbounds %struct.scarlett_device_info, %struct.scarlett_device_info* %82, i32 0, i32 0
  %84 = call i32 @add_new_ctl(%struct.usb_mixer_interface* %76, i32* @usb_scarlett_ctl_dynamic_enum, i32 %77, i32 51, i32 0, i32 %80, i32 %81, i32 1, i8* %18, i32* %83, %struct.usb_mixer_elem_info** %13)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %90

89:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %90

90:                                               ; preds = %89, %87, %68, %50, %33
  %91 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @add_new_ctl(%struct.usb_mixer_interface*, i32*, i32, i32, i32, i32, i32, i32, i8*, i32*, %struct.usb_mixer_elem_info**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
