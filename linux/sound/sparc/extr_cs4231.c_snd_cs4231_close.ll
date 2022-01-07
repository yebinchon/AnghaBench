; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i32, i32*, i32, i32 }

@CS4231_MODE_OPEN = common dso_local global i32 0, align 4
@CS4231_IRQ_STATUS = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@CS4231_PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@CS4231_PLAYBACK_PIO = common dso_local global i32 0, align 4
@CS4231_RECORD_ENABLE = common dso_local global i32 0, align 4
@CS4231_RECORD_PIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs4231*, i32)* @snd_cs4231_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4231_close(%struct.snd_cs4231* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_cs4231*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %7 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %12 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %16 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CS4231_MODE_OPEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %23 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %22, i32 0, i32 2
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %130

25:                                               ; preds = %2
  %26 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %27 = call i32 @snd_cs4231_calibrate_mute(%struct.snd_cs4231* %26, i32 1)
  %28 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %29 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %28, i32 0, i32 3
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %33 = load i64, i64* @CS4231_IRQ_STATUS, align 8
  %34 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %32, i64 %33, i32 0)
  %35 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %36 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %37 = load i32, i32* @STATUS, align 4
  %38 = call i32 @CS4231U(%struct.snd_cs4231* %36, i32 %37)
  %39 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %35, i32 0, i32 %38)
  %40 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %41 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %42 = load i32, i32* @STATUS, align 4
  %43 = call i32 @CS4231U(%struct.snd_cs4231* %41, i32 %42)
  %44 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %40, i32 0, i32 %43)
  %45 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %46 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %52 = load i32, i32* @CS4231_PLAYBACK_PIO, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CS4231_RECORD_ENABLE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CS4231_RECORD_PIO, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %50, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %105

60:                                               ; preds = %25
  %61 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %62 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %61, i32 0, i32 3
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %66 = call i32 @snd_cs4231_mce_up(%struct.snd_cs4231* %65)
  %67 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %68 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %67, i32 0, i32 3
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %72 = load i32, i32* @CS4231_PLAYBACK_PIO, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @CS4231_RECORD_ENABLE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @CS4231_RECORD_PIO, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %80 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %78
  store i32 %85, i32* %83, align 4
  %86 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %87 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %88 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %89 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %86, i64 %87, i32 %93)
  %95 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %96 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %95, i32 0, i32 3
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %100 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %99)
  %101 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %102 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %101, i32 0, i32 3
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @spin_lock_irqsave(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %60, %25
  %106 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %107 = load i64, i64* @CS4231_IRQ_STATUS, align 8
  %108 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %106, i64 %107, i32 0)
  %109 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %110 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %111 = load i32, i32* @STATUS, align 4
  %112 = call i32 @CS4231U(%struct.snd_cs4231* %110, i32 %111)
  %113 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %109, i32 0, i32 %112)
  %114 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %115 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %116 = load i32, i32* @STATUS, align 4
  %117 = call i32 @CS4231U(%struct.snd_cs4231* %115, i32 %116)
  %118 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %114, i32 0, i32 %117)
  %119 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %120 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %119, i32 0, i32 3
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %124 = call i32 @snd_cs4231_calibrate_mute(%struct.snd_cs4231* %123, i32 0)
  %125 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %126 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  %127 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %128 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %127, i32 0, i32 2
  %129 = call i32 @mutex_unlock(i32* %128)
  br label %130

130:                                              ; preds = %105, %21
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_cs4231_calibrate_mute(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs4231_out(%struct.snd_cs4231*, i64, i32) #1

declare dso_local i32 @__cs4231_writeb(%struct.snd_cs4231*, i32, i32) #1

declare dso_local i32 @CS4231U(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_cs4231_mce_up(%struct.snd_cs4231*) #1

declare dso_local i32 @snd_cs4231_mce_down(%struct.snd_cs4231*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
