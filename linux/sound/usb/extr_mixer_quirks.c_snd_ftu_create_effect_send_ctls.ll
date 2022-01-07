; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ftu_create_effect_send_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ftu_create_effect_send_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }

@USB_MIXER_S16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Effect Send AIn%d Volume\00", align 1
@snd_usb_mixer_vol_tlv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Effect Send DIn%d Volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @snd_ftu_create_effect_send_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ftu_create_effect_send_ctls(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [48 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  store i32 5, i32* %8, align 4
  %11 = load i32, i32* @USB_MIXER_S16, align 4
  store i32 %11, i32* %9, align 4
  store i32 9, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %33, %1
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %4, align 4
  %18 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @snprintf(i8* %18, i32 48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %26 = load i32, i32* @snd_usb_mixer_vol_tlv, align 4
  %27 = call i32 @snd_create_std_mono_ctl(%struct.usb_mixer_interface* %22, i32 5, i32 9, i32 %23, i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %12

36:                                               ; preds = %12
  store i32 8, i32* %6, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 16
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 1, %41
  store i32 %42, i32* %4, align 4
  %43 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 7
  %46 = call i32 @snprintf(i8* %43, i32 48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %9, align 4
  %50 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %51 = load i32, i32* @snd_usb_mixer_vol_tlv, align 4
  %52 = call i32 @snd_create_std_mono_ctl(%struct.usb_mixer_interface* %47, i32 5, i32 9, i32 %48, i32 %49, i8* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %62

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %37

61:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %55, %30
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @snd_create_std_mono_ctl(%struct.usb_mixer_interface*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
