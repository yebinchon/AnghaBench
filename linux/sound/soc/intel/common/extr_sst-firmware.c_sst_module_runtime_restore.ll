; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_runtime_restore.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_runtime_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_module_runtime = type { i64, i32, %struct.sst_module*, %struct.sst_dsp* }
%struct.sst_module = type { i32 }
%struct.sst_dsp = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sst_module_runtime_context = type { i32*, i32 }

@.str = private unnamed_addr constant [47 x i8] c"restoring runtime %d memory at 0x%x size 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"no context buffer need to restore!\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"error: module copy failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_module_runtime_restore(%struct.sst_module_runtime* %0, %struct.sst_module_runtime_context* %1) #0 {
  %3 = alloca %struct.sst_module_runtime*, align 8
  %4 = alloca %struct.sst_module_runtime_context*, align 8
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca %struct.sst_module*, align 8
  %7 = alloca i32, align 4
  store %struct.sst_module_runtime* %0, %struct.sst_module_runtime** %3, align 8
  store %struct.sst_module_runtime_context* %1, %struct.sst_module_runtime_context** %4, align 8
  %8 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %8, i32 0, i32 3
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %9, align 8
  store %struct.sst_dsp* %10, %struct.sst_dsp** %5, align 8
  %11 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %11, i32 0, i32 2
  %13 = load %struct.sst_module*, %struct.sst_module** %12, align 8
  store %struct.sst_module* %13, %struct.sst_module** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %15 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sst_module*, %struct.sst_module** %6, align 8
  %24 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22, i32 %25)
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %4, align 8
  %31 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %36 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %109

39:                                               ; preds = %2
  %40 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %41 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %39
  %45 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %46 = call i32 @sst_dsp_dma_get_channel(%struct.sst_dsp* %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %109

50:                                               ; preds = %44
  %51 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %53 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %3, align 8
  %57 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %4, align 8
  %61 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sst_module*, %struct.sst_module** %6, align 8
  %64 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sst_dsp_dma_copyto(%struct.sst_dsp* %51, i64 %59, i32 %62, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %68 = call i32 @sst_dsp_dma_put_channel(%struct.sst_dsp* %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %50
  %72 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %73 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %109

76:                                               ; preds = %50
  br label %93

77:                                               ; preds = %39
  %78 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %79 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %3, align 8
  %83 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %4, align 8
  %87 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.sst_module*, %struct.sst_module** %6, align 8
  %90 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sst_memcpy32(i64 %85, i32* %88, i32 %91)
  br label %93

93:                                               ; preds = %77, %76
  %94 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %95 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sst_module*, %struct.sst_module** %6, align 8
  %98 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %4, align 8
  %101 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %4, align 8
  %104 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dma_free_coherent(i32 %96, i32 %99, i32* %102, i32 %105)
  %107 = load %struct.sst_module_runtime_context*, %struct.sst_module_runtime_context** %4, align 8
  %108 = getelementptr inbounds %struct.sst_module_runtime_context, %struct.sst_module_runtime_context* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %93, %71, %49, %34
  %110 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %111 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @sst_dsp_dma_get_channel(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_dsp_dma_copyto(%struct.sst_dsp*, i64, i32, i32) #1

declare dso_local i32 @sst_dsp_dma_put_channel(%struct.sst_dsp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sst_memcpy32(i64, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
