; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { %struct.snd_rawmidi*, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.snd_rawmidi = type { i32, %struct.snd_usb_caiaqdev*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_usb_caiaq_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_usb_caiaq_midi_input = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_caiaq_midi_init(%struct.snd_usb_caiaqdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usb_caiaqdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_rawmidi*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %3, align 8
  %6 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %7 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %11 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %14 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @snd_rawmidi_new(i32 %9, i32 %12, i32 0, i64 %16, i64 %20, %struct.snd_rawmidi** %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %73

26:                                               ; preds = %1
  %27 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  %28 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %31 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @strlcpy(i32 %29, i32 %32, i32 4)
  %34 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %35 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  %36 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %38 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  %39 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %38, i32 0, i32 1
  store %struct.snd_usb_caiaqdev* %37, %struct.snd_usb_caiaqdev** %39, align 8
  %40 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %41 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %26
  %46 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %47 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  %48 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  %52 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %53 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %51, i32 %52, i32* @snd_usb_caiaq_midi_output)
  br label %54

54:                                               ; preds = %45, %26
  %55 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %56 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %62 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  %63 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  %67 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %68 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %66, i32 %67, i32* @snd_usb_caiaq_midi_input)
  br label %69

69:                                               ; preds = %60, %54
  %70 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  %71 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %72 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %71, i32 0, i32 0
  store %struct.snd_rawmidi* %70, %struct.snd_rawmidi** %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %24
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @snd_rawmidi_new(i32, i32, i32, i64, i64, %struct.snd_rawmidi**) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
