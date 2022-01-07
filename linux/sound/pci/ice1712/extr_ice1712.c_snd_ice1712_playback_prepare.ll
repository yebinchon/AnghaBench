; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_ice1712 = type { i32, i64 }

@ICE1712_DMA_MODE_WRITE = common dso_local global i32 0, align 4
@ICE1712_DMA_AUTOINIT = common dso_local global i32 0, align 4
@ICE1712_IREG_PBK_RATE_LO = common dso_local global i32 0, align 4
@ICE1712_IREG_PBK_RATE_MID = common dso_local global i32 0, align 4
@ICE1712_IREG_PBK_RATE_HI = common dso_local global i32 0, align 4
@ICE1712_IREG_PBK_CTRL = common dso_local global i32 0, align 4
@ICE1712_IREG_PBK_COUNT_LO = common dso_local global i32 0, align 4
@ICE1712_IREG_PBK_COUNT_HI = common dso_local global i32 0, align 4
@ICE1712_IREG_PBK_LEFT = common dso_local global i32 0, align 4
@ICE1712_IREG_PBK_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ice1712_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_ice1712* %10, %struct.snd_ice1712** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %14)
  %16 = ashr i32 %15, 2
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_pcm_format_width(i32 %23)
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, 16
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, 8
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 8192
  %42 = sdiv i32 %41, 375
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 1048575
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1048575, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %51 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 15
  %54 = call i32 @outb(i32 0, i64 %53)
  %55 = load i32, i32* @ICE1712_DMA_MODE_WRITE, align 4
  %56 = load i32, i32* @ICE1712_DMA_AUTOINIT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %59 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 11
  %62 = call i32 @outb(i32 %57, i64 %61)
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %67 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 0
  %70 = call i32 @outl(i32 %65, i64 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %73 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 4
  %76 = call i32 @outw(i32 %71, i64 %75)
  %77 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %78 = load i32, i32* @ICE1712_IREG_PBK_RATE_LO, align 4
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 255
  %81 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %77, i32 %78, i32 %80)
  %82 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %83 = load i32, i32* @ICE1712_IREG_PBK_RATE_MID, align 4
  %84 = load i32, i32* %7, align 4
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 255
  %87 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %82, i32 %83, i32 %86)
  %88 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %89 = load i32, i32* @ICE1712_IREG_PBK_RATE_HI, align 4
  %90 = load i32, i32* %7, align 4
  %91 = ashr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %88, i32 %89, i32 %92)
  %94 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %95 = load i32, i32* @ICE1712_IREG_PBK_CTRL, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %94, i32 %95, i32 %96)
  %98 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %99 = load i32, i32* @ICE1712_IREG_PBK_COUNT_LO, align 4
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, 255
  %102 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %98, i32 %99, i32 %101)
  %103 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %104 = load i32, i32* @ICE1712_IREG_PBK_COUNT_HI, align 4
  %105 = load i32, i32* %5, align 4
  %106 = ashr i32 %105, 8
  %107 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %103, i32 %104, i32 %106)
  %108 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %109 = load i32, i32* @ICE1712_IREG_PBK_LEFT, align 4
  %110 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %108, i32 %109, i32 0)
  %111 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %112 = load i32, i32* @ICE1712_IREG_PBK_RIGHT, align 4
  %113 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %111, i32 %112, i32 0)
  %114 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %115 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock_irq(i32* %115)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
