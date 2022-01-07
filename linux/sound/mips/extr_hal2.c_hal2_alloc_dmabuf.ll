; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_alloc_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_alloc_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hal2 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hal2_codec = type { i32, %struct.hal2_desc*, i8*, i8*, i8* }
%struct.hal2_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@H2_BUF_SIZE = common dso_local global i32 0, align 4
@H2_BLOCK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_ATTR_NON_CONSISTENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HPCDMA_XIE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hal2*, %struct.hal2_codec*)* @hal2_alloc_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal2_alloc_dmabuf(%struct.snd_hal2* %0, %struct.hal2_codec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_hal2*, align 8
  %5 = alloca %struct.hal2_codec*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.hal2_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_hal2* %0, %struct.snd_hal2** %4, align 8
  store %struct.hal2_codec* %1, %struct.hal2_codec** %5, align 8
  %12 = load %struct.snd_hal2*, %struct.snd_hal2** %4, align 8
  %13 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load i32, i32* @H2_BUF_SIZE, align 4
  %18 = load i32, i32* @H2_BLOCK_SIZE, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* @H2_BUF_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @DMA_ATTR_NON_CONSISTENT, align 4
  %24 = call i8* @dma_alloc_attrs(%struct.device* %20, i32 %21, i8** %9, i32 %22, i32 %23)
  %25 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %26 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %28 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 24
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* @DMA_ATTR_NON_CONSISTENT, align 4
  %42 = call i8* @dma_alloc_attrs(%struct.device* %35, i32 %39, i8** %8, i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.hal2_desc*
  store %struct.hal2_desc* %43, %struct.hal2_desc** %7, align 8
  %44 = load %struct.hal2_desc*, %struct.hal2_desc** %7, align 8
  %45 = icmp ne %struct.hal2_desc* %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %34
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* @H2_BUF_SIZE, align 4
  %49 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %50 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* @DMA_ATTR_NON_CONSISTENT, align 4
  %54 = call i32 @dma_free_attrs(%struct.device* %47, i32 %48, i8* %51, i8* %52, i32 %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %124

57:                                               ; preds = %34
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %60 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %63 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.hal2_desc*, %struct.hal2_desc** %7, align 8
  %65 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %66 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %65, i32 0, i32 1
  store %struct.hal2_desc* %64, %struct.hal2_desc** %66, align 8
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %107, %57
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %67
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @H2_BLOCK_SIZE, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %72, i64 %76
  %78 = load %struct.hal2_desc*, %struct.hal2_desc** %7, align 8
  %79 = getelementptr inbounds %struct.hal2_desc, %struct.hal2_desc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load i32, i32* @HPCDMA_XIE, align 4
  %82 = load i32, i32* @H2_BLOCK_SIZE, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.hal2_desc*, %struct.hal2_desc** %7, align 8
  %85 = getelementptr inbounds %struct.hal2_desc, %struct.hal2_desc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %71
  %92 = load i8*, i8** %8, align 8
  br label %100

93:                                               ; preds = %71
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 24
  %99 = getelementptr i8, i8* %94, i64 %98
  br label %100

100:                                              ; preds = %93, %91
  %101 = phi i8* [ %92, %91 ], [ %99, %93 ]
  %102 = load %struct.hal2_desc*, %struct.hal2_desc** %7, align 8
  %103 = getelementptr inbounds %struct.hal2_desc, %struct.hal2_desc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load %struct.hal2_desc*, %struct.hal2_desc** %7, align 8
  %106 = getelementptr inbounds %struct.hal2_desc, %struct.hal2_desc* %105, i32 1
  store %struct.hal2_desc* %106, %struct.hal2_desc** %7, align 8
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %67

110:                                              ; preds = %67
  %111 = load %struct.device*, %struct.device** %6, align 8
  %112 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %113 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %112, i32 0, i32 1
  %114 = load %struct.hal2_desc*, %struct.hal2_desc** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 24
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* @DMA_TO_DEVICE, align 4
  %120 = call i32 @dma_cache_sync(%struct.device* %111, %struct.hal2_desc* %114, i32 %118, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.hal2_codec*, %struct.hal2_codec** %5, align 8
  %123 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %110, %46, %31
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i8* @dma_alloc_attrs(%struct.device*, i32, i8**, i32, i32) #1

declare dso_local i32 @dma_free_attrs(%struct.device*, i32, i8*, i8*, i32) #1

declare dso_local i32 @dma_cache_sync(%struct.device*, %struct.hal2_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
