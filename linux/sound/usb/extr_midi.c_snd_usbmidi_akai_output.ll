; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_akai_output.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_akai_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_out_endpoint = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.snd_rawmidi_substream* }
%struct.snd_rawmidi_substream = type { i32 }
%struct.urb = type { i32*, i32 }

@MAX_AKAI_SYSEX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_out_endpoint*, %struct.urb*)* @snd_usbmidi_akai_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_akai_output(%struct.snd_usb_midi_out_endpoint* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usb_midi_out_endpoint*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.snd_rawmidi_substream*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_usb_midi_out_endpoint* %0, %struct.snd_usb_midi_out_endpoint** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %14 = load i32, i32* @MAX_AKAI_SYSEX_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %19 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %22, align 8
  store %struct.snd_rawmidi_substream* %23, %struct.snd_rawmidi_substream** %12, align 8
  %24 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %25 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %170

32:                                               ; preds = %2
  %33 = load %struct.urb*, %struct.urb** %4, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.urb*, %struct.urb** %4, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %5, align 8
  %41 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %42 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MAX_AKAI_SYSEX_LEN, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %165, %130, %116, %85, %32
  %48 = load %struct.urb*, %struct.urb** %4, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %169

53:                                               ; preds = %47
  %54 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %55 = load i32, i32* @MAX_AKAI_SYSEX_LEN, align 4
  %56 = call i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %54, i32* %17, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %61 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  store i32 1, i32* %13, align 4
  br label %170

65:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %79, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %17, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 240
  br label %76

76:                                               ; preds = %70, %66
  %77 = phi i1 [ false, %66 ], [ %75, %70 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %66

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %86, i32 %87)
  br label %47

89:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %103, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %17, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 240
  br label %100

100:                                              ; preds = %94, %90
  %101 = phi i1 [ false, %90 ], [ %99, %94 ]
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %90

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %17, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 240
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %117, i32 %118)
  br label %47

120:                                              ; preds = %110, %106
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %17, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 247
  br i1 %129, label %130, label %155

130:                                              ; preds = %124
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = or i32 16, %133
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @memcpy(i32* %138, i32* %17, i32 %139)
  %141 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %141, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  %146 = load %struct.urb*, %struct.urb** %4, align 8
  %147 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32*, i32** %5, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %5, align 8
  br label %47

155:                                              ; preds = %124, %120
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @MAX_AKAI_SYSEX_LEN, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %161 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  store i32 1, i32* %13, align 4
  br label %170

165:                                              ; preds = %155
  %166 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %166, i32 %167)
  br label %47

169:                                              ; preds = %47
  store i32 0, i32* %13, align 4
  br label %170

170:                                              ; preds = %169, %159, %59, %31
  %171 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %13, align 4
  switch i32 %172, label %174 [
    i32 0, label %173
    i32 1, label %173
  ]

173:                                              ; preds = %170, %170
  ret void

174:                                              ; preds = %170
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream*, i32*, i32) #2

declare dso_local i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
