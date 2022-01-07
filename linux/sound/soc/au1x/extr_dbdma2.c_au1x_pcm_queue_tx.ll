; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1x_pcm_queue_tx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1x_pcm_queue_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_dmadata = type { i64, i64, i32, i32, i64, i32 }

@DDMA_FLAGS_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xpsc_audio_dmadata*)* @au1x_pcm_queue_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1x_pcm_queue_tx(%struct.au1xpsc_audio_dmadata* %0) #0 {
  %2 = alloca %struct.au1xpsc_audio_dmadata*, align 8
  store %struct.au1xpsc_audio_dmadata* %0, %struct.au1xpsc_audio_dmadata** %2, align 8
  %3 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %4 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %7 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %10 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @DDMA_FLAGS_IE, align 4
  %13 = call i32 @au1xxx_dbdma_put_source(i32 %5, i32 %8, i64 %11, i32 %12)
  %14 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %15 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %19 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %22 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %28 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %31 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %36 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %38 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %41 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @au1xxx_dbdma_put_source(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
