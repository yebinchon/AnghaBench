; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adbdma_resetup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adbdma_resetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@VORTEX_ADBDMA_BUFBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @vortex_adbdma_resetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_adbdma_resetup(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %13
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %107, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i1 [ false, %15 ], [ %23, %18 ]
  br i1 %25, label %26, label %110

26:                                               ; preds = %24
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %26
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %66

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %59, %53
  br label %73

66:                                               ; preds = %43
  %67 = load i32, i32* %7, align 4
  %68 = icmp sge i32 %67, 4
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %65
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @VORTEX_ADBDMA_BUFBASE, align 8
  %78 = load i32, i32* %4, align 4
  %79 = shl i32 %78, 2
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = shl i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %77, %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 %90, %91
  %93 = call i32 @snd_pcm_sgbuf_get_addr(i32 %87, i32 %92)
  %94 = call i32 @hwwrite(i32 %76, i64 %84, i32 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* @VORTEX_ADBDMA_BUFBASE, align 8
  %99 = load i32, i32* %4, align 4
  %100 = shl i32 %99, 2
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %100, %101
  %103 = shl i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %98, %104
  %106 = call i32 @hwread(i32 %97, i64 %105)
  br label %107

107:                                              ; preds = %73
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %15

110:                                              ; preds = %24
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i32) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(i32, i32) #1

declare dso_local i32 @hwread(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
