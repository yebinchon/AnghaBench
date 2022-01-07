; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_channel_dma_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_channel_dma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdspm*, %struct.snd_pcm_substream*, i32, i32)* @hdspm_set_channel_dma_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdspm_set_channel_dma_addr(%struct.hdspm* %0, %struct.snd_pcm_substream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = mul nsw i32 %10, 16
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %29, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 %14, 16
  %16 = add nsw i32 %15, 16
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 4, %21
  %23 = add i32 %20, %22
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 4096, %25
  %27 = call i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %24, i32 %26)
  %28 = call i32 @hdspm_write(%struct.hdspm* %19, i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %12

32:                                               ; preds = %12
  ret void
}

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
