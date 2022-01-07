; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_uac3_iterm_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_uac3_iterm_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { i32 }
%struct.usb_audio_term = type { i32, i32, i8*, i64, i8* }
%struct.uac3_input_terminal_descriptor = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, %struct.usb_audio_term*, i8*, i32)* @parse_term_uac3_iterm_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_term_uac3_iterm_unit(%struct.mixer_build* %0, %struct.usb_audio_term* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mixer_build*, align 8
  %7 = alloca %struct.usb_audio_term*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uac3_input_terminal_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.mixer_build* %0, %struct.mixer_build** %6, align 8
  store %struct.usb_audio_term* %1, %struct.usb_audio_term** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.uac3_input_terminal_descriptor*
  store %struct.uac3_input_terminal_descriptor* %13, %struct.uac3_input_terminal_descriptor** %10, align 8
  %14 = load %struct.mixer_build*, %struct.mixer_build** %6, align 8
  %15 = load %struct.uac3_input_terminal_descriptor*, %struct.uac3_input_terminal_descriptor** %10, align 8
  %16 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, %struct.uac3_input_terminal_descriptor* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %19 = call i32 @__check_input_term(%struct.mixer_build* %14, i32 %17, %struct.usb_audio_term* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %56

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %27 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.uac3_input_terminal_descriptor*, %struct.uac3_input_terminal_descriptor** %10, align 8
  %29 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, %struct.uac3_input_terminal_descriptor* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le16_to_cpu(i32 %30)
  %32 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %33 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mixer_build*, %struct.mixer_build** %6, align 8
  %35 = load %struct.uac3_input_terminal_descriptor*, %struct.uac3_input_terminal_descriptor** %10, align 8
  %36 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, %struct.uac3_input_terminal_descriptor* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le16_to_cpu(i32 %37)
  %39 = call i32 @get_cluster_channels_v3(%struct.mixer_build* %34, i8* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %56

44:                                               ; preds = %24
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %47 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %49 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.uac3_input_terminal_descriptor*, %struct.uac3_input_terminal_descriptor** %10, align 8
  %51 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, %struct.uac3_input_terminal_descriptor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le16_to_cpu(i32 %52)
  %54 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %55 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %44, %42, %22
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @__check_input_term(%struct.mixer_build*, i32, %struct.usb_audio_term*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @get_cluster_channels_v3(%struct.mixer_build*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
