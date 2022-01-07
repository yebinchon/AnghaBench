; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_write_midi_messages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_write_midi_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, %struct.amdtp_am824* }
%struct.amdtp_am824 = type { i64, i32** }

@MAX_MIDI_RX_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, i32*, i32, i32)* @write_midi_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_midi_messages(%struct.amdtp_stream* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdtp_am824*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %14 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %13, i32 0, i32 1
  %15 = load %struct.amdtp_am824*, %struct.amdtp_am824** %14, align 8
  store %struct.amdtp_am824* %15, %struct.amdtp_am824** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %81, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %23 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add i32 %26, %27
  %29 = urem i32 %28, 8
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @MAX_MIDI_RX_BLOCKS, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %20
  %34 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @midi_ratelimit_per_packet(%struct.amdtp_stream* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %40 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %38
  %48 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %49 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = call i32 @snd_rawmidi_transmit(i32* %54, i32* %56, i32 1)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @midi_rate_use_one_byte(%struct.amdtp_stream* %60, i32 %61)
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 129, i32* %64, align 4
  br label %70

65:                                               ; preds = %47, %38, %33, %20
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 128, i32* %67, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %59
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 0, i32* %74, align 4
  %75 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %76 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %6, align 8
  br label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %16

84:                                               ; preds = %16
  ret void
}

declare dso_local i64 @midi_ratelimit_per_packet(%struct.amdtp_stream*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit(i32*, i32*, i32) #1

declare dso_local i32 @midi_rate_use_one_byte(%struct.amdtp_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
