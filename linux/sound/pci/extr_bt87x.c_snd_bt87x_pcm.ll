; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bt87x = type { i32, i32 }
%struct.snd_pcm = type { i32, %struct.snd_bt87x* }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_bt87x_pcm_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bt87x*, i32, i8*)* @snd_bt87x_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_pcm(%struct.snd_bt87x* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_bt87x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm*, align 8
  store %struct.snd_bt87x* %0, %struct.snd_bt87x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %11 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @snd_pcm_new(i32 %12, i8* %13, i32 %14, i32 0, i32 1, %struct.snd_pcm** %9)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 1
  store %struct.snd_bt87x* %21, %struct.snd_bt87x** %23, align 8
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strcpy(i32 %26, i8* %27)
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %30 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %31 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %29, i32 %30, i32* @snd_bt87x_pcm_ops)
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %33 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %34 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %35 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_dma_pci_data(i32 %36)
  %38 = call i32 @ALIGN(i32 1043460, i32 1024)
  %39 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %32, i32 %33, i32 %37, i32 131072, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %20, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
