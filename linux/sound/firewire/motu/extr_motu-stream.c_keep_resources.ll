; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_keep_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_keep_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i32, %struct.TYPE_3__*, %struct.snd_motu_packet_format, %struct.fw_iso_resources, %struct.snd_motu_packet_format, %struct.fw_iso_resources, %struct.amdtp_stream }
%struct.TYPE_3__ = type { i32 }
%struct.snd_motu_packet_format = type { i32 }
%struct.fw_iso_resources = type { i32 }
%struct.amdtp_stream = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SND_MOTU_SPEC_RX_MIDI_2ND_Q = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_RX_MIDI_3RD_Q = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_TX_MIDI_2ND_Q = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_TX_MIDI_3RD_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*, i32, %struct.amdtp_stream*)* @keep_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_resources(%struct.snd_motu* %0, i32 %1, %struct.amdtp_stream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_motu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca %struct.fw_iso_resources*, align 8
  %9 = alloca %struct.snd_motu_packet_format*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.amdtp_stream* %2, %struct.amdtp_stream** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %13 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %14 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %13, i32 0, i32 6
  %15 = icmp eq %struct.amdtp_stream* %12, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %18 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %17, i32 0, i32 5
  store %struct.fw_iso_resources* %18, %struct.fw_iso_resources** %8, align 8
  %19 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %20 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %19, i32 0, i32 4
  store %struct.snd_motu_packet_format* %20, %struct.snd_motu_packet_format** %9, align 8
  %21 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %22 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SND_MOTU_SPEC_RX_MIDI_2ND_Q, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %16
  %30 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %31 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SND_MOTU_SPEC_RX_MIDI_3RD_Q, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %16
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %29
  br label %64

40:                                               ; preds = %3
  %41 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %42 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %41, i32 0, i32 3
  store %struct.fw_iso_resources* %42, %struct.fw_iso_resources** %8, align 8
  %43 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %44 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %43, i32 0, i32 2
  store %struct.snd_motu_packet_format* %44, %struct.snd_motu_packet_format** %9, align 8
  %45 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %46 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SND_MOTU_SPEC_TX_MIDI_2ND_Q, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %40
  %54 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %55 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SND_MOTU_SPEC_TX_MIDI_3RD_Q, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53, %40
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %69 = call i32 @amdtp_motu_set_parameters(%struct.amdtp_stream* %65, i32 %66, i32 %67, %struct.snd_motu_packet_format* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %85

74:                                               ; preds = %64
  %75 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %8, align 8
  %76 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %77 = call i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream* %76)
  %78 = load %struct.snd_motu*, %struct.snd_motu** %5, align 8
  %79 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_4__* @fw_parent_device(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @fw_iso_resources_allocate(%struct.fw_iso_resources* %75, i32 %77, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %74, %72
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @amdtp_motu_set_parameters(%struct.amdtp_stream*, i32, i32, %struct.snd_motu_packet_format*) #1

declare dso_local i32 @fw_iso_resources_allocate(%struct.fw_iso_resources*, i32, i32) #1

declare dso_local i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream*) #1

declare dso_local %struct.TYPE_4__* @fw_parent_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
