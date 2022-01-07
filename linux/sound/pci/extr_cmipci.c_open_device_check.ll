; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_open_device_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_open_device_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@CM_OPEN_CH_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CM_OPEN_DAC = common dso_local global i32 0, align 4
@CM_REG_MISC_CTRL = common dso_local global i32 0, align 4
@CM_ENDBDAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*, i32, %struct.snd_pcm_substream*)* @open_device_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_device_check(%struct.cmipci* %0, i32 %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @CM_OPEN_CH_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %13 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %16 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %25 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %32 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %38 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %39 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.snd_pcm_substream* %37, %struct.snd_pcm_substream** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @CM_OPEN_DAC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %29
  %50 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %51 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %58 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %57, i32 0, i32 2
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %61 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %62 = load i32, i32* @CM_ENDBDAC, align 4
  %63 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %60, i32 %61, i32 %62)
  %64 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %65 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock_irq(i32* %65)
  br label %67

67:                                               ; preds = %49, %29
  %68 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %69 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %23
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
