; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32 }
%struct.ct_atc_pcm = type { i32, i64, %struct.src**, %struct.src*, i32 }
%struct.src = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.src*)*, i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)* }

@SRC_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_stop(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca %struct.ct_atc_pcm*, align 8
  %5 = alloca %struct.src*, align 8
  %6 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %4, align 8
  %7 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %4, align 8
  %8 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ct_timer_stop(i32 %9)
  %11 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %4, align 8
  %12 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %11, i32 0, i32 3
  %13 = load %struct.src*, %struct.src** %12, align 8
  store %struct.src* %13, %struct.src** %5, align 8
  %14 = load %struct.src*, %struct.src** %5, align 8
  %15 = getelementptr inbounds %struct.src, %struct.src* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)** %17, align 8
  %19 = load %struct.src*, %struct.src** %5, align 8
  %20 = call i32 %18(%struct.src* %19, i32 0)
  %21 = load %struct.src*, %struct.src** %5, align 8
  %22 = getelementptr inbounds %struct.src, %struct.src* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)** %24, align 8
  %26 = load %struct.src*, %struct.src** %5, align 8
  %27 = load i32, i32* @SRC_STATE_OFF, align 4
  %28 = call i32 %25(%struct.src* %26, i32 %27)
  %29 = load %struct.src*, %struct.src** %5, align 8
  %30 = getelementptr inbounds %struct.src, %struct.src* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.src*)*, i32 (%struct.src*)** %32, align 8
  %34 = load %struct.src*, %struct.src** %5, align 8
  %35 = call i32 %33(%struct.src* %34)
  %36 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %4, align 8
  %37 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %36, i32 0, i32 2
  %38 = load %struct.src**, %struct.src*** %37, align 8
  %39 = icmp ne %struct.src** %38, null
  br i1 %39, label %40, label %81

40:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %77, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %4, align 8
  %44 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %41
  %48 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %4, align 8
  %49 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %48, i32 0, i32 2
  %50 = load %struct.src**, %struct.src*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.src*, %struct.src** %50, i64 %52
  %54 = load %struct.src*, %struct.src** %53, align 8
  store %struct.src* %54, %struct.src** %5, align 8
  %55 = load %struct.src*, %struct.src** %5, align 8
  %56 = getelementptr inbounds %struct.src, %struct.src* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)** %58, align 8
  %60 = load %struct.src*, %struct.src** %5, align 8
  %61 = call i32 %59(%struct.src* %60, i32 0)
  %62 = load %struct.src*, %struct.src** %5, align 8
  %63 = getelementptr inbounds %struct.src, %struct.src* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (%struct.src*, i32)*, i32 (%struct.src*, i32)** %65, align 8
  %67 = load %struct.src*, %struct.src** %5, align 8
  %68 = load i32, i32* @SRC_STATE_OFF, align 4
  %69 = call i32 %66(%struct.src* %67, i32 %68)
  %70 = load %struct.src*, %struct.src** %5, align 8
  %71 = getelementptr inbounds %struct.src, %struct.src* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.src*)*, i32 (%struct.src*)** %73, align 8
  %75 = load %struct.src*, %struct.src** %5, align 8
  %76 = call i32 %74(%struct.src* %75)
  br label %77

77:                                               ; preds = %47
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %41

80:                                               ; preds = %41
  br label %81

81:                                               ; preds = %80, %2
  %82 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %4, align 8
  %83 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  ret i32 0
}

declare dso_local i32 @ct_timer_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
