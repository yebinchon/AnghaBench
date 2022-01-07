; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_pcm1796_registers_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_pcm1796_registers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i64*, %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32, i64**, i32, i64 }

@PCM1796_REG_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @pcm1796_registers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm1796_registers_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %7 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %6, i32 0, i32 1
  %8 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %7, align 8
  store %struct.xonar_pcm179x* %8, %struct.xonar_pcm179x** %3, align 8
  %9 = call i32 @msleep(i32 1)
  %10 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %11 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %16 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ %17, %14 ], [ 0, %18 ]
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %99, %19
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %24 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %102

27:                                               ; preds = %21
  %28 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %31 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %30, i32 0, i32 1
  %32 = load i64**, i64*** %31, align 8
  %33 = getelementptr inbounds i64*, i64** %32, i64 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* @PCM1796_REG_BASE, align 4
  %36 = sub nsw i32 18, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @pcm1796_write(%struct.oxygen* %28, i32 %29, i32 18, i64 %39)
  %41 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %44 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = mul i32 %46, 2
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @pcm1796_write(%struct.oxygen* %41, i32 %42, i32 16, i64 %53)
  %55 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %58 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = mul i32 %60, 2
  %62 = add i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i32 @pcm1796_write(%struct.oxygen* %55, i32 %56, i32 17, i64 %68)
  %70 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %73 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %72, i32 0, i32 1
  %74 = load i64**, i64*** %73, align 8
  %75 = getelementptr inbounds i64*, i64** %74, i64 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* @PCM1796_REG_BASE, align 4
  %78 = sub nsw i32 19, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @pcm1796_write(%struct.oxygen* %70, i32 %71, i32 19, i64 %81)
  %83 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %86 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %85, i32 0, i32 1
  %87 = load i64**, i64*** %86, align 8
  %88 = getelementptr inbounds i64*, i64** %87, i64 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* @PCM1796_REG_BASE, align 4
  %91 = sub nsw i32 20, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @pcm1796_write(%struct.oxygen* %83, i32 %84, i32 20, i64 %94)
  %96 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @pcm1796_write(%struct.oxygen* %96, i32 %97, i32 21, i64 0)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %27
  %100 = load i32, i32* %4, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %21

102:                                              ; preds = %21
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pcm1796_write(%struct.oxygen*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
