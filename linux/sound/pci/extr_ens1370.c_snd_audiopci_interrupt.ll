; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_audiopci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_audiopci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ensoniq = type { i32, i64, i64, i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@ES_INTR = common dso_local global i32 0, align 4
@ES_DAC1 = common dso_local global i32 0, align 4
@ES_P1_INT_EN = common dso_local global i32 0, align 4
@ES_DAC2 = common dso_local global i32 0, align 4
@ES_P2_INT_EN = common dso_local global i32 0, align 4
@ES_ADC = common dso_local global i32 0, align 4
@ES_R1_INT_EN = common dso_local global i32 0, align 4
@SERIAL = common dso_local global i32 0, align 4
@ES_UART = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_audiopci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_audiopci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ensoniq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ensoniq*
  store %struct.ensoniq* %10, %struct.ensoniq** %6, align 8
  %11 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %12 = icmp eq %struct.ensoniq* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %132

15:                                               ; preds = %2
  %16 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %17 = load i32, i32* @STATUS, align 4
  %18 = call i32 @ES_REG(%struct.ensoniq* %16, i32 %17)
  %19 = call i32 @inl(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ES_INTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %132

26:                                               ; preds = %15
  %27 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %28 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %27, i32 0, i32 4
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %31 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ES_DAC1, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load i32, i32* @ES_P1_INT_EN, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %26
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ES_DAC2, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @ES_P2_INT_EN, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ES_ADC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @ES_R1_INT_EN, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %65 = load i32, i32* @SERIAL, align 4
  %66 = call i32 @ES_REG(%struct.ensoniq* %64, i32 %65)
  %67 = call i32 @outl(i32 %63, i32 %66)
  %68 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %69 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %72 = load i32, i32* @SERIAL, align 4
  %73 = call i32 @ES_REG(%struct.ensoniq* %71, i32 %72)
  %74 = call i32 @outl(i32 %70, i32 %73)
  %75 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %76 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %75, i32 0, i32 4
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @ES_UART, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %62
  %83 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %84 = call i32 @snd_ensoniq_midi_interrupt(%struct.ensoniq* %83)
  br label %85

85:                                               ; preds = %82, %62
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @ES_DAC2, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %92 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %97 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @snd_pcm_period_elapsed(i64 %98)
  br label %100

100:                                              ; preds = %95, %90, %85
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @ES_ADC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %107 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %112 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @snd_pcm_period_elapsed(i64 %113)
  br label %115

115:                                              ; preds = %110, %105, %100
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @ES_DAC1, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %122 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %127 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @snd_pcm_period_elapsed(i64 %128)
  br label %130

130:                                              ; preds = %125, %120, %115
  %131 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %24, %13
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_ensoniq_midi_interrupt(%struct.ensoniq*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
