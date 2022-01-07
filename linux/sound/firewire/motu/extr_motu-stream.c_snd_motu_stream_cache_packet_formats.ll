; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_snd_motu_stream_cache_packet_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_snd_motu_stream_cache_packet_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_6__ = type { i32, i32 }

@SND_MOTU_SPEC_TX_MIDI_2ND_Q = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_TX_MIDI_3RD_Q = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_RX_MIDI_2ND_Q = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_RX_MIDI_3RD_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_motu_stream_cache_packet_formats(%struct.snd_motu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_motu*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %3, align 8
  %5 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %6 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.snd_motu*)**
  %12 = load i32 (%struct.snd_motu*)*, i32 (%struct.snd_motu*)** %11, align 8
  %13 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %14 = call i32 %12(%struct.snd_motu* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %86

19:                                               ; preds = %1
  %20 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %21 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SND_MOTU_SPEC_TX_MIDI_2ND_Q, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %30 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %33 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 6, i32* %34, align 4
  br label %52

35:                                               ; preds = %19
  %36 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %37 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SND_MOTU_SPEC_TX_MIDI_3RD_Q, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %46 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 8, i32* %47, align 8
  %48 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %49 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 7, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %35
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %54 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SND_MOTU_SPEC_RX_MIDI_2ND_Q, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %63 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 4, i32* %64, align 8
  %65 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %66 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 6, i32* %67, align 4
  br label %85

68:                                               ; preds = %52
  %69 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %70 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SND_MOTU_SPEC_RX_MIDI_3RD_Q, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %79 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 8, i32* %80, align 8
  %81 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %82 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i32 7, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %68
  br label %85

85:                                               ; preds = %84, %61
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %17
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
