; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_alloc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_alloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_module = type { i32, i32, i32, i64, i64, i32, %struct.sst_fw*, %struct.sst_dsp* }
%struct.sst_fw = type { i64 }
%struct.sst_dsp = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sst_block_allocator = type { i32, i64, i32 }

@.str = private unnamed_addr constant [49 x i8] c"block request 0x%x bytes at offset 0x%x type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"error: no free blocks for section at offset 0x%x size 0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"error: fw module prepare failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"error: module copy failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_module_alloc_blocks(%struct.sst_module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_module*, align 8
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca %struct.sst_fw*, align 8
  %6 = alloca %struct.sst_block_allocator, align 8
  %7 = alloca i32, align 4
  store %struct.sst_module* %0, %struct.sst_module** %3, align 8
  %8 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %9 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %8, i32 0, i32 7
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %9, align 8
  store %struct.sst_dsp* %10, %struct.sst_dsp** %4, align 8
  %11 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %12 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %11, i32 0, i32 6
  %13 = load %struct.sst_fw*, %struct.sst_fw** %12, align 8
  store %struct.sst_fw* %13, %struct.sst_fw** %5, align 8
  %14 = call i32 @memset(%struct.sst_block_allocator* %6, i32 0, i32 24)
  %15 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %16 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %6, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %20 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %24 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %6, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %6, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %33, i32 %35)
  %37 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %38 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %41 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %42 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %41, i32 0, i32 0
  %43 = call i32 @block_alloc_fixed(%struct.sst_dsp* %40, %struct.sst_block_allocator* %6, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %1
  %47 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %48 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %51 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %54 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 %55)
  %57 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %58 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %138

62:                                               ; preds = %1
  %63 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %64 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %65 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %64, i32 0, i32 0
  %66 = call i32 @block_list_prepare(%struct.sst_dsp* %63, i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %71 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %129

74:                                               ; preds = %62
  %75 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %76 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %74
  %80 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %81 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %82 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %86 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load %struct.sst_fw*, %struct.sst_fw** %5, align 8
  %90 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %93 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %97 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sst_dsp_dma_copyto(%struct.sst_dsp* %80, i64 %88, i64 %95, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %79
  %103 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %104 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %129

107:                                              ; preds = %79
  br label %124

108:                                              ; preds = %74
  %109 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %110 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %114 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %118 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %121 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @sst_memcpy32(i64 %116, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %108, %107
  %125 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %126 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %138

129:                                              ; preds = %102, %69
  %130 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %131 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %132 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %131, i32 0, i32 0
  %133 = call i32 @block_list_remove(%struct.sst_dsp* %130, i32* %132)
  %134 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %135 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %129, %124, %46
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @memset(%struct.sst_block_allocator*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @block_alloc_fixed(%struct.sst_dsp*, %struct.sst_block_allocator*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @block_list_prepare(%struct.sst_dsp*, i32*) #1

declare dso_local i32 @sst_dsp_dma_copyto(%struct.sst_dsp*, i64, i64, i32) #1

declare dso_local i32 @sst_memcpy32(i64, i32, i32) #1

declare dso_local i32 @block_list_remove(%struct.sst_dsp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
