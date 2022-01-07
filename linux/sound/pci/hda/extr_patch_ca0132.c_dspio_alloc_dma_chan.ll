; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspio_alloc_dma_chan.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspio_alloc_dma_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"     dspio_alloc_dma_chan() -- begin\0A\00", align 1
@MASTERCONTROL = common dso_local global i32 0, align 4
@MASTERCONTROL_ALLOC_DMA_CHAN = common dso_local global i32 0, align 4
@SCP_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dspio_alloc_dma_chan: SCP Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"no free dma channels to allocate\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"dspio_alloc_dma_chan: chan=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"     dspio_alloc_dma_chan() -- complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32*)* @dspio_alloc_dma_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspio_alloc_dma_chan(%struct.hda_codec* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = load i32, i32* @MASTERCONTROL, align 4
  %12 = load i32, i32* @MASTERCONTROL_ALLOC_DMA_CHAN, align 4
  %13 = load i32, i32* @SCP_GET, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @dspio_scp(%struct.hda_codec* %10, i32 %11, i32 32, i32 %12, i32 %13, i32* null, i32 0, i32* %14, i32* %7)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %20 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %29 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %22
  %33 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %38 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %27, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, ...) #1

declare dso_local i32 @dspio_scp(%struct.hda_codec*, i32, i32, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
