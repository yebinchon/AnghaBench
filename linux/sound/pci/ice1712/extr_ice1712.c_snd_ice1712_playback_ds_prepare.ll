; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_ds_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_ds_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32 }
%struct.snd_ice1712 = type { i32*, i32, i64* }

@ICE1712_DSC_ADDR0 = common dso_local global i32 0, align 4
@ICE1712_DSC_COUNT0 = common dso_local global i32 0, align 4
@ICE1712_DSC_ADDR1 = common dso_local global i32 0, align 4
@ICE1712_DSC_COUNT1 = common dso_local global i32 0, align 4
@ICE1712_DSC_RATE = common dso_local global i32 0, align 4
@ICE1712_DSC_VOLUME = common dso_local global i32 0, align 4
@ICE1712_DSC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ice1712_playback_ds_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_playback_ds_prepare(%struct.snd_pcm_substream* %0) #0 {
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
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  store i32 100, i32* %7, align 4
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_pcm_format_width(i32 %19)
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, -5
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 8
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 8192
  %38 = sdiv i32 %37, 375
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 1048575
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1048575, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  store i64 0, i64* %49, align 8
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %54 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %52, i32* %59, align 4
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = mul i64 %62, 2
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %66 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %65, i32 0, i32 1
  %67 = call i32 @spin_lock_irq(i32* %66)
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @ICE1712_DSC_ADDR0, align 4
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %68, i32 %69, i32 %70, i32 %73)
  %75 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @ICE1712_DSC_COUNT0, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @ICE1712_DSC_ADDR1, align 4
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %42
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  br label %94

93:                                               ; preds = %42
  br label %94

94:                                               ; preds = %93, %90
  %95 = phi i32 [ %92, %90 ], [ 0, %93 ]
  %96 = add nsw i32 %85, %95
  %97 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %80, i32 %81, i32 %82, i32 %96)
  %98 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @ICE1712_DSC_COUNT1, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ICE1712_DSC_RATE, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @ICE1712_DSC_VOLUME, align 4
  %111 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %108, i32 %109, i32 %110, i32 0)
  %112 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @ICE1712_DSC_CONTROL, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %112, i32 %113, i32 %114, i32 %115)
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %133

121:                                              ; preds = %94
  %122 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* @ICE1712_DSC_RATE, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %122, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* @ICE1712_DSC_VOLUME, align 4
  %132 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %128, i32 %130, i32 %131, i32 0)
  br label %133

133:                                              ; preds = %121, %94
  %134 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %135 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %134, i32 0, i32 1
  %136 = call i32 @spin_unlock_irq(i32* %135)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ice1712_ds_write(%struct.snd_ice1712*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
