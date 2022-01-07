; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ipcm_poke.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ipcm_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.snd_emu10k1_fx8010_pcm* }
%struct.snd_emu10k1_fx8010_pcm = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.snd_emu10k1_fx8010_pcm_rec = type { i64, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@EMU10K1_FX8010_PCM_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_pcm_rec*)* @snd_emu10k1_ipcm_poke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_ipcm_poke(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_pcm_rec* %1) #0 {
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
  br label %155

17:                                               ; preds = %2
  %18 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EMU10K1_FX8010_PCM_COUNT, align 8
  %22 = call i64 @array_index_nospec(i64 %20, i64 %21)
  %23 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 32
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %155

32:                                               ; preds = %17
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %35, align 8
  %37 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %38 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %36, i64 %39
  store %struct.snd_emu10k1_fx8010_pcm* %40, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 1
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %49 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %146

55:                                               ; preds = %32
  %56 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %145

63:                                               ; preds = %55
  %64 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %146

71:                                               ; preds = %63
  %72 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %73 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %74, i32 0, i32 11
  store i64 0, i64* %75, align 8
  %76 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %82 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %85 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %84, i32 0, i32 10
  store i32 %83, i32* %85, align 4
  %86 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %87 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %90 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 8
  %91 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %92 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %95 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 4
  %96 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %97 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %100 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %102 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %105 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %107 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %110 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %112 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %115 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %117 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %120 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %141, %71
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %124 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %121
  %128 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %129 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %136 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %127
  %142 = load i32, i32* %6, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %121

144:                                              ; preds = %121
  br label %145

145:                                              ; preds = %144, %60
  br label %146

146:                                              ; preds = %145, %68, %52
  %147 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %148 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %147, i32 0, i32 1
  %149 = call i32 @spin_unlock_irq(i32* %148)
  %150 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %151 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %146, %29, %14
  %156 = load i32, i32* %3, align 4
  ret i32 %156
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
