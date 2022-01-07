; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_stream = type { i32, i32, i32, i64, i32, %struct.hdac_bus* }
%struct.hdac_bus = type { i32 }

@WALLCLK = common dso_local global i32 0, align 4
@INTCTL = common dso_local global i32 0, align 4
@SD_CTL_3B = common dso_local global i32 0, align 4
@SD_CTL_STRIPE_MASK = common dso_local global i32 0, align 4
@SD_CTL = common dso_local global i32 0, align 4
@SD_CTL_DMA_START = common dso_local global i32 0, align 4
@SD_INT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_stream_start(%struct.hdac_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.hdac_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.hdac_stream* %0, %struct.hdac_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %8 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %7, i32 0, i32 5
  %9 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  store %struct.hdac_bus* %9, %struct.hdac_bus** %5, align 8
  %10 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %11 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %12 = call i32 @trace_snd_hdac_stream_start(%struct.hdac_bus* %10, %struct.hdac_stream* %11)
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %14 = load i32, i32* @WALLCLK, align 4
  %15 = call i32 @snd_hdac_chip_readl(%struct.hdac_bus* %13, i32 %14)
  %16 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %17 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %22 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %25 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 8
  br label %30

30:                                               ; preds = %20, %2
  %31 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %32 = load i32, i32* @INTCTL, align 4
  %33 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %34 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %38 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  %41 = call i32 @snd_hdac_chip_updatel(%struct.hdac_bus* %31, i32 %32, i32 %36, i32 %40)
  %42 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %43 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %48 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %49 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snd_hdac_get_stream_stripe_ctl(%struct.hdac_bus* %47, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %55 = load i32, i32* @SD_CTL_3B, align 4
  %56 = load i32, i32* @SD_CTL_STRIPE_MASK, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @snd_hdac_stream_updateb(%struct.hdac_stream* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %60 = load i32, i32* @SD_CTL, align 4
  %61 = load i32, i32* @SD_CTL_DMA_START, align 4
  %62 = load i32, i32* @SD_INT_MASK, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @snd_hdac_stream_updateb(%struct.hdac_stream* %59, i32 %60, i32 0, i32 %63)
  %65 = load %struct.hdac_stream*, %struct.hdac_stream** %3, align 8
  %66 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  ret void
}

declare dso_local i32 @trace_snd_hdac_stream_start(%struct.hdac_bus*, %struct.hdac_stream*) #1

declare dso_local i32 @snd_hdac_chip_readl(%struct.hdac_bus*, i32) #1

declare dso_local i32 @snd_hdac_chip_updatel(%struct.hdac_bus*, i32, i32, i32) #1

declare dso_local i32 @snd_hdac_get_stream_stripe_ctl(%struct.hdac_bus*, i32) #1

declare dso_local i32 @snd_hdac_stream_updateb(%struct.hdac_stream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
