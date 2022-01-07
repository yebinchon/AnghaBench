; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i32*, i32 }

@CS4231_PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@CS4231_PLAYBACK_PIO = common dso_local global i32 0, align 4
@CS4231_RECORD_ENABLE = common dso_local global i32 0, align 4
@CS4231_RECORD_PIO = common dso_local global i32 0, align 4
@CS4231_CALIB_MODE = common dso_local global i32 0, align 4
@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@CS4231_AUTOCALIB = common dso_local global i32 0, align 4
@CS4231_ALT_FEATURE_1 = common dso_local global i64 0, align 8
@CS4231_ALT_FEATURE_2 = common dso_local global i64 0, align 8
@CS4231_PLAYBK_FORMAT = common dso_local global i64 0, align 8
@CS4231_REC_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs4231*)* @snd_cs4231_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4231_init(%struct.snd_cs4231* %0) #0 {
  %2 = alloca %struct.snd_cs4231*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %2, align 8
  %4 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %5 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %4)
  %6 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %7 = call i32 @snd_cs4231_mce_up(%struct.snd_cs4231* %6)
  %8 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %9 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %8, i32 0, i32 1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %13 = load i32, i32* @CS4231_PLAYBACK_PIO, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CS4231_RECORD_ENABLE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CS4231_RECORD_PIO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CS4231_CALIB_MODE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %23 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %21
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @CS4231_AUTOCALIB, align 4
  %30 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %31 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %29
  store i32 %36, i32* %34, align 4
  %37 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %38 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %39 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %40 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %37, i64 %38, i32 %44)
  %46 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %47 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %46, i32 0, i32 1
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %51 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %50)
  %52 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %53 = call i32 @snd_cs4231_mce_up(%struct.snd_cs4231* %52)
  %54 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %55 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %54, i32 0, i32 1
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %59 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %60 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %61 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %58, i64 %59, i32 %65)
  %67 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %68 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %67, i32 0, i32 1
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %72 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %71)
  %73 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %74 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %73, i32 0, i32 1
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %78 = load i64, i64* @CS4231_ALT_FEATURE_2, align 8
  %79 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %80 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @CS4231_ALT_FEATURE_2, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %77, i64 %78, i32 %84)
  %86 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %87 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %86, i32 0, i32 1
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %91 = call i32 @snd_cs4231_mce_up(%struct.snd_cs4231* %90)
  %92 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %93 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %92, i32 0, i32 1
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %97 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %98 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %99 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %96, i64 %97, i32 %103)
  %105 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %106 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %105, i32 0, i32 1
  %107 = load i64, i64* %3, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %110 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %109)
  %111 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %112 = call i32 @snd_cs4231_mce_up(%struct.snd_cs4231* %111)
  %113 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %114 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %113, i32 0, i32 1
  %115 = load i64, i64* %3, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %118 = load i64, i64* @CS4231_REC_FORMAT, align 8
  %119 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %120 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @CS4231_REC_FORMAT, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %117, i64 %118, i32 %124)
  %126 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %127 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %126, i32 0, i32 1
  %128 = load i64, i64* %3, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %131 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %130)
  ret void
}

declare dso_local i32 @snd_cs4231_mce_down(%struct.snd_cs4231*) #1

declare dso_local i32 @snd_cs4231_mce_up(%struct.snd_cs4231*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs4231_out(%struct.snd_cs4231*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
