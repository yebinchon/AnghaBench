; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_maudio_broken_running_status_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_maudio_broken_running_status_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_in_endpoint = type { %struct.usbmidi_in_port* }
%struct.usbmidi_in_port = type { i32 }

@snd_usbmidi_cin_length = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_in_endpoint*, i32*, i32)* @snd_usbmidi_maudio_broken_running_status_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_maudio_broken_running_status_input(%struct.snd_usb_midi_in_endpoint* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_usb_midi_in_endpoint*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.usbmidi_in_port*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_usb_midi_in_endpoint* %0, %struct.snd_usb_midi_in_endpoint** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %106, %3
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 3
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %109

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 15
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  %38 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %39 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %38, i32 0, i32 0
  %40 = load %struct.usbmidi_in_port*, %struct.usbmidi_in_port** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.usbmidi_in_port, %struct.usbmidi_in_port* %40, i64 %42
  store %struct.usbmidi_in_port* %43, %struct.usbmidi_in_port** %10, align 8
  %44 = load i32*, i32** @snd_usbmidi_cin_length, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %48, 15
  br i1 %49, label %50, label %59

50:                                               ; preds = %24
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 248
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %95

59:                                               ; preds = %50, %24
  %60 = load i64, i64* %9, align 8
  %61 = icmp uge i64 %60, 8
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = icmp ule i64 %63, 14
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.usbmidi_in_port*, %struct.usbmidi_in_port** %10, align 8
  %69 = getelementptr inbounds %struct.usbmidi_in_port, %struct.usbmidi_in_port* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %94

70:                                               ; preds = %62, %59
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load %struct.usbmidi_in_port*, %struct.usbmidi_in_port** %10, align 8
  %75 = getelementptr inbounds %struct.usbmidi_in_port, %struct.usbmidi_in_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 128
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.usbmidi_in_port*, %struct.usbmidi_in_port** %10, align 8
  %88 = getelementptr inbounds %struct.usbmidi_in_port, %struct.usbmidi_in_port* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  br label %93

90:                                               ; preds = %78, %73, %70
  %91 = load %struct.usbmidi_in_port*, %struct.usbmidi_in_port** %10, align 8
  %92 = getelementptr inbounds %struct.usbmidi_in_port, %struct.usbmidi_in_port* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %86
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94, %58
  %96 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @snd_usbmidi_input_data(%struct.snd_usb_midi_in_endpoint* %96, i32 %97, i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %95, %17
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %7, align 4
  br label %12

109:                                              ; preds = %12
  ret void
}

declare dso_local i32 @snd_usbmidi_input_data(%struct.snd_usb_midi_in_endpoint*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
