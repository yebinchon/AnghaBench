; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_playback_position.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_playback_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ct_atc_pcm = type { %struct.TYPE_8__*, %struct.src* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.src = type { i32, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.src*)* }

@.str = private unnamed_addr constant [44 x i8] c"bad ca - ca=0x%08x, vba=0x%08x, vbs=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_playback_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_playback_position(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %10 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %11 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %10, i32 0, i32 1
  %12 = load %struct.src*, %struct.src** %11, align 8
  store %struct.src* %12, %struct.src** %6, align 8
  %13 = load %struct.src*, %struct.src** %6, align 8
  %14 = icmp ne %struct.src* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.src*, %struct.src** %6, align 8
  %18 = getelementptr inbounds %struct.src, %struct.src* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.src*)*, i32 (%struct.src*)** %20, align 8
  %22 = load %struct.src*, %struct.src** %6, align 8
  %23 = call i32 %21(%struct.src* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %26 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %16
  %32 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %33 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %39 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %44 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42, i32 %47)
  %49 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %50 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %31, %16
  %55 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %56 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.src*, %struct.src** %6, align 8
  %61 = getelementptr inbounds %struct.src, %struct.src* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.src*, %struct.src** %6, align 8
  %64 = getelementptr inbounds %struct.src, %struct.src* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %62, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* %8, align 4
  br label %73

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 8, %72 ]
  %75 = mul nsw i32 128, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %82 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %80, %85
  %87 = load i32, i32* %7, align 4
  %88 = srem i32 %86, %87
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %73, %15
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
