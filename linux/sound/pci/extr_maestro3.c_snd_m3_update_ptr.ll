; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_update_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_update_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }
%struct.m3_dma = type { i32, i32, i32, i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*, %struct.m3_dma*)* @snd_m3_update_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_update_ptr(%struct.snd_m3* %0, %struct.m3_dma* %1) #0 {
  %3 = alloca %struct.snd_m3*, align 8
  %4 = alloca %struct.m3_dma*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %3, align 8
  store %struct.m3_dma* %1, %struct.m3_dma** %4, align 8
  %8 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %9 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %8, i32 0, i32 5
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  store %struct.snd_pcm_substream* %10, %struct.snd_pcm_substream** %5, align 8
  %11 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %12 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %103

16:                                               ; preds = %2
  %17 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %18 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %20 = call i32 @snd_m3_get_pointer(%struct.snd_m3* %17, %struct.m3_dma* %18, %struct.snd_pcm_substream* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %23 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %28 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = urem i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %16
  %33 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %34 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %35, %36
  %38 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %39 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %37, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %44 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp uge i32 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %49 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = urem i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %32
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %56 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %59 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %63 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %66 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %103

69:                                               ; preds = %53
  %70 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %71 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %74 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 2, %75
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %80 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %83 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %94

86:                                               ; preds = %69
  %87 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %88 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.m3_dma*, %struct.m3_dma** %4, align 8
  %91 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = srem i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %86, %78
  %95 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %96 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %99 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %98)
  %100 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %101 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %100, i32 0, i32 0
  %102 = call i32 @spin_lock(i32* %101)
  br label %103

103:                                              ; preds = %15, %94, %53
  ret void
}

declare dso_local i32 @snd_m3_get_pointer(%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
