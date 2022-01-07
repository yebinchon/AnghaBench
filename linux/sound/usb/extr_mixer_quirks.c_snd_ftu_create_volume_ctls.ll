; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ftu_create_volume_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ftu_create_volume_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }

@USB_MIXER_S16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"AIn%d - Out%d Capture Volume\00", align 1
@snd_usb_mixer_vol_tlv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DIn%d - Out%d Playback Volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @snd_ftu_create_volume_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ftu_create_volume_ctls(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  store i32 5, i32* %10, align 4
  %12 = load i32, i32* @USB_MIXER_S16, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %73, %1
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %76

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %42, %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %6, align 4
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @snprintf(i8* %25, i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %36 = call i32 @snd_create_std_mono_ctl(%struct.usb_mixer_interface* %31, i32 5, i32 %32, i32 %33, i32 %34, i8* %35, i32* @snd_usb_mixer_vol_tlv)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %2, align 4
  br label %77

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %19

45:                                               ; preds = %19
  store i32 8, i32* %7, align 4
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 16
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* %6, align 4
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 7
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @snprintf(i8* %52, i32 64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %56)
  %58 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %11, align 4
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %63 = call i32 @snd_create_std_mono_ctl(%struct.usb_mixer_interface* %58, i32 5, i32 %59, i32 %60, i32 %61, i8* %62, i32* @snd_usb_mixer_vol_tlv)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %77

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %46

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %13

76:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %66, %39
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @snd_create_std_mono_ctl(%struct.usb_mixer_interface*, i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
