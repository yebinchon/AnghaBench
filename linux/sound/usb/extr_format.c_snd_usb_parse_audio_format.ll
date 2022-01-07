; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_format.c_snd_usb_parse_audio_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_format.c_snd_usb_parse_audio_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i64 }
%struct.audioformat = type { i32, i64, i32, i32 }
%struct.uac_format_type_i_continuous_descriptor = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%u:%d : format type %d is not supported yet\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i64 0, align 8
@SNDRV_PCM_RATE_96000 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_parse_audio_format(%struct.snd_usb_audio* %0, %struct.audioformat* %1, i32 %2, %struct.uac_format_type_i_continuous_descriptor* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca %struct.audioformat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uac_format_type_i_continuous_descriptor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %7, align 8
  store %struct.audioformat* %1, %struct.audioformat** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.uac_format_type_i_continuous_descriptor* %3, %struct.uac_format_type_i_continuous_descriptor** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %10, align 8
  %14 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, %struct.uac_format_type_i_continuous_descriptor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %28 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %22
  ]

16:                                               ; preds = %5, %5
  %17 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %18 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %10, align 8
  %21 = call i32 @parse_audio_format_i(%struct.snd_usb_audio* %17, %struct.audioformat* %18, i32 %19, %struct.uac_format_type_i_continuous_descriptor* %20)
  store i32 %21, i32* %12, align 4
  br label %42

22:                                               ; preds = %5
  %23 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %24 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %10, align 8
  %27 = call i32 @parse_audio_format_ii(%struct.snd_usb_audio* %23, %struct.audioformat* %24, i32 %25, %struct.uac_format_type_i_continuous_descriptor* %26)
  store i32 %27, i32* %12, align 4
  br label %42

28:                                               ; preds = %5
  %29 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %30 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %31 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %34 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %10, align 8
  %37 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, %struct.uac_format_type_i_continuous_descriptor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_audio_info(%struct.snd_usb_audio* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* @ENOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %92

42:                                               ; preds = %22, %16
  %43 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %10, align 8
  %44 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, %struct.uac_format_type_i_continuous_descriptor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %47 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %92

52:                                               ; preds = %42
  %53 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %54 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @USB_ID(i32 1054, i32 12288)
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %60 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @USB_ID(i32 1054, i32 12320)
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %66 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @USB_ID(i32 1054, i32 12385)
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %64, %58, %52
  %71 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %10, align 8
  %72 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, %struct.uac_format_type_i_continuous_descriptor* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 130
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %77 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SNDRV_PCM_RATE_48000, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  %83 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SNDRV_PCM_RATE_96000, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @ENOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %92

90:                                               ; preds = %81, %75, %70
  br label %91

91:                                               ; preds = %90, %64
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %87, %50, %28
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @parse_audio_format_i(%struct.snd_usb_audio*, %struct.audioformat*, i32, %struct.uac_format_type_i_continuous_descriptor*) #1

declare dso_local i32 @parse_audio_format_ii(%struct.snd_usb_audio*, %struct.audioformat*, i32, %struct.uac_format_type_i_continuous_descriptor*) #1

declare dso_local i32 @usb_audio_info(%struct.snd_usb_audio*, i8*, i32, i32, i32) #1

declare dso_local i64 @USB_ID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
