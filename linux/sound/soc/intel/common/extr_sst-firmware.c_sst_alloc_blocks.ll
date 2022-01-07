; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_alloc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_alloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, i32 }
%struct.sst_block_allocator = type { i32, i32, i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"block request 0x%x bytes at offset 0x%x type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error: can't alloc blocks %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"error: prepare failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_alloc_blocks(%struct.sst_dsp* %0, %struct.sst_block_allocator* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca %struct.sst_block_allocator*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store %struct.sst_block_allocator* %1, %struct.sst_block_allocator** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %8 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %9 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sst_block_allocator*, %struct.sst_block_allocator** %5, align 8
  %12 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sst_block_allocator*, %struct.sst_block_allocator** %5, align 8
  %15 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sst_block_allocator*, %struct.sst_block_allocator** %5, align 8
  %18 = getelementptr inbounds %struct.sst_block_allocator, %struct.sst_block_allocator* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19)
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %22 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %25 = load %struct.sst_block_allocator*, %struct.sst_block_allocator** %5, align 8
  %26 = load %struct.list_head*, %struct.list_head** %6, align 8
  %27 = call i32 @block_alloc(%struct.sst_dsp* %24, %struct.sst_block_allocator* %25, %struct.list_head* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %32 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %48

36:                                               ; preds = %3
  %37 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %38 = load %struct.list_head*, %struct.list_head** %6, align 8
  %39 = call i32 @block_list_prepare(%struct.sst_dsp* %37, %struct.list_head* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %44 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %50 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @block_alloc(%struct.sst_dsp*, %struct.sst_block_allocator*, %struct.list_head*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @block_list_prepare(%struct.sst_dsp*, %struct.list_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
