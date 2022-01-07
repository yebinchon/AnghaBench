; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_uac2_iterm_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_uac2_iterm_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { i32 }
%struct.usb_audio_term = type { i32, i32, i32, i32, i32 }
%struct.uac2_input_terminal_descriptor = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, %struct.usb_audio_term*, i8*, i32)* @parse_term_uac2_iterm_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_term_uac2_iterm_unit(%struct.mixer_build* %0, %struct.usb_audio_term* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mixer_build*, align 8
  %7 = alloca %struct.usb_audio_term*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uac2_input_terminal_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.mixer_build* %0, %struct.mixer_build** %6, align 8
  store %struct.usb_audio_term* %1, %struct.usb_audio_term** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.uac2_input_terminal_descriptor*
  store %struct.uac2_input_terminal_descriptor* %13, %struct.uac2_input_terminal_descriptor** %10, align 8
  %14 = load %struct.mixer_build*, %struct.mixer_build** %6, align 8
  %15 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %10, align 8
  %16 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %15, i32 0, i32 4
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
  br label %50

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %27 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %10, align 8
  %29 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %33 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %10, align 8
  %35 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %38 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %10, align 8
  %40 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %44 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %10, align 8
  %46 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %49 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %24, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @__check_input_term(%struct.mixer_build*, i32, %struct.usb_audio_term*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
