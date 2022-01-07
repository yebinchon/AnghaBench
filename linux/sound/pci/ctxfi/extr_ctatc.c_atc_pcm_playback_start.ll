; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_playback_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_playback_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32 }
%struct.ct_atc_pcm = type { i32, i32, %struct.TYPE_5__*, %struct.src* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.src = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.src*)*, i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)*, i32 (%struct.src*, i64)*, i32 (%struct.src*, i64)*, i32 (%struct.src*, i64)* }
%struct.TYPE_4__ = type { i32 }

@SRC_STATE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_playback_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_playback_start(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.src*, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %8 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %9 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %8, i32 0, i32 3
  %10 = load %struct.src*, %struct.src** %9, align 8
  store %struct.src* %10, %struct.src** %7, align 8
  %11 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %12 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

16:                                               ; preds = %2
  %17 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %18 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.src*, %struct.src** %7, align 8
  %20 = getelementptr inbounds %struct.src, %struct.src* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.src*, %struct.src** %7, align 8
  %23 = getelementptr inbounds %struct.src, %struct.src* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul i32 %21, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %27, 8
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  br label %32

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 8, %31 ]
  %34 = mul i32 128, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.src*, %struct.src** %7, align 8
  %36 = getelementptr inbounds %struct.src, %struct.src* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 6
  %39 = load i32 (%struct.src*, i64)*, i32 (%struct.src*, i64)** %38, align 8
  %40 = load %struct.src*, %struct.src** %7, align 8
  %41 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %42 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 %39(%struct.src* %40, i64 %45)
  %47 = load %struct.src*, %struct.src** %7, align 8
  %48 = getelementptr inbounds %struct.src, %struct.src* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  %51 = load i32 (%struct.src*, i64)*, i32 (%struct.src*, i64)** %50, align 8
  %52 = load %struct.src*, %struct.src** %7, align 8
  %53 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %54 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %59 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = call i32 %51(%struct.src* %52, i64 %63)
  %65 = load %struct.src*, %struct.src** %7, align 8
  %66 = getelementptr inbounds %struct.src, %struct.src* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i32 (%struct.src*, i64)*, i32 (%struct.src*, i64)** %68, align 8
  %70 = load %struct.src*, %struct.src** %7, align 8
  %71 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %72 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i32 %69(%struct.src* %70, i64 %78)
  %80 = load %struct.src*, %struct.src** %7, align 8
  %81 = getelementptr inbounds %struct.src, %struct.src* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)** %83, align 8
  %85 = load %struct.src*, %struct.src** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 %84(%struct.src* %85, i32 %86)
  %88 = load %struct.src*, %struct.src** %7, align 8
  %89 = getelementptr inbounds %struct.src, %struct.src* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)** %91, align 8
  %93 = load %struct.src*, %struct.src** %7, align 8
  %94 = call i32 %92(%struct.src* %93, i32 1)
  %95 = load %struct.src*, %struct.src** %7, align 8
  %96 = getelementptr inbounds %struct.src, %struct.src* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)** %98, align 8
  %100 = load %struct.src*, %struct.src** %7, align 8
  %101 = load i32, i32* @SRC_STATE_INIT, align 4
  %102 = call i32 %99(%struct.src* %100, i32 %101)
  %103 = load %struct.src*, %struct.src** %7, align 8
  %104 = getelementptr inbounds %struct.src, %struct.src* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32 (%struct.src*)*, i32 (%struct.src*)** %106, align 8
  %108 = load %struct.src*, %struct.src** %7, align 8
  %109 = call i32 %107(%struct.src* %108)
  %110 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %111 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ct_timer_start(i32 %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %32, %15
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @ct_timer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
