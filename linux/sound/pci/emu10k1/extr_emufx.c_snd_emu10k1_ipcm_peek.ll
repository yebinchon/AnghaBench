; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ipcm_peek.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ipcm_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.snd_emu10k1_fx8010_pcm* }
%struct.snd_emu10k1_fx8010_pcm = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_pcm_rec = type { i64, i32, i64, i64, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@EMU10K1_FX8010_PCM_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_pcm_rec*)* @snd_emu10k1_ipcm_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_ipcm_peek(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_pcm_rec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_pcm_rec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_emu10k1_fx8010_pcm*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_fx8010_pcm_rec* %1, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EMU10K1_FX8010_PCM_COUNT, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %123

17:                                               ; preds = %2
  %18 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EMU10K1_FX8010_PCM_COUNT, align 8
  %22 = call i64 @array_index_nospec(i64 %20, i64 %21)
  %23 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %27, align 8
  %29 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %28, i64 %31
  store %struct.snd_emu10k1_fx8010_pcm* %32, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %38 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %41 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %44 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %49 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 4
  %50 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 8
  %55 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %56 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %59 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %64 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  %65 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 4
  %70 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %71 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %74 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %76 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %79 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %81 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %84 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %105, %17
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %88 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %93 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %100 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %91
  %106 = load i32, i32* %6, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %85

108:                                              ; preds = %85
  %109 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %110 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %112 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %114 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %116 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %115, i32 0, i32 1
  %117 = call i32 @spin_unlock_irq(i32* %116)
  %118 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %119 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %108, %14
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @array_index_nospec(i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
