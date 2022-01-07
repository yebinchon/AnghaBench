; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_build_feature_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_build_feature_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { i32, i32, i32 }
%struct.usb_audio_term = type { i32 }
%struct.uac_feature_unit_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_build*, i8*, i32, i32, %struct.usb_audio_term*, i32, i32)* @build_feature_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_feature_ctl(%struct.mixer_build* %0, i8* %1, i32 %2, i32 %3, %struct.usb_audio_term* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mixer_build*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_audio_term*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.uac_feature_unit_descriptor*, align 8
  %16 = alloca i32, align 4
  store %struct.mixer_build* %0, %struct.mixer_build** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.usb_audio_term* %4, %struct.usb_audio_term** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.uac_feature_unit_descriptor*
  store %struct.uac_feature_unit_descriptor* %18, %struct.uac_feature_unit_descriptor** %15, align 8
  %19 = load %struct.uac_feature_unit_descriptor*, %struct.uac_feature_unit_descriptor** %15, align 8
  %20 = call i32 @uac_feature_unit_iFeature(%struct.uac_feature_unit_descriptor* %19)
  store i32 %20, i32* %16, align 4
  %21 = load %struct.mixer_build*, %struct.mixer_build** %8, align 8
  %22 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mixer_build*, %struct.mixer_build** %8, align 8
  %25 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.usb_audio_term*, %struct.usb_audio_term** %12, align 8
  %30 = load %struct.mixer_build*, %struct.mixer_build** %8, align 8
  %31 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %30, i32 0, i32 0
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @__build_feature_ctl(i32 %23, i32 %26, i32 %27, i32 %28, %struct.usb_audio_term* %29, i32* %31, i32 %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @uac_feature_unit_iFeature(%struct.uac_feature_unit_descriptor*) #1

declare dso_local i32 @__build_feature_ctl(i32, i32, i32, i32, %struct.usb_audio_term*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
