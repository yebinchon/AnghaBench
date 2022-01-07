; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_fill_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_fill_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_fw_async_midi_port = type { i32*, i32, i32 }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_fw_async_midi_port*, %struct.snd_rawmidi_substream*)* @fill_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_message(%struct.snd_fw_async_midi_port* %0, %struct.snd_rawmidi_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_fw_async_midi_port*, align 8
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_fw_async_midi_port* %0, %struct.snd_fw_async_midi_port** %4, align 8
  store %struct.snd_rawmidi_substream* %1, %struct.snd_rawmidi_substream** %5, align 8
  %12 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %4, align 8
  %13 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %4, align 8
  %16 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32* %18, i32** %10, align 8
  %19 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %19, i32* %20, i32 3)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %175

25:                                               ; preds = %2
  %26 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %4, align 8
  %27 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 247
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %4, align 8
  %44 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %31

49:                                               ; preds = %42, %31
  %50 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %4, align 8
  %51 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %58 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 4
  %61 = or i32 %60, 7
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %75

63:                                               ; preds = %49
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %68 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 4
  %71 = or i32 %70, 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %74

73:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %175

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %7, align 4
  br label %159

77:                                               ; preds = %25
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 240
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %4, align 8
  %84 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %175

85:                                               ; preds = %77
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 128
  %90 = icmp ne i32 %89, 128
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %4, align 8
  %93 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  br label %99

95:                                               ; preds = %85
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @calculate_message_bytes(i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp sle i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %175

105:                                              ; preds = %99
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 128
  %110 = icmp ne i32 %109, 128
  br i1 %110, label %111, label %135

111:                                              ; preds = %105
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, 1
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %175

117:                                              ; preds = %111
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32 %122, i32* %124, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %4, align 8
  %131 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %132, i32* %134, align 4
  br label %147

135:                                              ; preds = %105
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %175

140:                                              ; preds = %135
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %8, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %4, align 8
  %146 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %140, %117
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %150 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 4
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 4
  %157 = or i32 %152, %156
  %158 = load i32*, i32** %9, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %148, %75
  %160 = load i32, i32* %7, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %7, align 4
  %171 = sub nsw i32 3, %170
  %172 = call i32 @memset(i32* %169, i32 0, i32 %171)
  br label %173

173:                                              ; preds = %165, %162, %159
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %139, %116, %104, %82, %73, %24
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream*, i32*, i32) #1

declare dso_local i32 @calculate_message_bytes(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
