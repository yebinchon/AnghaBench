; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.ensoniq = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ES_ADC_EN = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@ES_PAGE_ADC = common dso_local global i32 0, align 4
@MEM_PAGE = common dso_local global i32 0, align 4
@ADC_FRAME = common dso_local global i32 0, align 4
@ADC_SIZE = common dso_local global i32 0, align 4
@ES_R1_LOOP_SEL = common dso_local global i32 0, align 4
@ES_R1_MODEM = common dso_local global i32 0, align 4
@ES_R1_INT_EN = common dso_local global i32 0, align 4
@SERIAL = common dso_local global i32 0, align 4
@snd_ensoniq_sample_shift = common dso_local global i32* null, align 8
@ADC_COUNT = common dso_local global i32 0, align 4
@ES_1370_PCLKDIVM = common dso_local global i32 0, align 4
@ES_MODE_CAPTURE = common dso_local global i32 0, align 4
@ES_MODE_PLAY2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ensoniq_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ensoniq_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.ensoniq*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.ensoniq* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.ensoniq* %7, %struct.ensoniq** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %11)
  %13 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %14 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %15)
  %17 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %18 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_pcm_format_width(i32 %21)
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, 2
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %37 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %36, i32 0, i32 4
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load i32, i32* @ES_ADC_EN, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %42 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %46 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %49 = load i32, i32* @CONTROL, align 4
  %50 = call i32 @ES_REG(%struct.ensoniq* %48, i32 %49)
  %51 = call i32 @outl(i32 %47, i32 %50)
  %52 = load i32, i32* @ES_PAGE_ADC, align 4
  %53 = call i32 @ES_MEM_PAGEO(i32 %52)
  %54 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %55 = load i32, i32* @MEM_PAGE, align 4
  %56 = call i32 @ES_REG(%struct.ensoniq* %54, i32 %55)
  %57 = call i32 @outl(i32 %53, i32 %56)
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %62 = load i32, i32* @ADC_FRAME, align 4
  %63 = call i32 @ES_REG(%struct.ensoniq* %61, i32 %62)
  %64 = call i32 @outl(i32 %60, i32 %63)
  %65 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %66 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 2
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %71 = load i32, i32* @ADC_SIZE, align 4
  %72 = call i32 @ES_REG(%struct.ensoniq* %70, i32 %71)
  %73 = call i32 @outl(i32 %69, i32 %72)
  %74 = load i32, i32* @ES_R1_LOOP_SEL, align 4
  %75 = load i32, i32* @ES_R1_MODEM, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %79 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @ES_R1_INT_EN, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ES_R1_MODEO(i32 %83)
  %85 = or i32 %82, %84
  %86 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %87 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %91 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %94 = load i32, i32* @SERIAL, align 4
  %95 = call i32 @ES_REG(%struct.ensoniq* %93, i32 %94)
  %96 = call i32 @outl(i32 %92, i32 %95)
  %97 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %98 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** @snd_ensoniq_sample_shift, align 8
  %101 = load i32, i32* %5, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %99, %104
  %106 = sub nsw i32 %105, 1
  %107 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %108 = load i32, i32* @ADC_COUNT, align 4
  %109 = call i32 @ES_REG(%struct.ensoniq* %107, i32 %108)
  %110 = call i32 @outl(i32 %106, i32 %109)
  %111 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %112 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %115 = load i32, i32* @CONTROL, align 4
  %116 = call i32 @ES_REG(%struct.ensoniq* %114, i32 %115)
  %117 = call i32 @outl(i32 %113, i32 %116)
  %118 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %119 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %118, i32 0, i32 4
  %120 = call i32 @spin_unlock_irq(i32* %119)
  %121 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @snd_es1371_adc_rate(%struct.ensoniq* %121, i32 %124)
  ret i32 0
}

declare dso_local %struct.ensoniq* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @ES_MEM_PAGEO(i32) #1

declare dso_local i32 @ES_R1_MODEO(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_es1371_adc_rate(%struct.ensoniq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
