; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_update_pcm1796_deemph.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_update_pcm1796_deemph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32**, i32, i32 }

@PCM1796_REG_BASE = common dso_local global i32 0, align 4
@PCM1796_DMF_MASK = common dso_local global i32 0, align 4
@PCM1796_DMF_48 = common dso_local global i32 0, align 4
@PCM1796_DMF_441 = common dso_local global i32 0, align 4
@PCM1796_DMF_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @update_pcm1796_deemph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pcm1796_deemph(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %7 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %6, i32 0, i32 0
  %8 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %7, align 8
  store %struct.xonar_pcm179x* %8, %struct.xonar_pcm179x** %3, align 8
  %9 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %10 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @PCM1796_REG_BASE, align 4
  %15 = sub nsw i32 18, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCM1796_DMF_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %23 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 48000
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @PCM1796_DMF_48, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %1
  %31 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %32 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 44100
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @PCM1796_DMF_441, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %49

39:                                               ; preds = %30
  %40 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %41 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 32000
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @PCM1796_DMF_32, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %26
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %54 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pcm1796_write_cached(%struct.oxygen* %58, i32 %59, i32 18, i32 %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %51

65:                                               ; preds = %51
  ret void
}

declare dso_local i32 @pcm1796_write_cached(%struct.oxygen*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
