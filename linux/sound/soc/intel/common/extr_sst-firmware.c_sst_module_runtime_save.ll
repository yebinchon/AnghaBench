; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_runtime_save.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_runtime_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_module_runtime = type { i64, i32, %struct.sst_module*, %struct.sst_dsp* }
%struct.sst_module = type { i32 }
%struct.sst_dsp = type { i32, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sst_module_runtime_context = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"saving runtime %d memory at 0x%x size 0x%x\0A\00", align 1
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error: DMA context alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"error: context copy failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_module_runtime_save(%struct.sst_module_runtime* %0, %struct.sst_module_runtime_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_module_runtime*, align 8
  %5 = alloca %struct.sst_module_runtime_context*, align 8
  %6 = alloca %struct.sst_dsp*, align 8
  %7 = alloca %struct.sst_module*, align 8
  %8 = alloca i32, align 4
  store %struct.sst_module_runtime* %0, %struct.sst_module_runtime** %4, align 8
  store %struct.sst_module_runtime_context* %1, %struct.sst_module_runtime_context** %5, align 8
  %9 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %10 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %9, i32 0, i32 3
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %10, align 8
  store %struct.sst_dsp* %11, %struct.sst_dsp** %6, align 8
  %12 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %12, i32 0, i32 2
  %14 = load %struct.sst_module*, %struct.sst_module** %13, align 8
  store %struct.sst_module* %14, %struct.sst_module** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %16 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %22 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sst_module*, %struct.sst_module** %7, align 8
  %25 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %23, i32 %26)
  %28 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %29 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sst_module*, %struct.sst_module** %7, align 8
  %32 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %5, align 8
  %35 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %34, i32 0, i32 1
  %36 = load i32, i32* @GFP_DMA, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @dma_alloc_coherent(i32 %30, i32 %33, i32* %35, i32 %38)
  %40 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %5, align 8
  %41 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %5, align 8
  %43 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %2
  %47 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %48 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %116

53:                                               ; preds = %2
  %54 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %55 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %58 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %53
  %62 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %63 = call i32 @sst_dsp_dma_get_channel(%struct.sst_dsp* %62, i32 0)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %111

67:                                               ; preds = %61
  %68 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %69 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %5, align 8
  %70 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %73 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %77 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.sst_module*, %struct.sst_module** %7, align 8
  %81 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sst_dsp_dma_copyfrom(%struct.sst_dsp* %68, i32 %71, i64 %79, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %85 = call i32 @sst_dsp_dma_put_channel(%struct.sst_dsp* %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %67
  %89 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %90 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %111

93:                                               ; preds = %67
  br label %110

94:                                               ; preds = %53
  %95 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %5, align 8
  %96 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %99 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %103 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load %struct.sst_module*, %struct.sst_module** %7, align 8
  %107 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @sst_memcpy32(i32 %97, i64 %105, i32 %108)
  br label %110

110:                                              ; preds = %94, %93
  br label %111

111:                                              ; preds = %110, %88, %66
  %112 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %113 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %111, %46
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst_dsp_dma_get_channel(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_dsp_dma_copyfrom(%struct.sst_dsp*, i32, i64, i32) #1

declare dso_local i32 @sst_dsp_dma_put_channel(%struct.sst_dsp*) #1

declare dso_local i32 @sst_memcpy32(i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
