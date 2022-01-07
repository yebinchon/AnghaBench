; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_initialize_memory.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_initialize_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_5__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@HDSP_DMA_AREA_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: no buffers available\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HDSP_inputBufferAddress = common dso_local global i32 0, align 4
@HDSP_outputBufferAddress = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @snd_hdsp_initialize_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_initialize_memory(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %6 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %7 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %10 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %9, i32 0, i32 3
  %11 = load i32, i32* @HDSP_DMA_AREA_BYTES, align 4
  %12 = call i64 @snd_hammerfall_get_buffer(i32 %8, %struct.TYPE_5__* %10, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %16 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %19 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %18, i32 0, i32 2
  %20 = load i32, i32* @HDSP_DMA_AREA_BYTES, align 4
  %21 = call i64 @snd_hammerfall_get_buffer(i32 %17, %struct.TYPE_5__* %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %14, %1
  %24 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %25 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %31 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %30, i32 0, i32 3
  %32 = call i32 @snd_dma_free_pages(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %35 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %34, i32 0, i32 5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %40 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %90

45:                                               ; preds = %14
  %46 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %47 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @ALIGN(i64 %49, i32 65536)
  store i64 %50, i64* %5, align 8
  %51 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %52 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @ALIGN(i64 %54, i32 65536)
  store i64 %55, i64* %4, align 8
  %56 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %57 = load i32, i32* @HDSP_inputBufferAddress, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @hdsp_write(%struct.hdsp* %56, i32 %57, i64 %58)
  %60 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %61 = load i32, i32* @HDSP_outputBufferAddress, align 4
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @hdsp_write(%struct.hdsp* %60, i32 %61, i64 %62)
  %64 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %65 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %70 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %68, %72
  %74 = add i64 %67, %73
  %75 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %76 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %78 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %83 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %81, %85
  %87 = add i64 %80, %86
  %88 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %89 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %45, %33
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @snd_hammerfall_get_buffer(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
