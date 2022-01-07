; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu10k1x = type { i64, %struct.TYPE_2__, %struct.emu10k1x_voice, %struct.emu10k1x_voice* }
%struct.TYPE_2__ = type { i32 (%struct.emu10k1x.0*, i32)* }
%struct.emu10k1x.0 = type opaque
%struct.emu10k1x_voice = type { i64 }

@IPR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IPR_CAP_0_LOOP = common dso_local global i32 0, align 4
@IPR_CAP_0_HALF_LOOP = common dso_local global i32 0, align 4
@INTE_CAP_0_LOOP = common dso_local global i32 0, align 4
@INTE_CAP_0_HALF_LOOP = common dso_local global i32 0, align 4
@IPR_CH_0_LOOP = common dso_local global i32 0, align 4
@IPR_CH_0_HALF_LOOP = common dso_local global i32 0, align 4
@IPR_MIDITRANSBUFEMPTY = common dso_local global i32 0, align 4
@IPR_MIDIRECVBUFEMPTY = common dso_local global i32 0, align 4
@INTE_MIDITXENABLE = common dso_local global i32 0, align 4
@INTE_MIDIRXENABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_emu10k1x_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.emu10k1x*, align 8
  %8 = alloca %struct.emu10k1x_voice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.emu10k1x_voice*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.emu10k1x*
  store %struct.emu10k1x* %13, %struct.emu10k1x** %7, align 8
  %14 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %15 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %14, i32 0, i32 3
  %16 = load %struct.emu10k1x_voice*, %struct.emu10k1x_voice** %15, align 8
  store %struct.emu10k1x_voice* %16, %struct.emu10k1x_voice** %8, align 8
  %17 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %18 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inl(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %124

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IPR_CAP_0_LOOP, align 4
  %30 = load i32, i32* @IPR_CAP_0_HALF_LOOP, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %36 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %35, i32 0, i32 2
  store %struct.emu10k1x_voice* %36, %struct.emu10k1x_voice** %11, align 8
  %37 = load %struct.emu10k1x_voice*, %struct.emu10k1x_voice** %11, align 8
  %38 = getelementptr inbounds %struct.emu10k1x_voice, %struct.emu10k1x_voice* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %43 = load %struct.emu10k1x_voice*, %struct.emu10k1x_voice** %11, align 8
  %44 = call i32 @snd_emu10k1x_pcm_interrupt(%struct.emu10k1x* %42, %struct.emu10k1x_voice* %43)
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %47 = load i32, i32* @INTE_CAP_0_LOOP, align 4
  %48 = load i32, i32* @INTE_CAP_0_HALF_LOOP, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* @IPR_CH_0_LOOP, align 4
  %54 = load i32, i32* @IPR_CH_0_HALF_LOOP, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %83, %52
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.emu10k1x_voice*, %struct.emu10k1x_voice** %8, align 8
  %66 = getelementptr inbounds %struct.emu10k1x_voice, %struct.emu10k1x_voice* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %71 = load %struct.emu10k1x_voice*, %struct.emu10k1x_voice** %8, align 8
  %72 = call i32 @snd_emu10k1x_pcm_interrupt(%struct.emu10k1x* %70, %struct.emu10k1x_voice* %71)
  br label %77

73:                                               ; preds = %64
  %74 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.emu10k1x_voice*, %struct.emu10k1x_voice** %8, align 8
  %80 = getelementptr inbounds %struct.emu10k1x_voice, %struct.emu10k1x_voice* %79, i32 1
  store %struct.emu10k1x_voice* %80, %struct.emu10k1x_voice** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = shl i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %56

86:                                               ; preds = %56
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @IPR_MIDITRANSBUFEMPTY, align 4
  %89 = load i32, i32* @IPR_MIDIRECVBUFEMPTY, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %86
  %94 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %95 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.emu10k1x.0*, i32)*, i32 (%struct.emu10k1x.0*, i32)** %96, align 8
  %98 = icmp ne i32 (%struct.emu10k1x.0*, i32)* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %101 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32 (%struct.emu10k1x.0*, i32)*, i32 (%struct.emu10k1x.0*, i32)** %102, align 8
  %104 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %105 = bitcast %struct.emu10k1x* %104 to %struct.emu10k1x.0*
  %106 = load i32, i32* %6, align 4
  %107 = call i32 %103(%struct.emu10k1x.0* %105, i32 %106)
  br label %114

108:                                              ; preds = %93
  %109 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %110 = load i32, i32* @INTE_MIDITXENABLE, align 4
  %111 = load i32, i32* @INTE_MIDIRXENABLE, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x* %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %99
  br label %115

115:                                              ; preds = %114, %86
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.emu10k1x*, %struct.emu10k1x** %7, align 8
  %118 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IPR, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @outl(i32 %116, i64 %121)
  %123 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %115, %25
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @snd_emu10k1x_pcm_interrupt(%struct.emu10k1x*, %struct.emu10k1x_voice*) #1

declare dso_local i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
