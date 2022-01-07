; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_amdtp-ff.c_process_it_ctx_payloads.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_amdtp-ff.c_process_it_ctx_payloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32 }
%struct.pkt_desc = type { i32, i64 }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, %struct.pkt_desc*, i32, %struct.snd_pcm_substream*)* @process_it_ctx_payloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_it_ctx_payloads(%struct.amdtp_stream* %0, %struct.pkt_desc* %1, i32 %2, %struct.snd_pcm_substream* %3) #0 {
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca %struct.pkt_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pkt_desc*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %5, align 8
  store %struct.pkt_desc* %1, %struct.pkt_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.snd_pcm_substream* %3, %struct.snd_pcm_substream** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %48, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load %struct.pkt_desc*, %struct.pkt_desc** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %19, i64 %21
  store %struct.pkt_desc* %22, %struct.pkt_desc** %11, align 8
  %23 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %24 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %12, align 8
  %27 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %28 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %31 = icmp ne %struct.snd_pcm_substream* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %18
  %33 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @write_pcm_s32(%struct.amdtp_stream* %33, %struct.snd_pcm_substream* %34, i32* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %47

42:                                               ; preds = %18
  %43 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @write_pcm_silence(%struct.amdtp_stream* %43, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @write_pcm_s32(%struct.amdtp_stream*, %struct.snd_pcm_substream*, i32*, i32, i32) #1

declare dso_local i32 @write_pcm_silence(%struct.amdtp_stream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
