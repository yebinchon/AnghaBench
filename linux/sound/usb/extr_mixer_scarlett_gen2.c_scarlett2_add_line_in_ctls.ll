; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_line_in_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_line_in_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { %struct.scarlett2_device_info* }
%struct.scarlett2_device_info = type { i32, i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Line In %d Level Capture Enum\00", align 1
@scarlett2_level_enum_ctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Line In %d Pad Capture Switch\00", align 1
@scarlett2_pad_ctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @scarlett2_add_line_in_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_add_line_in_ctls(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca %struct.scarlett2_mixer_data*, align 8
  %5 = alloca %struct.scarlett2_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  %11 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %12 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %11, i32 0, i32 0
  %13 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %12, align 8
  store %struct.scarlett2_mixer_data* %13, %struct.scarlett2_mixer_data** %4, align 8
  %14 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %15 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %14, i32 0, i32 0
  %16 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %15, align 8
  store %struct.scarlett2_device_info* %16, %struct.scarlett2_device_info** %5, align 8
  %17 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %40, %1
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %24 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = trunc i64 %18 to i32
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @snprintf(i8* %20, i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface* %32, i32* @scarlett2_level_enum_ctl, i32 %33, i32 1, i8* %20, i32* null)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %67

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %21

43:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %5, align 8
  %47 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = trunc i64 %18 to i32
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @snprintf(i8* %20, i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface* %55, i32* @scarlett2_pad_ctl, i32 %56, i32 1, i8* %20, i32* null)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %67

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %44

66:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %60, %37
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface*, i32*, i32, i32, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
