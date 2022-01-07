; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.snd_es18xx* }
%struct.snd_es18xx = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i64, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ES18XX_CONTROL = common dso_local global i32 0, align 4
@AUDIO2_IRQ = common dso_local global i8 0, align 1
@DAC2 = common dso_local global i32 0, align 4
@AUDIO1_IRQ = common dso_local global i8 0, align 1
@ADC1 = common dso_local global i32 0, align 4
@DAC1 = common dso_local global i32 0, align 4
@MPU_IRQ = common dso_local global i8 0, align 1
@HWV_IRQ = common dso_local global i8 0, align 1
@ES18XX_HWV = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_es18xx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_es18xx*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.snd_card*
  store %struct.snd_card* %10, %struct.snd_card** %5, align 8
  %11 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %12 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %11, i32 0, i32 0
  %13 = load %struct.snd_es18xx*, %struct.snd_es18xx** %12, align 8
  store %struct.snd_es18xx* %13, %struct.snd_es18xx** %6, align 8
  %14 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %15 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ES18XX_CONTROL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %22 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %21, i32 0, i32 11
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 6
  %25 = call i32 @inb(i64 %24)
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %29 = call i32 @snd_es18xx_mixer_read(%struct.snd_es18xx* %28, i32 127)
  %30 = ashr i32 %29, 4
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %7, align 1
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @AUDIO2_IRQ, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %41 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DAC2, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %48 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_pcm_period_elapsed(i32 %49)
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %53 = call i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx* %52, i32 122, i32 128, i32 0)
  br label %54

54:                                               ; preds = %51, %32
  %55 = load i8, i8* %7, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @AUDIO1_IRQ, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %54
  %62 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %63 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ADC1, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %70 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_pcm_period_elapsed(i32 %71)
  br label %86

73:                                               ; preds = %61
  %74 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %75 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DAC1, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %82 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @snd_pcm_period_elapsed(i32 %83)
  br label %85

85:                                               ; preds = %80, %73
  br label %86

86:                                               ; preds = %85, %68
  %87 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %88 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 14
  %91 = call i32 @inb(i64 %90)
  br label %92

92:                                               ; preds = %86, %54
  %93 = load i8, i8* %7, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @MPU_IRQ, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %92
  %100 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %101 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %100, i32 0, i32 6
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = icmp ne %struct.TYPE_6__* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %107 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %106, i32 0, i32 6
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @snd_mpu401_uart_interrupt(i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %104, %99, %92
  %113 = load i8, i8* %7, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @HWV_IRQ, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %165

119:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  %120 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %121 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ES18XX_HWV, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %119
  %127 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %128 = call i32 @snd_es18xx_mixer_read(%struct.snd_es18xx* %127, i32 100)
  %129 = and i32 %128, 128
  store i32 %129, i32* %8, align 4
  %130 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %131 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %132 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %133 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %132, i32 0, i32 5
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = call i32 @snd_ctl_notify(%struct.snd_card* %130, i32 %131, i32* %135)
  %137 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %138 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %139 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %140 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %139, i32 0, i32 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = call i32 @snd_ctl_notify(%struct.snd_card* %137, i32 %138, i32* %142)
  br label %144

144:                                              ; preds = %126, %119
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %144
  %148 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %149 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %150 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %151 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %150, i32 0, i32 3
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = call i32 @snd_ctl_notify(%struct.snd_card* %148, i32 %149, i32* %153)
  %155 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %156 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %157 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %158 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %157, i32 0, i32 2
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = call i32 @snd_ctl_notify(%struct.snd_card* %155, i32 %156, i32* %160)
  br label %162

162:                                              ; preds = %147, %144
  %163 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %164 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %163, i32 102, i32 0)
  br label %165

165:                                              ; preds = %162, %112
  %166 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %166
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @snd_es18xx_mixer_read(%struct.snd_es18xx*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx*, i32, i32, i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, i32*) #1

declare dso_local i32 @snd_es18xx_mixer_write(%struct.snd_es18xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
