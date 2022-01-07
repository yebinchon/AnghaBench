; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_snd_sof_init_trace.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_snd_sof_init_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"error: can't alloc page table for trace %d\0A\00", align 1
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@DMA_BUF_SIZE_FOR_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"error: can't alloc buffer for trace %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"dma_trace_pages: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_init_trace(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %5 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %6 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %8 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %9 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %13 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %12, i32 0, i32 2
  %14 = call i32 @snd_dma_alloc_pages(i32 %7, i32 %10, i32 %11, %struct.TYPE_4__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %19 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %100

24:                                               ; preds = %1
  %25 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %27 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DMA_BUF_SIZE_FOR_TRACE, align 4
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %31 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %30, i32 0, i32 3
  %32 = call i32 @snd_dma_alloc_pages(i32 %25, i32 %28, i32 %29, %struct.TYPE_4__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %37 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %95

41:                                               ; preds = %24
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %43 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %44 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %43, i32 0, i32 3
  %45 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %46 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %50 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snd_sof_create_page_table(%struct.snd_sof_dev* %42, %struct.TYPE_4__* %44, i32 %48, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %89

57:                                               ; preds = %41
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %60 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %62 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %65 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %69 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %57
  %73 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %74 = call i32 @trace_debugfs_create(%struct.snd_sof_dev* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %89

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %57
  %80 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %81 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %80, i32 0, i32 4
  %82 = call i32 @init_waitqueue_head(i32* %81)
  %83 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %84 = call i32 @snd_sof_init_trace_ipc(%struct.snd_sof_dev* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %89

88:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %100

89:                                               ; preds = %87, %77, %56
  %90 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %91 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %93 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %92, i32 0, i32 3
  %94 = call i32 @snd_dma_free_pages(%struct.TYPE_4__* %93)
  br label %95

95:                                               ; preds = %89, %35
  %96 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %97 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %96, i32 0, i32 2
  %98 = call i32 @snd_dma_free_pages(%struct.TYPE_4__* %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %95, %88, %17
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_sof_create_page_table(%struct.snd_sof_dev*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @trace_debugfs_create(%struct.snd_sof_dev*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @snd_sof_init_trace_ipc(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
