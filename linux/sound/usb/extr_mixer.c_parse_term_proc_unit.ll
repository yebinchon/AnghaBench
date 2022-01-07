; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_proc_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_proc_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_audio_term = type { i32, i32, i32, i32, i32 }
%struct.uac_processing_unit_descriptor = type { i32*, i64 }

@UAC_VERSION_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, %struct.usb_audio_term*, i8*, i32, i32)* @parse_term_proc_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_term_proc_unit(%struct.mixer_build* %0, %struct.usb_audio_term* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mixer_build*, align 8
  %8 = alloca %struct.usb_audio_term*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.uac_processing_unit_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mixer_build* %0, %struct.mixer_build** %7, align 8
  store %struct.usb_audio_term* %1, %struct.usb_audio_term** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.uac_processing_unit_descriptor*
  store %struct.uac_processing_unit_descriptor* %16, %struct.uac_processing_unit_descriptor** %12, align 8
  %17 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %18 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %23 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %5
  %27 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %28 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %29 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %34 = call i32 @__check_input_term(%struct.mixer_build* %27, i32 %32, %struct.usb_audio_term* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %73

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i32, i32* %11, align 4
  %42 = shl i32 %41, 16
  %43 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %44 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %47 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @UAC_VERSION_3, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %73

52:                                               ; preds = %40
  %53 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %54 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %59 = call i32 @uac_processing_unit_bNrChannels(%struct.uac_processing_unit_descriptor* %58)
  %60 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %61 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @uac_processing_unit_wChannelConfig(%struct.uac_processing_unit_descriptor* %62, i32 %63)
  %65 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %66 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %57, %52
  %68 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @uac_processing_unit_iProcessing(%struct.uac_processing_unit_descriptor* %68, i32 %69)
  %71 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %72 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %67, %51, %37
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @__check_input_term(%struct.mixer_build*, i32, %struct.usb_audio_term*) #1

declare dso_local i32 @uac_processing_unit_bNrChannels(%struct.uac_processing_unit_descriptor*) #1

declare dso_local i32 @uac_processing_unit_wChannelConfig(%struct.uac_processing_unit_descriptor*, i32) #1

declare dso_local i32 @uac_processing_unit_iProcessing(%struct.uac_processing_unit_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
