; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_at73c213 = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@IMR_ENDTX = common dso_local global i32 0, align 4
@PDC_TNPR = common dso_local global i32 0, align 4
@PDC_TNCR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_at73c213_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_at73c213*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.snd_at73c213*
  store %struct.snd_at73c213* %13, %struct.snd_at73c213** %5, align 8
  %14 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %15 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %6, align 8
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %21 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %20, i32 0, i32 2
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %23, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %29 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IMR, align 4
  %34 = call i32 @ssc_readl(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IMR_ENDTX, align 4
  %37 = call i32 @SSC_BIT(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %2
  %41 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %42 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %46 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %54 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %40
  %56 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %57 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %71 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PDC_TNPR, align 4
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = call i32 @ssc_writel(i32 %74, i32 %75, i64 %81)
  %83 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %84 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PDC_TNCR, align 4
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = mul nsw i64 %91, %94
  %96 = call i32 @ssc_writel(i32 %87, i32 %88, i64 %95)
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %66, %2
  %99 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %100 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %99, i32 0, i32 3
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IMR, align 4
  %105 = call i32 @ssc_readl(i32 %103, i32 %104)
  %106 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %107 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %106, i32 0, i32 2
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @IMR_ENDTX, align 4
  %111 = call i32 @SSC_BIT(i32 %110)
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %98
  %115 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %116 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_4__* %117)
  br label %119

119:                                              ; preds = %114, %98
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i64) #1

declare dso_local i32 @ssc_readl(i32, i32) #1

declare dso_local i32 @SSC_BIT(i32) #1

declare dso_local i32 @ssc_writel(i32, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
