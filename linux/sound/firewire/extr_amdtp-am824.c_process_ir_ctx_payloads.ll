; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_process_ir_ctx_payloads.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_process_ir_ctx_payloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { %struct.amdtp_am824* }
%struct.amdtp_am824 = type { i32, i64 }
%struct.pkt_desc = type { i32, i32, i32* }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, %struct.pkt_desc*, i32, %struct.snd_pcm_substream*)* @process_ir_ctx_payloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ir_ctx_payloads(%struct.amdtp_stream* %0, %struct.pkt_desc* %1, i32 %2, %struct.snd_pcm_substream* %3) #0 {
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

18:                                               ; preds = %63, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %66

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
  %41 = call i32 @read_pcm_s32(%struct.amdtp_stream* %36, %struct.snd_pcm_substream* %37, i32* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %44 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul i32 %42, %45
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %35, %22
  %50 = load %struct.amdtp_am824*, %struct.amdtp_am824** %9, align 8
  %51 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.pkt_desc*, %struct.pkt_desc** %12, align 8
  %59 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @read_midi_messages(%struct.amdtp_stream* %55, i32* %56, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %54, %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %18

66:                                               ; preds = %18
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @read_pcm_s32(%struct.amdtp_stream*, %struct.snd_pcm_substream*, i32*, i32, i32) #1

declare dso_local i32 @read_midi_messages(%struct.amdtp_stream*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
