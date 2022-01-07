; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_selector_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_selector_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_audio_term = type { i32, i32, i32 }
%struct.uac_selector_unit_descriptor = type { i32* }

@UAC3_SELECTOR_UNIT = common dso_local global i32 0, align 4
@UAC_VERSION_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, %struct.usb_audio_term*, i8*, i32)* @parse_term_selector_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_term_selector_unit(%struct.mixer_build* %0, %struct.usb_audio_term* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mixer_build*, align 8
  %7 = alloca %struct.usb_audio_term*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uac_selector_unit_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.mixer_build* %0, %struct.mixer_build** %6, align 8
  store %struct.usb_audio_term* %1, %struct.usb_audio_term** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.uac_selector_unit_descriptor*
  store %struct.uac_selector_unit_descriptor* %13, %struct.uac_selector_unit_descriptor** %10, align 8
  %14 = load %struct.mixer_build*, %struct.mixer_build** %6, align 8
  %15 = load %struct.uac_selector_unit_descriptor*, %struct.uac_selector_unit_descriptor** %10, align 8
  %16 = getelementptr inbounds %struct.uac_selector_unit_descriptor, %struct.uac_selector_unit_descriptor* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %21 = call i32 @__check_input_term(%struct.mixer_build* %14, i32 %19, %struct.usb_audio_term* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %47

26:                                               ; preds = %4
  %27 = load i32, i32* @UAC3_SELECTOR_UNIT, align 4
  %28 = shl i32 %27, 16
  %29 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %30 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %33 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mixer_build*, %struct.mixer_build** %6, align 8
  %35 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UAC_VERSION_3, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.uac_selector_unit_descriptor*, %struct.uac_selector_unit_descriptor** %10, align 8
  %43 = call i32 @uac_selector_unit_iSelector(%struct.uac_selector_unit_descriptor* %42)
  %44 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %45 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %26
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @__check_input_term(%struct.mixer_build*, i32, %struct.usb_audio_term*) #1

declare dso_local i32 @uac_selector_unit_iSelector(%struct.uac_selector_unit_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
