; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i64, i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, i64, %struct.snd_ymfpci* }

@.str = private unnamed_addr constant [14 x i8] c"YMFPCI - PCM2\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_ymfpci_capture_ac97_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"YMFPCI - %s\00", align 1
@PCI_DEVICE_ID_YAMAHA_754 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Direct Recording\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"AC'97\00", align 1
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ymfpci_pcm2(%struct.snd_ymfpci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ymfpci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32 0, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %18, i32 0, i32 2
  store %struct.snd_ymfpci* %17, %struct.snd_ymfpci** %19, align 8
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %21 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %22 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %20, i32 %21, i32* @snd_ymfpci_capture_ac97_ops)
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_DEVICE_ID_YAMAHA_754, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %35 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %37, i32 0, i32 2
  store %struct.snd_pcm* %36, %struct.snd_pcm** %38, align 8
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %40 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %41 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snd_dma_pci_data(i32 %43)
  %45 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %39, i32 %40, i32 %44, i32 65536, i32 262144)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %16, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
