; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dma_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_engine = type { %struct.TYPE_3__*, i32, i32, %struct.hda_codec* }
%struct.TYPE_3__ = type { i64 }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_engine*)* @dma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_reset(%struct.dma_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_engine*, align 8
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.ca0132_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_engine* %0, %struct.dma_engine** %3, align 8
  %7 = load %struct.dma_engine*, %struct.dma_engine** %3, align 8
  %8 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %7, i32 0, i32 3
  %9 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  store %struct.hda_codec* %9, %struct.hda_codec** %4, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %11, align 8
  store %struct.ca0132_spec* %12, %struct.ca0132_spec** %5, align 8
  %13 = load %struct.dma_engine*, %struct.dma_engine** %3, align 8
  %14 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = load %struct.dma_engine*, %struct.dma_engine** %3, align 8
  %22 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @snd_hda_codec_load_dsp_cleanup(%struct.hda_codec* %20, %struct.TYPE_3__* %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %27 = load %struct.dma_engine*, %struct.dma_engine** %3, align 8
  %28 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dma_engine*, %struct.dma_engine** %3, align 8
  %31 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dma_engine*, %struct.dma_engine** %3, align 8
  %34 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @snd_hda_codec_load_dsp_prepare(%struct.hda_codec* %26, i32 %29, i32 %32, %struct.TYPE_3__* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %25
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %44 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @snd_hda_codec_load_dsp_cleanup(%struct.hda_codec*, %struct.TYPE_3__*) #1

declare dso_local i32 @snd_hda_codec_load_dsp_prepare(%struct.hda_codec*, i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
