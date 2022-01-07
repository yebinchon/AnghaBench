; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IRQCONTROL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@ADC1 = common dso_local global i32 0, align 4
@DAC1 = common dso_local global i32 0, align 4
@ESSSB_IREG_AUDIO2CONTROL2 = common dso_local global i32 0, align 4
@DAC2 = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@AUDIO2DMAADDR = common dso_local global i32 0, align 4
@AUDIO2DMACOUNT = common dso_local global i32 0, align 4
@DMAADDR = common dso_local global i32 0, align 4
@DMACOUNT = common dso_local global i32 0, align 4
@DMASTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_es1938_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.es1938*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.es1938*
  store %struct.es1938* %11, %struct.es1938** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.es1938*, %struct.es1938** %5, align 8
  %13 = load i32, i32* @IRQCONTROL, align 4
  %14 = call i32 @SLIO_REG(%struct.es1938* %12, i32 %13)
  %15 = call zeroext i8 @inb(i32 %14)
  store i8 %15, i8* %6, align 1
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 16
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %21 = load %struct.es1938*, %struct.es1938** %5, align 8
  %22 = load i32, i32* @STATUS, align 4
  %23 = call i32 @SLSB_REG(%struct.es1938* %21, i32 %22)
  %24 = call zeroext i8 @inb(i32 %23)
  store i8 %24, i8* %7, align 1
  %25 = load %struct.es1938*, %struct.es1938** %5, align 8
  %26 = getelementptr inbounds %struct.es1938, %struct.es1938* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ADC1, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.es1938*, %struct.es1938** %5, align 8
  %33 = getelementptr inbounds %struct.es1938, %struct.es1938* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snd_pcm_period_elapsed(i32 %34)
  br label %49

36:                                               ; preds = %20
  %37 = load %struct.es1938*, %struct.es1938** %5, align 8
  %38 = getelementptr inbounds %struct.es1938, %struct.es1938* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DAC1, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.es1938*, %struct.es1938** %5, align 8
  %45 = getelementptr inbounds %struct.es1938, %struct.es1938* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snd_pcm_period_elapsed(i32 %46)
  br label %48

48:                                               ; preds = %43, %36
  br label %49

49:                                               ; preds = %48, %31
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  %56 = load %struct.es1938*, %struct.es1938** %5, align 8
  %57 = load i32, i32* @ESSSB_IREG_AUDIO2CONTROL2, align 4
  %58 = call i32 @snd_es1938_mixer_bits(%struct.es1938* %56, i32 %57, i32 128, i32 0)
  %59 = load %struct.es1938*, %struct.es1938** %5, align 8
  %60 = getelementptr inbounds %struct.es1938, %struct.es1938* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DAC2, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.es1938*, %struct.es1938** %5, align 8
  %67 = getelementptr inbounds %struct.es1938, %struct.es1938* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @snd_pcm_period_elapsed(i32 %68)
  br label %70

70:                                               ; preds = %65, %55
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 64
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %122

76:                                               ; preds = %71
  %77 = load %struct.es1938*, %struct.es1938** %5, align 8
  %78 = call i32 @snd_es1938_mixer_read(%struct.es1938* %77, i32 100)
  %79 = and i32 %78, 128
  store i32 %79, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %80 = load %struct.es1938*, %struct.es1938** %5, align 8
  %81 = getelementptr inbounds %struct.es1938, %struct.es1938* %80, i32 0, i32 3
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %84 = load %struct.es1938*, %struct.es1938** %5, align 8
  %85 = getelementptr inbounds %struct.es1938, %struct.es1938* %84, i32 0, i32 6
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 @snd_ctl_notify(%struct.TYPE_12__* %82, i32 %83, i32* %87)
  %89 = load %struct.es1938*, %struct.es1938** %5, align 8
  %90 = getelementptr inbounds %struct.es1938, %struct.es1938* %89, i32 0, i32 3
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %93 = load %struct.es1938*, %struct.es1938** %5, align 8
  %94 = getelementptr inbounds %struct.es1938, %struct.es1938* %93, i32 0, i32 5
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i32 @snd_ctl_notify(%struct.TYPE_12__* %91, i32 %92, i32* %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %76
  %101 = load %struct.es1938*, %struct.es1938** %5, align 8
  %102 = getelementptr inbounds %struct.es1938, %struct.es1938* %101, i32 0, i32 3
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %105 = load %struct.es1938*, %struct.es1938** %5, align 8
  %106 = getelementptr inbounds %struct.es1938, %struct.es1938* %105, i32 0, i32 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = call i32 @snd_ctl_notify(%struct.TYPE_12__* %103, i32 %104, i32* %108)
  %110 = load %struct.es1938*, %struct.es1938** %5, align 8
  %111 = getelementptr inbounds %struct.es1938, %struct.es1938* %110, i32 0, i32 3
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %114 = load %struct.es1938*, %struct.es1938** %5, align 8
  %115 = getelementptr inbounds %struct.es1938, %struct.es1938* %114, i32 0, i32 2
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = call i32 @snd_ctl_notify(%struct.TYPE_12__* %112, i32 %113, i32* %117)
  br label %119

119:                                              ; preds = %100, %76
  %120 = load %struct.es1938*, %struct.es1938** %5, align 8
  %121 = call i32 @snd_es1938_mixer_write(%struct.es1938* %120, i32 102, i32 0)
  br label %122

122:                                              ; preds = %119, %71
  %123 = load i8, i8* %6, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 128
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load %struct.es1938*, %struct.es1938** %5, align 8
  %129 = getelementptr inbounds %struct.es1938, %struct.es1938* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = icmp ne %struct.TYPE_11__* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  store i32 1, i32* %8, align 4
  %133 = load i32, i32* %3, align 4
  %134 = load %struct.es1938*, %struct.es1938** %5, align 8
  %135 = getelementptr inbounds %struct.es1938, %struct.es1938* %134, i32 0, i32 1
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @snd_mpu401_uart_interrupt(i32 %133, i32 %138)
  br label %140

140:                                              ; preds = %132, %127
  br label %141

141:                                              ; preds = %140, %122
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @IRQ_RETVAL(i32 %142)
  ret i32 %143
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @SLIO_REG(%struct.es1938*, i32) #1

declare dso_local i32 @SLSB_REG(%struct.es1938*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @snd_es1938_mixer_bits(%struct.es1938*, i32, i32, i32) #1

declare dso_local i32 @snd_es1938_mixer_read(%struct.es1938*, i32) #1

declare dso_local i32 @snd_ctl_notify(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @snd_es1938_mixer_write(%struct.es1938*, i32, i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
