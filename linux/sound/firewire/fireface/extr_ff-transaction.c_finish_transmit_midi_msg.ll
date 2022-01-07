; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_finish_transmit_midi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_finish_transmit_midi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32*, i32*, i32*, i64*, i32* }
%struct.snd_rawmidi_substream = type { i32 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ff*, i32, i32)* @finish_transmit_midi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_transmit_midi_msg(%struct.snd_ff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_rawmidi_substream*, align 8
  store %struct.snd_ff* %0, %struct.snd_ff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %14)
  store %struct.snd_rawmidi_substream* %15, %struct.snd_rawmidi_substream** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @rcode_is_permanent_error(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 1, i32* %25, align 4
  br label %71

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RCODE_COMPLETE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @schedule_work(i32* %42)
  br label %71

44:                                               ; preds = %26
  %45 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %7, align 8
  %46 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %45, i32 %52)
  %54 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %55 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 0, i32* %59, align 4
  %60 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %7, align 8
  %61 = call i32 @snd_rawmidi_transmit_empty(%struct.snd_rawmidi_substream* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %44
  %64 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @schedule_work(i32* %69)
  br label %71

71:                                               ; preds = %19, %30, %63, %44
  ret void
}

declare dso_local %struct.snd_rawmidi_substream* @READ_ONCE(i32) #1

declare dso_local i64 @rcode_is_permanent_error(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit_empty(%struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
