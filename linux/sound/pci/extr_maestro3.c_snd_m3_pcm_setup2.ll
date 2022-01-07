; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm_setup2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm_setup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }
%struct.m3_dma = type { i32, %struct.TYPE_2__, i32*, i8** }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@DP_SHIFT_COUNT = common dso_local global i32 0, align 4
@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@SRC3_DIRECTION_OFFSET = common dso_local global i64 0, align 8
@CDATA_FREQUENCY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_runtime*)* @snd_m3_pcm_setup2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_pcm_setup2(%struct.snd_m3* %0, %struct.m3_dma* %1, %struct.snd_pcm_runtime* %2) #0 {
  %4 = alloca %struct.snd_m3*, align 8
  %5 = alloca %struct.m3_dma*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %4, align 8
  store %struct.m3_dma* %1, %struct.m3_dma** %5, align 8
  store %struct.snd_pcm_runtime* %2, %struct.snd_pcm_runtime** %6, align 8
  %8 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %9 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %3
  %13 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %14 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %15 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %20 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DP_SHIFT_COUNT, align 4
  %24 = ashr i32 %22, %23
  %25 = call i8* @snd_m3_add_list(%struct.snd_m3* %13, i32 %18, i32 %24)
  %26 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %27 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %26, i32 0, i32 3
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %25, i8** %29, align 8
  %30 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %31 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %32 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %37 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DP_SHIFT_COUNT, align 4
  %41 = ashr i32 %39, %40
  %42 = call i8* @snd_m3_add_list(%struct.snd_m3* %30, i32 %35, i32 %41)
  %43 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %44 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %43, i32 0, i32 3
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* %42, i8** %46, align 8
  %47 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %48 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %49 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %54 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DP_SHIFT_COUNT, align 4
  %58 = ashr i32 %56, %57
  %59 = call i8* @snd_m3_add_list(%struct.snd_m3* %47, i32 %52, i32 %58)
  %60 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %61 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %60, i32 0, i32 3
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  store i8* %59, i8** %63, align 8
  %64 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %65 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %12, %3
  %67 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %68 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %69 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %70 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @SRC3_DIRECTION_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = add nsw i64 %75, 1
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 0, i32 1
  %83 = call i32 @snd_m3_assp_write(%struct.snd_m3* %67, i32 %68, i64 %76, i32 %82)
  %84 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %85 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %86 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %87 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @SRC3_DIRECTION_OFFSET, align 8
  %92 = add nsw i64 %90, %91
  %93 = add nsw i64 %92, 2
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @snd_pcm_format_width(i32 %96)
  %98 = icmp eq i32 %97, 16
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 0, i32 1
  %101 = call i32 @snd_m3_assp_write(%struct.snd_m3* %84, i32 %85, i64 %93, i32 %100)
  %102 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 15
  %106 = add nsw i32 %105, 24000
  %107 = sdiv i32 %106, 48000
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %66
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %110, %66
  %114 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %115 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %116 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %117 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @CDATA_FREQUENCY, align 8
  %122 = add nsw i64 %120, %121
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @snd_m3_assp_write(%struct.snd_m3* %114, i32 %115, i64 %122, i32 %123)
  ret void
}

declare dso_local i8* @snd_m3_add_list(%struct.snd_m3*, i32, i32) #1

declare dso_local i32 @snd_m3_assp_write(%struct.snd_m3*, i32, i64, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
