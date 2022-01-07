; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, i32, i32*, i32, i32 }

@WSS_MODE_OPEN = common dso_local global i32 0, align 4
@WSS_HW_AD1848_MASK = common dso_local global i32 0, align 4
@CS4231_IRQ_STATUS = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@CS4231_IRQ_ENABLE = common dso_local global i32 0, align 4
@CS4231_PIN_CTRL = common dso_local global i64 0, align 8
@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@CS4231_PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@CS4231_PLAYBACK_PIO = common dso_local global i32 0, align 4
@CS4231_RECORD_ENABLE = common dso_local global i32 0, align 4
@CS4231_RECORD_PIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wss*, i32)* @snd_wss_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wss_close(%struct.snd_wss* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %7 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %6, i32 0, i32 3
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %12 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %16 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WSS_MODE_OPEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %23 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %22, i32 0, i32 3
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %156

25:                                               ; preds = %2
  %26 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %27 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %26, i32 0, i32 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %31 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %38 = load i64, i64* @CS4231_IRQ_STATUS, align 8
  %39 = call i32 @snd_wss_out(%struct.snd_wss* %37, i64 %38, i32 0)
  br label %40

40:                                               ; preds = %36, %25
  %41 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %42 = load i32, i32* @STATUS, align 4
  %43 = call i32 @CS4231P(i32 %42)
  %44 = call i32 @wss_outb(%struct.snd_wss* %41, i32 %43, i32 0)
  %45 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %46 = load i32, i32* @STATUS, align 4
  %47 = call i32 @CS4231P(i32 %46)
  %48 = call i32 @wss_outb(%struct.snd_wss* %45, i32 %47, i32 0)
  %49 = load i32, i32* @CS4231_IRQ_ENABLE, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %52 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @CS4231_PIN_CTRL, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %50
  store i32 %57, i32* %55, align 4
  %58 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %59 = load i64, i64* @CS4231_PIN_CTRL, align 8
  %60 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %61 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @CS4231_PIN_CTRL, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @snd_wss_out(%struct.snd_wss* %58, i64 %59, i32 %65)
  %67 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %68 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %74 = load i32, i32* @CS4231_PLAYBACK_PIO, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @CS4231_RECORD_ENABLE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CS4231_RECORD_PIO, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %72, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %40
  %83 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %84 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %83, i32 0, i32 4
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %88 = call i32 @snd_wss_mce_up(%struct.snd_wss* %87)
  %89 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %90 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %89, i32 0, i32 4
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %94 = load i32, i32* @CS4231_PLAYBACK_PIO, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @CS4231_RECORD_ENABLE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @CS4231_RECORD_PIO, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %102 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %100
  store i32 %107, i32* %105, align 4
  %108 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %109 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %110 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %111 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @snd_wss_out(%struct.snd_wss* %108, i64 %109, i32 %115)
  %117 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %118 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %117, i32 0, i32 4
  %119 = load i64, i64* %5, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %122 = call i32 @snd_wss_mce_down(%struct.snd_wss* %121)
  %123 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %124 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %123, i32 0, i32 4
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  br label %127

127:                                              ; preds = %82, %40
  %128 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %129 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %127
  %135 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %136 = load i64, i64* @CS4231_IRQ_STATUS, align 8
  %137 = call i32 @snd_wss_out(%struct.snd_wss* %135, i64 %136, i32 0)
  br label %138

138:                                              ; preds = %134, %127
  %139 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %140 = load i32, i32* @STATUS, align 4
  %141 = call i32 @CS4231P(i32 %140)
  %142 = call i32 @wss_outb(%struct.snd_wss* %139, i32 %141, i32 0)
  %143 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %144 = load i32, i32* @STATUS, align 4
  %145 = call i32 @CS4231P(i32 %144)
  %146 = call i32 @wss_outb(%struct.snd_wss* %143, i32 %145, i32 0)
  %147 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %148 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %147, i32 0, i32 4
  %149 = load i64, i64* %5, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %152 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  %153 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %154 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %153, i32 0, i32 3
  %155 = call i32 @mutex_unlock(i32* %154)
  br label %156

156:                                              ; preds = %138, %21
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i64, i32) #1

declare dso_local i32 @wss_outb(%struct.snd_wss*, i32, i32) #1

declare dso_local i32 @CS4231P(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_wss_mce_up(%struct.snd_wss*) #1

declare dso_local i32 @snd_wss_mce_down(%struct.snd_wss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
