; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonicvibes = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@STATUS = common dso_local global i32 0, align 4
@SV_DMAA_IRQ = common dso_local global i8 0, align 1
@SV_DMAC_IRQ = common dso_local global i8 0, align 1
@SV_MIDI_IRQ = common dso_local global i8 0, align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IRQ failure - interrupts disabled!!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SV_UD_IRQ = common dso_local global i8 0, align 1
@SV_IREG_UD_BUTTON = common dso_local global i32 0, align 4
@SV_IREG_LEFT_ANALOG = common dso_local global i32 0, align 4
@SV_IREG_RIGHT_ANALOG = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_sonicvibes_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sonicvibes*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.sonicvibes*
  store %struct.sonicvibes* %15, %struct.sonicvibes** %6, align 8
  %16 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %17 = load i32, i32* @STATUS, align 4
  %18 = call i32 @SV_REG(%struct.sonicvibes* %16, i32 %17)
  %19 = call zeroext i8 @inb(i32 %18)
  store i8 %19, i8* %7, align 1
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @SV_DMAA_IRQ, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @SV_DMAC_IRQ, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = load i8, i8* @SV_MIDI_IRQ, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = and i32 %21, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %212

34:                                               ; preds = %2
  %35 = load i8, i8* %7, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %40 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %39, i32 0, i32 8
  store i32 -1, i32* %40, align 8
  %41 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %42 = load i32, i32* @IRQMASK, align 4
  %43 = call i32 @SV_REG(%struct.sonicvibes* %41, i32 %42)
  %44 = call i32 @outb(i32 -1, i32 %43)
  %45 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %46 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %212

52:                                               ; preds = %34
  %53 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %54 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load i8, i8* %7, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* @SV_DMAA_IRQ, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %66 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snd_pcm_period_elapsed(i32 %67)
  br label %69

69:                                               ; preds = %64, %57
  %70 = load i8, i8* %7, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @SV_DMAC_IRQ, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %78 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @snd_pcm_period_elapsed(i32 %79)
  br label %81

81:                                               ; preds = %76, %69
  br label %82

82:                                               ; preds = %81, %52
  %83 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %84 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %83, i32 0, i32 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = icmp ne %struct.TYPE_5__* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load i8, i8* %7, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @SV_MIDI_IRQ, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %97 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %96, i32 0, i32 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @snd_mpu401_uart_interrupt(i32 %95, i32 %100)
  br label %102

102:                                              ; preds = %94, %87
  br label %103

103:                                              ; preds = %102, %82
  %104 = load i8, i8* %7, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @SV_UD_IRQ, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %210

110:                                              ; preds = %103
  %111 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %112 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %111, i32 0, i32 3
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %115 = load i32, i32* @SV_IREG_UD_BUTTON, align 4
  %116 = call i8* @snd_sonicvibes_in1(%struct.sonicvibes* %114, i32 %115)
  %117 = ptrtoint i8* %116 to i8
  store i8 %117, i8* %8, align 1
  %118 = load i8, i8* %8, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 63
  store i32 %120, i32* %9, align 4
  %121 = load i8, i8* %8, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 64
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %110
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %125, %110
  %129 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %130 = load i32, i32* @SV_IREG_LEFT_ANALOG, align 4
  %131 = call i8* @snd_sonicvibes_in1(%struct.sonicvibes* %129, i32 %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %12, align 4
  store i32 %132, i32* %10, align 4
  %133 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %134 = load i32, i32* @SV_IREG_RIGHT_ANALOG, align 4
  %135 = call i8* @snd_sonicvibes_in1(%struct.sonicvibes* %133, i32 %134)
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* %13, align 4
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %10, align 4
  %138 = and i32 %137, 31
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %11, align 4
  %140 = and i32 %139, 31
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %128
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %146, %128
  %148 = load i32, i32* %10, align 4
  %149 = icmp sgt i32 %148, 31
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 31, i32* %10, align 4
  br label %151

151:                                              ; preds = %150, %147
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 0, i32* %11, align 4
  br label %158

158:                                              ; preds = %157, %151
  %159 = load i32, i32* %11, align 4
  %160 = icmp sgt i32 %159, 31
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 31, i32* %11, align 4
  br label %162

162:                                              ; preds = %161, %158
  %163 = load i8, i8* %8, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 %164, 128
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i32, i32* %12, align 4
  %169 = xor i32 %168, 128
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %13, align 4
  %171 = xor i32 %170, 128
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %167, %162
  %173 = load i32, i32* %12, align 4
  %174 = and i32 %173, 128
  %175 = load i32, i32* %10, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %13, align 4
  %178 = and i32 %177, 128
  %179 = load i32, i32* %11, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %11, align 4
  %181 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %182 = load i32, i32* @SV_IREG_LEFT_ANALOG, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %181, i32 %182, i32 %183)
  %185 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %186 = load i32, i32* @SV_IREG_RIGHT_ANALOG, align 4
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %185, i32 %186, i32 %187)
  %189 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %190 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %189, i32 0, i32 3
  %191 = call i32 @spin_unlock(i32* %190)
  %192 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %193 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %192, i32 0, i32 1
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %196 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %197 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %196, i32 0, i32 2
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = call i32 @snd_ctl_notify(%struct.TYPE_8__* %194, i32 %195, i32* %199)
  %201 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %202 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %201, i32 0, i32 1
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %205 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %206 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %205, i32 0, i32 0
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = call i32 @snd_ctl_notify(%struct.TYPE_8__* %203, i32 %204, i32* %208)
  br label %210

210:                                              ; preds = %172, %103
  %211 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %210, %38, %32
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @SV_REG(%struct.sonicvibes*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @snd_sonicvibes_in1(%struct.sonicvibes*, i32) #1

declare dso_local i32 @snd_sonicvibes_out1(%struct.sonicvibes*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_ctl_notify(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
