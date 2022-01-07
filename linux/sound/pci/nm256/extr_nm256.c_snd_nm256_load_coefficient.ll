; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_load_coefficient.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_load_coefficient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@NM_RECORD_ENABLE_REG = common dso_local global i64 0, align 8
@NM_PLAYBACK_ENABLE_REG = common dso_local global i64 0, align 8
@NM_COEFF_START_OFFSET = common dso_local global i64 0, align 8
@NM_RECORD_REG_OFFSET = common dso_local global i64 0, align 8
@NM_PLAYBACK_REG_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"NM256: Engine was enabled while loading coefficients!\0A\00", align 1
@coefficients = common dso_local global i32 0, align 4
@NM_TOTAL_COEFF_COUNT = common dso_local global i32 0, align 4
@coefficient_sizes = common dso_local global i64* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nm256*, i32, i32)* @snd_nm256_load_coefficient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_nm256_load_coefficient(%struct.nm256* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nm256*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nm256* %0, %struct.nm256** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @NM_RECORD_ENABLE_REG, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @NM_PLAYBACK_ENABLE_REG, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* @NM_COEFF_START_OFFSET, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @NM_RECORD_REG_OFFSET, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @NM_PLAYBACK_REG_OFFSET, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i64 [ %26, %25 ], [ %28, %27 ]
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %8, align 8
  %33 = load %struct.nm256*, %struct.nm256** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @snd_nm256_readb(%struct.nm256* %33, i64 %34)
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.nm256*, %struct.nm256** %4, align 8
  %40 = getelementptr inbounds %struct.nm256, %struct.nm256* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %114

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 7
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 8
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load %struct.nm256*, %struct.nm256** %4, align 8
  %56 = getelementptr inbounds %struct.nm256, %struct.nm256* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.nm256*, %struct.nm256** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @snd_nm256_load_one_coefficient(%struct.nm256* %60, i32 %61, i64 %62, i32 %63)
  br label %114

65:                                               ; preds = %54
  %66 = load %struct.nm256*, %struct.nm256** %4, align 8
  %67 = getelementptr inbounds %struct.nm256, %struct.nm256* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = load %struct.nm256*, %struct.nm256** %4, align 8
  %72 = load i32, i32* @coefficients, align 4
  %73 = load %struct.nm256*, %struct.nm256** %4, align 8
  %74 = getelementptr inbounds %struct.nm256, %struct.nm256* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @NM_TOTAL_COEFF_COUNT, align 4
  %77 = mul nsw i32 %76, 4
  %78 = call i32 @snd_nm256_write_buffer(%struct.nm256* %71, i32 %72, i64 %75, i32 %77)
  %79 = load %struct.nm256*, %struct.nm256** %4, align 8
  %80 = getelementptr inbounds %struct.nm256, %struct.nm256* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %114

81:                                               ; preds = %65
  %82 = load %struct.nm256*, %struct.nm256** %4, align 8
  %83 = getelementptr inbounds %struct.nm256, %struct.nm256* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %9, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @snd_nm256_get_start_offset(i32 %85)
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64*, i64** @coefficient_sizes, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %87, %92
  store i64 %93, i64* %11, align 8
  %94 = load %struct.nm256*, %struct.nm256** %4, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @snd_nm256_writel(%struct.nm256* %94, i64 %95, i64 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %81
  %104 = load i64, i64* %11, align 8
  %105 = add nsw i64 %104, -1
  store i64 %105, i64* %11, align 8
  br label %106

106:                                              ; preds = %103, %81
  %107 = load %struct.nm256*, %struct.nm256** %4, align 8
  %108 = load i64, i64* %8, align 8
  %109 = add nsw i64 %108, 4
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @snd_nm256_writel(%struct.nm256* %107, i64 %109, i64 %112)
  br label %114

114:                                              ; preds = %38, %59, %106, %70
  ret void
}

declare dso_local i32 @snd_nm256_readb(%struct.nm256*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_nm256_load_one_coefficient(%struct.nm256*, i32, i64, i32) #1

declare dso_local i32 @snd_nm256_write_buffer(%struct.nm256*, i32, i64, i32) #1

declare dso_local i64 @snd_nm256_get_start_offset(i32) #1

declare dso_local i32 @snd_nm256_writel(%struct.nm256*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
