; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i64, i32, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_audioIRQPending = common dso_local global i32 0, align 4
@HDSP_midi0IRQPending = common dso_local global i32 0, align 4
@HDSP_midi1IRQPending = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@HDSP_interruptConfirmation = common dso_local global i32 0, align 4
@HDSP_midiStatusIn0 = common dso_local global i32 0, align 4
@HDSP_midiStatusIn1 = common dso_local global i32 0, align 4
@HDSP_InitializationComplete = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@HDSP_Midi0InterruptEnable = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@Multiface = common dso_local global i64 0, align 8
@RPM = common dso_local global i64 0, align 8
@H9632 = common dso_local global i64 0, align 8
@HDSP_Midi1InterruptEnable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_hdsp_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hdsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.hdsp*
  store %struct.hdsp* %15, %struct.hdsp** %6, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %17 = load i32, i32* @HDSP_statusRegister, align 4
  %18 = call i32 @hdsp_read(%struct.hdsp* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @HDSP_audioIRQPending, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @HDSP_midi0IRQPending, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @HDSP_midi1IRQPending, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %198

38:                                               ; preds = %33, %30, %2
  %39 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %40 = load i32, i32* @HDSP_interruptConfirmation, align 4
  %41 = call i32 @hdsp_write(%struct.hdsp* %39, i32 %40, i32 0)
  %42 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %43 = load i32, i32* @HDSP_midiStatusIn0, align 4
  %44 = call i32 @hdsp_read(%struct.hdsp* %42, i32 %43)
  %45 = and i32 %44, 255
  store i32 %45, i32* %11, align 4
  %46 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %47 = load i32, i32* @HDSP_midiStatusIn1, align 4
  %48 = call i32 @hdsp_read(%struct.hdsp* %46, i32 %47)
  %49 = and i32 %48, 255
  store i32 %49, i32* %12, align 4
  %50 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %51 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @HDSP_InitializationComplete, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %38
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %198

58:                                               ; preds = %38
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %63 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %62, i32 0, i32 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %68 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %67, i32 0, i32 6
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @snd_pcm_period_elapsed(i32 %75)
  br label %77

77:                                               ; preds = %66, %61
  %78 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %79 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %84 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %83, i32 0, i32 6
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @snd_pcm_period_elapsed(i32 %91)
  br label %93

93:                                               ; preds = %82, %77
  br label %94

94:                                               ; preds = %93, %58
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %97
  %101 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %102 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %100
  %106 = load i32, i32* @HDSP_Midi0InterruptEnable, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %109 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %113 = load i32, i32* @HDSP_controlRegister, align 4
  %114 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %115 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @hdsp_write(%struct.hdsp* %112, i32 %113, i32 %116)
  %118 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %119 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %118, i32 0, i32 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  store i32 1, i32* %13, align 4
  br label %129

123:                                              ; preds = %100
  %124 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %125 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %124, i32 0, i32 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 0
  %128 = call i32 @snd_hdsp_midi_input_read(%struct.TYPE_6__* %127)
  br label %129

129:                                              ; preds = %123, %105
  br label %130

130:                                              ; preds = %129, %97, %94
  %131 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %132 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @Multiface, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %184

136:                                              ; preds = %130
  %137 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %138 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @RPM, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %184

142:                                              ; preds = %136
  %143 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %144 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @H9632, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %184

148:                                              ; preds = %142
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %184

151:                                              ; preds = %148
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %184

154:                                              ; preds = %151
  %155 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %156 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %154
  %160 = load i32, i32* @HDSP_Midi1InterruptEnable, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %163 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %167 = load i32, i32* @HDSP_controlRegister, align 4
  %168 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %169 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @hdsp_write(%struct.hdsp* %166, i32 %167, i32 %170)
  %172 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %173 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %172, i32 0, i32 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 4
  store i32 1, i32* %13, align 4
  br label %183

177:                                              ; preds = %154
  %178 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %179 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %178, i32 0, i32 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 1
  %182 = call i32 @snd_hdsp_midi_input_read(%struct.TYPE_6__* %181)
  br label %183

183:                                              ; preds = %177, %159
  br label %184

184:                                              ; preds = %183, %151, %148, %142, %136, %130
  %185 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %186 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %194 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %193, i32 0, i32 2
  %195 = call i32 @tasklet_schedule(i32* %194)
  br label %196

196:                                              ; preds = %192, %189, %184
  %197 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %56, %36
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @snd_hdsp_midi_input_read(%struct.TYPE_6__*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
