; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.oxygen = type { i32 }

@channel_base_registers = common dso_local global i64* null, align 8
@PCM_MULTICH = common dso_local global i32 0, align 4
@OXYGEN_DMA_MULTICH_COUNT = common dso_local global i64 0, align 8
@OXYGEN_DMA_MULTICH_TCOUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @oxygen_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.oxygen* %10, %struct.oxygen** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call i32 @oxygen_substream_channel(%struct.snd_pcm_substream* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %15 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %14)
  %16 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %23 = load i64*, i64** @channel_base_registers, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @oxygen_write32(%struct.oxygen* %22, i64 %27, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PCM_MULTICH, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %21
  %39 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %40 = load i64, i64* @OXYGEN_DMA_MULTICH_COUNT, align 8
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %42 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %41)
  %43 = sdiv i32 %42, 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @oxygen_write32(%struct.oxygen* %39, i64 %40, i32 %44)
  %46 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %47 = load i64, i64* @OXYGEN_DMA_MULTICH_TCOUNT, align 8
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %49 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %48)
  %50 = sdiv i32 %49, 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @oxygen_write32(%struct.oxygen* %46, i64 %47, i32 %51)
  br label %78

53:                                               ; preds = %21
  %54 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %55 = load i64*, i64** @channel_base_registers, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 4
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %62 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %61)
  %63 = sdiv i32 %62, 4
  %64 = sub nsw i32 %63, 1
  %65 = call i32 @oxygen_write16(%struct.oxygen* %54, i64 %60, i32 %64)
  %66 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %67 = load i64*, i64** @channel_base_registers, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 6
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %74 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %73)
  %75 = sdiv i32 %74, 4
  %76 = sub nsw i32 %75, 1
  %77 = call i32 @oxygen_write16(%struct.oxygen* %66, i64 %72, i32 %76)
  br label %78

78:                                               ; preds = %53, %38
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %19
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @oxygen_substream_channel(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_write32(%struct.oxygen*, i64, i32) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
