; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_format.c_snd_usb_parse_audio_format_v3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_format.c_snd_usb_parse_audio_format_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.audioformat = type { i32 }
%struct.uac3_as_header_descriptor = type { i32 }

@UAC_FORMAT_TYPE_I = common dso_local global i32 0, align 4
@UAC_FORMAT_TYPE_III = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_parse_audio_format_v3(%struct.snd_usb_audio* %0, %struct.audioformat* %1, %struct.uac3_as_header_descriptor* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.audioformat*, align 8
  %8 = alloca %struct.uac3_as_header_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store %struct.audioformat* %1, %struct.audioformat** %7, align 8
  store %struct.uac3_as_header_descriptor* %2, %struct.uac3_as_header_descriptor** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %8, align 8
  %13 = getelementptr inbounds %struct.uac3_as_header_descriptor, %struct.uac3_as_header_descriptor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le64_to_cpu(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = and i32 %16, 127
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @UAC_FORMAT_TYPE_I, align 4
  %21 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %22 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @UAC_FORMAT_TYPE_III, align 4
  %25 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %26 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %29 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %8, align 8
  %32 = call i32 @parse_audio_format_i(%struct.snd_usb_audio* %28, %struct.audioformat* %29, i32 %30, %struct.uac3_as_header_descriptor* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @parse_audio_format_i(%struct.snd_usb_audio*, %struct.audioformat*, i32, %struct.uac3_as_header_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
