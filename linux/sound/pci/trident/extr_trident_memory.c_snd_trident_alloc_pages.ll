; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_memory.c_snd_trident_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_memory.c_snd_trident_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_util_memblk = type { i32 }
%struct.snd_trident = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_util_memblk* @snd_trident_alloc_pages(%struct.snd_trident* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_util_memblk*, align 8
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %6 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %7 = icmp ne %struct.snd_trident* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = icmp ne %struct.snd_pcm_substream* %9, null
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %34

18:                                               ; preds = %12
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_DMA_TYPE_DEV_SG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %29 = call %struct.snd_util_memblk* @snd_trident_alloc_sg_pages(%struct.snd_trident* %27, %struct.snd_pcm_substream* %28)
  store %struct.snd_util_memblk* %29, %struct.snd_util_memblk** %3, align 8
  br label %34

30:                                               ; preds = %18
  %31 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %33 = call %struct.snd_util_memblk* @snd_trident_alloc_cont_pages(%struct.snd_trident* %31, %struct.snd_pcm_substream* %32)
  store %struct.snd_util_memblk* %33, %struct.snd_util_memblk** %3, align 8
  br label %34

34:                                               ; preds = %30, %26, %17
  %35 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %3, align 8
  ret %struct.snd_util_memblk* %35
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_util_memblk* @snd_trident_alloc_sg_pages(%struct.snd_trident*, %struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_util_memblk* @snd_trident_alloc_cont_pages(%struct.snd_trident*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
