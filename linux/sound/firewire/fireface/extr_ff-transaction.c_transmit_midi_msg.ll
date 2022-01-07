; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_transmit_midi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_transmit_midi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32*, i32*, i32*, i32*, %struct.TYPE_4__*, i32*, i64*, i32, i32* }
%struct.TYPE_4__ = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_ff*, %struct.snd_rawmidi_substream*, i32)* }
%struct.snd_rawmidi_substream = type { i32 }
%struct.fw_device = type { i32, i32, i32, i32 }

@finish_transmit_midi0_msg = common dso_local global i32 0, align 4
@finish_transmit_midi1_msg = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ff*, i32)* @transmit_midi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_midi_msg(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %12, i32 0, i32 8
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %18)
  store %struct.snd_rawmidi_substream* %19, %struct.snd_rawmidi_substream** %5, align 8
  %20 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %21 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.fw_device* @fw_parent_device(i32 %22)
  store %struct.fw_device* %23, %struct.fw_device** %7, align 8
  %24 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %25 = icmp eq %struct.snd_rawmidi_substream* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %28 = call i64 @snd_rawmidi_transmit_empty(%struct.snd_rawmidi_substream* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %2
  br label %170

31:                                               ; preds = %26
  %32 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %33 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %42 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %41, i32 0, i32 6
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40, %31
  br label %170

50:                                               ; preds = %40
  %51 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %52 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (...) @ktime_get()
  %59 = call i64 @ktime_after(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %63 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @schedule_work(i32* %67)
  br label %170

69:                                               ; preds = %50
  %70 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %71 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %70, i32 0, i32 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32 (%struct.snd_ff*, %struct.snd_rawmidi_substream*, i32)*, i32 (%struct.snd_ff*, %struct.snd_rawmidi_substream*, i32)** %75, align 8
  %77 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %78 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 %76(%struct.snd_ff* %77, %struct.snd_rawmidi_substream* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %170

84:                                               ; preds = %69
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %89 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %88, i32 0, i32 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %8, align 8
  %95 = load i32, i32* @finish_transmit_midi0_msg, align 4
  store i32 %95, i32* %10, align 4
  br label %105

96:                                               ; preds = %84
  %97 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %98 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %97, i32 0, i32 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %8, align 8
  %104 = load i32, i32* @finish_transmit_midi1_msg, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %96, %87
  %106 = call i32 (...) @ktime_get()
  %107 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %108 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 8
  %115 = load i32, i32* @NSEC_PER_SEC, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sdiv i32 %116, 31250
  %118 = call i32 @ktime_add_ns(i32 %106, i32 %117)
  %119 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %120 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %105
  %128 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  store i32 %128, i32* %11, align 4
  br label %131

129:                                              ; preds = %105
  %130 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %133 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  %135 = call i32 (...) @smp_rmb()
  %136 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %137 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %140 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %147 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %151 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %155 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %6, align 4
  %161 = mul nsw i32 %160, 4
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %164 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = call i32 @fw_send_request(i32 %138, i32* %144, i32 %145, i32 %148, i32 %149, i32 %152, i64 %153, i32* %159, i32 %161, i32 %162, i32* %168)
  br label %170

170:                                              ; preds = %131, %83, %61, %49, %30
  ret void
}

declare dso_local %struct.snd_rawmidi_substream* @READ_ONCE(i32) #1

declare dso_local %struct.fw_device* @fw_parent_device(i32) #1

declare dso_local i64 @snd_rawmidi_transmit_empty(%struct.snd_rawmidi_substream*) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @fw_send_request(i32, i32*, i32, i32, i32, i32, i64, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
