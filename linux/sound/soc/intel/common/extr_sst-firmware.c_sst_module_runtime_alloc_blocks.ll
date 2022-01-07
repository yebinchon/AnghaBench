; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_runtime_alloc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_runtime_alloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_module_runtime = type { i32, i32, %struct.sst_module*, %struct.sst_dsp* }
%struct.sst_module = type { i64, i32 }
%struct.sst_dsp = type { i32, i32 }
%struct.sst_block_allocator = type { i64, i32, i32 }

@SST_MEM_DRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"persistent fixed block request 0x%x bytes type %d offset 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"persistent block request 0x%x bytes type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"error: no free blocks for runtime module size 0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"error: runtime block prepare failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_module_runtime_alloc_blocks(%struct.sst_module_runtime* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_module_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sst_dsp*, align 8
  %7 = alloca %struct.sst_module*, align 8
  %8 = alloca %struct.sst_block_allocator, align 8
  %9 = alloca i32, align 4
  store %struct.sst_module_runtime* %0, %struct.sst_module_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %11 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %10, i32 0, i32 3
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %11, align 8
  store %struct.sst_dsp* %12, %struct.sst_dsp** %6, align 8
  %13 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %13, i32 0, i32 2
  %15 = load %struct.sst_module*, %struct.sst_module** %14, align 8
  store %struct.sst_module* %15, %struct.sst_module** %7, align 8
  %16 = load %struct.sst_module*, %struct.sst_module** %7, align 8
  %17 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %110

21:                                               ; preds = %2
  %22 = call i32 @memset(%struct.sst_block_allocator* %8, i32 0, i32 16)
  %23 = load %struct.sst_module*, %struct.sst_module** %7, align 8
  %24 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %8, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @SST_MEM_DRAM, align 4
  %28 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %8, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %30 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %8, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %38 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %8, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i64, i32, ...) @dev_dbg(i32 %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %43, i32 %45)
  %47 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %48 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %48, i32 0, i32 1
  %50 = call i32 @block_alloc_fixed(%struct.sst_dsp* %47, %struct.sst_block_allocator* %8, i32* %49)
  store i32 %50, i32* %9, align 4
  br label %64

51:                                               ; preds = %21
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %53 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %8, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i64, i32, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %58)
  %60 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %61 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %62 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %61, i32 0, i32 1
  %63 = call i32 @block_alloc(%struct.sst_dsp* %60, %struct.sst_block_allocator* %8, i32* %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %51, %34
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %69 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sst_module*, %struct.sst_module** %7, align 8
  %72 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %76 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %110

80:                                               ; preds = %64
  %81 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %84 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %86 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  %87 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %86, i32 0, i32 1
  %88 = call i32 @block_list_prepare(%struct.sst_dsp* %85, i32* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %93 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %101

96:                                               ; preds = %80
  %97 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %98 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %110

101:                                              ; preds = %91
  %102 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %103 = load %struct.sst_module*, %struct.sst_module** %7, align 8
  %104 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %103, i32 0, i32 1
  %105 = call i32 @block_list_remove(%struct.sst_dsp* %102, i32* %104)
  %106 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %107 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %101, %96, %67, %20
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @memset(%struct.sst_block_allocator*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @block_alloc_fixed(%struct.sst_dsp*, %struct.sst_block_allocator*, i32*) #1

declare dso_local i32 @block_alloc(%struct.sst_dsp*, %struct.sst_block_allocator*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @block_list_prepare(%struct.sst_dsp*, i32*) #1

declare dso_local i32 @block_list_remove(%struct.sst_dsp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
