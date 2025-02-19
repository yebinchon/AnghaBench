; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_ch345_broken_sysex_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_ch345_broken_sysex_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_in_endpoint = type { i32, i32 }

@snd_usbmidi_cin_length = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_in_endpoint*, i32*, i32)* @ch345_broken_sysex_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch345_broken_sysex_input(%struct.snd_usb_midi_in_endpoint* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_usb_midi_in_endpoint*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_usb_midi_in_endpoint* %0, %struct.snd_usb_midi_in_endpoint** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %85, %3
  %11 = load i32, i32* %7, align 4
  %12 = add i32 %11, 3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %88

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %88

26:                                               ; preds = %22, %15
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  store i32 %32, i32* %8, align 4
  %33 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %34 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %40 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 6
  %49 = zext i1 %48 to i32
  %50 = add i32 %46, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %44, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  store i32 4, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %43, %37, %26
  %58 = load i32*, i32** @snd_usbmidi_cin_length, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @snd_usbmidi_input_data(%struct.snd_usb_midi_in_endpoint* %63, i32 0, i32* %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 4
  %73 = zext i1 %72 to i32
  %74 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %75 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %77 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %57
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %83 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %57
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 4
  store i32 %87, i32* %7, align 4
  br label %10

88:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @snd_usbmidi_input_data(%struct.snd_usb_midi_in_endpoint*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
