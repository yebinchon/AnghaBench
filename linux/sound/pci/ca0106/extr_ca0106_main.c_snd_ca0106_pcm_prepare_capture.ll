; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_prepare_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_prepare_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i32 }
%struct.snd_ca0106 = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@HCFG_CAPTURE_S32_LE = common dso_local global i32 0, align 4
@HCFG = common dso_local global i64 0, align 8
@ADC_MASTER = common dso_local global i32 0, align 4
@CAPTURE_DMA_ADDR = common dso_local global i32 0, align 4
@CAPTURE_BUFFER_SIZE = common dso_local global i32 0, align 4
@CAPTURE_POINTER = common dso_local global i32 0, align 4
@table_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ca0106_pcm_prepare_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm_prepare_capture(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ca0106*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_ca0106_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %14)
  store %struct.snd_ca0106* %15, %struct.snd_ca0106** %3, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %4, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 8
  %21 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %20, align 8
  store %struct.snd_ca0106_pcm* %21, %struct.snd_ca0106_pcm** %5, align 8
  %22 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %5, align 8
  %23 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @HCFG_CAPTURE_S32_LE, align 4
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %10, align 4
  store i32 49152, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %33 [
    i32 44100, label %29
    i32 48000, label %30
    i32 96000, label %31
    i32 192000, label %32
  ]

29:                                               ; preds = %1
  store i32 16384, i32* %12, align 4
  br label %34

30:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %34

31:                                               ; preds = %1
  store i32 32768, i32* %12, align 4
  store i32 10, i32* %10, align 4
  br label %34

32:                                               ; preds = %1
  store i32 49152, i32* %12, align 4
  store i32 10, i32* %10, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %41 [
    i32 129, label %38
    i32 128, label %39
  ]

38:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @HCFG_CAPTURE_S32_LE, align 4
  store i32 %40, i32* %8, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %39, %38
  %43 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %44 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HCFG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @inl(i64 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %57 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HCFG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outl(i32 %55, i64 %60)
  %62 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %63 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %62, i32 113, i32 0)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %13, align 4
  %70 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %70, i32 113, i32 0, i32 %71)
  %73 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %74 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %42
  %80 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %81 = load i32, i32* @ADC_MASTER, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @snd_ca0106_i2c_write(%struct.snd_ca0106* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %42
  %85 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %85, i32 19, i32 %86, i32 0)
  %88 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %89 = load i32, i32* @CAPTURE_DMA_ADDR, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %88, i32 %89, i32 %90, i32 %93)
  %95 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %96 = load i32, i32* @CAPTURE_BUFFER_SIZE, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %98, i32 %101)
  %103 = shl i32 %102, 16
  %104 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %95, i32 %96, i32 %97, i32 %103)
  %105 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %106 = load i32, i32* @CAPTURE_POINTER, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %105, i32 %106, i32 %107, i32 0)
  ret i32 0
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i32 @snd_ca0106_ptr_write(%struct.snd_ca0106*, i32, i32, i32) #1

declare dso_local i32 @snd_ca0106_i2c_write(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
