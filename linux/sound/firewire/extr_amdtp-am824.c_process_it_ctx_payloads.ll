; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_process_it_ctx_payloads.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_process_it_ctx_payloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { %struct.amdtp_am824* }
%struct.amdtp_am824 = type { i32, i64 }
%struct.pkt_desc = type { i32, i32, i32* }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, %struct.pkt_desc*, i32, %struct.snd_pcm_substream*)* @process_it_ctx_payloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_it_ctx_payloads(%struct.amdtp_stream* %0, %struct.pkt_desc* %1, i32 %2, %struct.snd_pcm_substream* %3) #0 {
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca %struct.pkt_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.amdtp_am824*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pkt_desc*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %5, align 8
  store %struct.pkt_desc* %1, %struct.pkt_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.snd_pcm_substream* %3, %struct.snd_pcm_substream** %8, align 8
  %15 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %16 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %15, i32 0, i32 0
  %17 = load %struct.amdtp_am824*, %struct.amdtp_am824** %16, align 8
  store %struct.amdtp_am824* %17, %struct.amdtp_am824** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %68, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %18
  %23 = load %struct.pkt_desc*, %struct.pkt_desc** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %23, i64 %25
  store %struct.pkt_desc* %26, %struct.pkt_desc** %12, align 8
  %27 = load %struct.pkt_desc*, %struct.pkt_desc** %12, align 8
  %28 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  %30 = load %struct.pkt_desc*, %struct.pkt_desc** %12, align 8
  %31 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %14, align 4
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %34 = icmp ne %struct.snd_pcm_substream* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %22
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @write_pcm_s32(%struct.amdtp_stream* %36, %struct.snd_pcm_substream* %37, i32* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %44 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul i32 %42, %45
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %54

49:                                               ; preds = %22
  %50 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @write_pcm_silence(%struct.amdtp_stream* %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %35
  %55 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %56 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.pkt_desc*, %struct.pkt_desc** %12, align 8
  %64 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @write_midi_messages(%struct.amdtp_stream* %60, i32* %61, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %59, %54
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %18

71:                                               ; preds = %18
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @write_pcm_s32(%struct.amdtp_stream*, %struct.snd_pcm_substream*, i32*, i32, i32) #1

declare dso_local i32 @write_pcm_silence(%struct.amdtp_stream*, i32*, i32) #1

declare dso_local i32 @write_midi_messages(%struct.amdtp_stream*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
