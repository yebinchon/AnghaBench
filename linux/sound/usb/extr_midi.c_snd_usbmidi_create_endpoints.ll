; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_create_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_create_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.snd_usb_midi_endpoint_info = type { i32, i32 }

@MIDI_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"created %d output and %d input ports\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*)* @snd_usbmidi_create_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_create_endpoints(%struct.snd_usb_midi* %0, %struct.snd_usb_midi_endpoint_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_midi*, align 8
  %5 = alloca %struct.snd_usb_midi_endpoint_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %4, align 8
  store %struct.snd_usb_midi_endpoint_info* %1, %struct.snd_usb_midi_endpoint_info** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %140, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %143

15:                                               ; preds = %11
  %16 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %16, i64 %18
  %20 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %15
  %24 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %25 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %25, i64 %27
  %29 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %30 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 %33
  %35 = call i32 @snd_usbmidi_out_endpoint_create(%struct.snd_usb_midi* %24, %struct.snd_usb_midi_endpoint_info* %28, %struct.TYPE_13__* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %151

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %15
  %42 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %42, i64 %44
  %46 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %51 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %51, i64 %53
  %55 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %56 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 %59
  %61 = call i32 @snd_usbmidi_in_endpoint_create(%struct.snd_usb_midi* %50, %struct.snd_usb_midi_endpoint_info* %54, %struct.TYPE_13__* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %151

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %41
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %136, %67
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 16
  br i1 %70, label %71, label %139

71:                                               ; preds = %68
  %72 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %72, i64 %74
  %76 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %71
  %83 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %84 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %87 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = call i32 @snd_usbmidi_init_substream(%struct.snd_usb_midi* %83, i32 %84, i32 %85, i32* %99)
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %82, %71
  %104 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %104, i64 %106
  %108 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = shl i32 1, %110
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %103
  %115 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %116 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %119 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %118, i32 0, i32 1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = call i32 @snd_usbmidi_init_substream(%struct.snd_usb_midi* %115, i32 %116, i32 %117, i32* %131)
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %114, %103
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %68

139:                                              ; preds = %68
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %11

143:                                              ; preds = %11
  %144 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %145 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %144, i32 0, i32 0
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @dev_dbg(i32* %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %143, %64, %38
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @snd_usbmidi_out_endpoint_create(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*, %struct.TYPE_13__*) #1

declare dso_local i32 @snd_usbmidi_in_endpoint_create(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*, %struct.TYPE_13__*) #1

declare dso_local i32 @snd_usbmidi_init_substream(%struct.snd_usb_midi*, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
