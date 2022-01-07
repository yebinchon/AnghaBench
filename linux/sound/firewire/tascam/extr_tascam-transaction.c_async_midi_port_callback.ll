; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_async_midi_port_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-transaction.c_async_midi_port_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.snd_fw_async_midi_port = type { i32, i32, i32, i64, i32, i32 }
%struct.snd_rawmidi_substream = type { i32 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, i32, i8*, i64, i8*)* @async_midi_port_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_midi_port_callback(%struct.fw_card* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.snd_fw_async_midi_port*, align 8
  %12 = alloca %struct.snd_rawmidi_substream*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.snd_fw_async_midi_port*
  store %struct.snd_fw_async_midi_port* %14, %struct.snd_fw_async_midi_port** %11, align 8
  %15 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %11, align 8
  %16 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %17)
  store %struct.snd_rawmidi_substream* %18, %struct.snd_rawmidi_substream** %12, align 8
  %19 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %20 = icmp eq %struct.snd_rawmidi_substream* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %53

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @RCODE_COMPLETE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %28 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %11, align 8
  %29 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %27, i32 %30)
  br label %43

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @rcode_is_permanent_error(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %11, align 8
  %38 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  br label %42

39:                                               ; preds = %32
  %40 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %11, align 8
  %41 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %11, align 8
  %45 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %47 = call i32 @snd_rawmidi_transmit_empty(%struct.snd_rawmidi_substream* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %11, align 8
  %51 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %50, i32 0, i32 2
  %52 = call i32 @schedule_work(i32* %51)
  br label %53

53:                                               ; preds = %21, %49, %43
  ret void
}

declare dso_local %struct.snd_rawmidi_substream* @READ_ONCE(i32) #1

declare dso_local i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @rcode_is_permanent_error(i32) #1

declare dso_local i32 @snd_rawmidi_transmit_empty(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
