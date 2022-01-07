; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_format.c_parse_audio_format_ii.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_format.c_parse_audio_format_ii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.audioformat = type { i32, i32, i32, i8*, i32, i32 }
%struct.uac_format_type_ii_discrete_descriptor = type { i32, i32 }
%struct.uac_format_type_ii_ext_descriptor = type { i32, i32 }

@SNDRV_PCM_FMTBIT_U8 = common dso_local global i8* null, align 8
@SNDRV_PCM_FMTBIT_MPEG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"%u:%d : unknown format tag %#llx is detected.  processed as MPEG.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"found format II with max.bitrate = %d, frame size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.audioformat*, i32, i8*)* @parse_audio_format_ii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_audio_format_ii(%struct.snd_usb_audio* %0, %struct.audioformat* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca %struct.audioformat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.uac_format_type_ii_discrete_descriptor*, align 8
  %13 = alloca %struct.uac_format_type_ii_ext_descriptor*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store %struct.audioformat* %1, %struct.audioformat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %23 [
    i32 131, label %15
    i32 130, label %19
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** @SNDRV_PCM_FMTBIT_U8, align 8
  %17 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %18 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  br label %36

19:                                               ; preds = %4
  %20 = load i8*, i8** @SNDRV_PCM_FMTBIT_MPEG, align 8
  %21 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %22 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  br label %36

23:                                               ; preds = %4
  %24 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %25 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %26 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %29 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (%struct.snd_usb_audio*, i8*, i32, i32, ...) @usb_audio_info(%struct.snd_usb_audio* %24, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %31)
  %33 = load i8*, i8** @SNDRV_PCM_FMTBIT_MPEG, align 8
  %34 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %35 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %23, %19, %15
  %37 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %38 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %40 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %42 [
    i32 129, label %43
    i32 128, label %65
  ]

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %36, %42
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to %struct.uac_format_type_ii_discrete_descriptor*
  store %struct.uac_format_type_ii_discrete_descriptor* %45, %struct.uac_format_type_ii_discrete_descriptor** %12, align 8
  %46 = load %struct.uac_format_type_ii_discrete_descriptor*, %struct.uac_format_type_ii_discrete_descriptor** %12, align 8
  %47 = getelementptr inbounds %struct.uac_format_type_ii_discrete_descriptor, %struct.uac_format_type_ii_discrete_descriptor* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.uac_format_type_ii_discrete_descriptor*, %struct.uac_format_type_ii_discrete_descriptor** %12, align 8
  %51 = getelementptr inbounds %struct.uac_format_type_ii_discrete_descriptor, %struct.uac_format_type_ii_discrete_descriptor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (%struct.snd_usb_audio*, i8*, i32, i32, ...) @usb_audio_info(%struct.snd_usb_audio* %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %60 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %62 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @parse_audio_format_rates_v1(%struct.snd_usb_audio* %61, %struct.audioformat* %62, i8* %63, i32 8)
  store i32 %64, i32* %11, align 4
  br label %86

65:                                               ; preds = %36
  %66 = load i8*, i8** %8, align 8
  %67 = bitcast i8* %66 to %struct.uac_format_type_ii_ext_descriptor*
  store %struct.uac_format_type_ii_ext_descriptor* %67, %struct.uac_format_type_ii_ext_descriptor** %13, align 8
  %68 = load %struct.uac_format_type_ii_ext_descriptor*, %struct.uac_format_type_ii_ext_descriptor** %13, align 8
  %69 = getelementptr inbounds %struct.uac_format_type_ii_ext_descriptor, %struct.uac_format_type_ii_ext_descriptor* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.uac_format_type_ii_ext_descriptor*, %struct.uac_format_type_ii_ext_descriptor** %13, align 8
  %73 = getelementptr inbounds %struct.uac_format_type_ii_ext_descriptor, %struct.uac_format_type_ii_ext_descriptor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (%struct.snd_usb_audio*, i8*, i32, i32, ...) @usb_audio_info(%struct.snd_usb_audio* %76, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %82 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %84 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %85 = call i32 @parse_audio_format_rates_v2v3(%struct.snd_usb_audio* %83, %struct.audioformat* %84)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %65, %43
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local i32 @usb_audio_info(%struct.snd_usb_audio*, i8*, i32, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @parse_audio_format_rates_v1(%struct.snd_usb_audio*, %struct.audioformat*, i8*, i32) #1

declare dso_local i32 @parse_audio_format_rates_v2v3(%struct.snd_usb_audio*, %struct.audioformat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
