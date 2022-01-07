; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, i32, i32*, i32, i32, i64 }

@WSS_MODE_OPEN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@WSS_HW_AD1848_MASK = common dso_local global i32 0, align 4
@CS4231_IRQ_STATUS = common dso_local global i64 0, align 8
@CS4231_PLAYBACK_IRQ = common dso_local global i32 0, align 4
@CS4231_RECORD_IRQ = common dso_local global i32 0, align 4
@CS4231_TIMER_IRQ = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@CS4231_IRQ_ENABLE = common dso_local global i32 0, align 4
@CS4231_PIN_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_wss*, i32)* @snd_wss_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wss_open(%struct.snd_wss* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_wss*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_wss* %0, %struct.snd_wss** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %8 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %11 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %18 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @WSS_MODE_OPEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %25 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23, %2
  %29 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %30 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %29, i32 0, i32 3
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %128

34:                                               ; preds = %23, %16
  %35 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %36 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WSS_MODE_OPEN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %44 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %48 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %47, i32 0, i32 3
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 0, i32* %3, align 4
  br label %128

50:                                               ; preds = %34
  %51 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %52 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %51, i32 0, i32 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %56 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  %62 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %63 = load i64, i64* @CS4231_IRQ_STATUS, align 8
  %64 = load i32, i32* @CS4231_PLAYBACK_IRQ, align 4
  %65 = load i32, i32* @CS4231_RECORD_IRQ, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CS4231_TIMER_IRQ, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @snd_wss_out(%struct.snd_wss* %62, i64 %63, i32 %68)
  %70 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %71 = load i64, i64* @CS4231_IRQ_STATUS, align 8
  %72 = call i32 @snd_wss_out(%struct.snd_wss* %70, i64 %71, i32 0)
  br label %73

73:                                               ; preds = %61, %50
  %74 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %75 = load i32, i32* @STATUS, align 4
  %76 = call i32 @CS4231P(i32 %75)
  %77 = call i32 @wss_outb(%struct.snd_wss* %74, i32 %76, i32 0)
  %78 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %79 = load i32, i32* @STATUS, align 4
  %80 = call i32 @CS4231P(i32 %79)
  %81 = call i32 @wss_outb(%struct.snd_wss* %78, i32 %80, i32 0)
  %82 = load i32, i32* @CS4231_IRQ_ENABLE, align 4
  %83 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %84 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @CS4231_PIN_CTRL, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %82
  store i32 %89, i32* %87, align 4
  %90 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %91 = load i64, i64* @CS4231_PIN_CTRL, align 8
  %92 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %93 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @CS4231_PIN_CTRL, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @snd_wss_out(%struct.snd_wss* %90, i64 %91, i32 %97)
  %99 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %100 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %73
  %106 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %107 = load i64, i64* @CS4231_IRQ_STATUS, align 8
  %108 = load i32, i32* @CS4231_PLAYBACK_IRQ, align 4
  %109 = load i32, i32* @CS4231_RECORD_IRQ, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @CS4231_TIMER_IRQ, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @snd_wss_out(%struct.snd_wss* %106, i64 %107, i32 %112)
  %114 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %115 = load i64, i64* @CS4231_IRQ_STATUS, align 8
  %116 = call i32 @snd_wss_out(%struct.snd_wss* %114, i64 %115, i32 0)
  br label %117

117:                                              ; preds = %105, %73
  %118 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %119 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %118, i32 0, i32 4
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %124 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %126 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %125, i32 0, i32 3
  %127 = call i32 @mutex_unlock(i32* %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %117, %41, %28
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i64, i32) #1

declare dso_local i32 @wss_outb(%struct.snd_wss*, i32, i32) #1

declare dso_local i32 @CS4231P(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
