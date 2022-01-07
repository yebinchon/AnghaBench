; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_irq.c_snd_emu10k1_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_irq.c_snd_emu10k1_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_7__*, i64, i64, %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice*, i32 (%struct.snd_emu10k1*)*, i32 (%struct.snd_emu10k1*, i32)*, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)*, %struct.snd_emu10k1_voice*, i32 (%struct.snd_emu10k1*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_emu10k1_voice = type { %struct.TYPE_6__*, i64, i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_emu10k1.0 = type opaque
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.snd_emu10k1.1*, i32)* }
%struct.snd_emu10k1.1 = type opaque
%struct.TYPE_8__ = type { i32 (%struct.snd_emu10k1.2*, i32)* }
%struct.snd_emu10k1.2 = type opaque

@IPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Suspected sound card removal\0A\00", align 1
@IPR_PCIERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"interrupt: PCI error\0A\00", align 1
@INTE_PCIERRORENABLE = common dso_local global i32 0, align 4
@IPR_VOLINCR = common dso_local global i32 0, align 4
@IPR_VOLDECR = common dso_local global i32 0, align 4
@IPR_MUTE = common dso_local global i32 0, align 4
@INTE_VOLINCRENABLE = common dso_local global i32 0, align 4
@INTE_VOLDECRENABLE = common dso_local global i32 0, align 4
@INTE_MUTEENABLE = common dso_local global i32 0, align 4
@IPR_CHANNELLOOP = common dso_local global i32 0, align 4
@IPR_CHANNELNUMBERMASK = common dso_local global i32 0, align 4
@CLIPL = common dso_local global i32 0, align 4
@CLIPH = common dso_local global i32 0, align 4
@HLIPL = common dso_local global i32 0, align 4
@HLIPH = common dso_local global i32 0, align 4
@IPR_ADCBUFFULL = common dso_local global i32 0, align 4
@IPR_ADCBUFHALFFULL = common dso_local global i32 0, align 4
@INTE_ADCBUFENABLE = common dso_local global i32 0, align 4
@IPR_MICBUFFULL = common dso_local global i32 0, align 4
@IPR_MICBUFHALFFULL = common dso_local global i32 0, align 4
@INTE_MICBUFENABLE = common dso_local global i32 0, align 4
@IPR_EFXBUFFULL = common dso_local global i32 0, align 4
@IPR_EFXBUFHALFFULL = common dso_local global i32 0, align 4
@INTE_EFXBUFENABLE = common dso_local global i32 0, align 4
@IPR_MIDITRANSBUFEMPTY = common dso_local global i32 0, align 4
@IPR_MIDIRECVBUFEMPTY = common dso_local global i32 0, align 4
@INTE_MIDITXENABLE = common dso_local global i32 0, align 4
@INTE_MIDIRXENABLE = common dso_local global i32 0, align 4
@IPR_A_MIDITRANSBUFEMPTY2 = common dso_local global i32 0, align 4
@IPR_A_MIDIRECVBUFEMPTY2 = common dso_local global i32 0, align 4
@INTE_A_MIDITXENABLE2 = common dso_local global i32 0, align 4
@INTE_A_MIDIRXENABLE2 = common dso_local global i32 0, align 4
@IPR_INTERVALTIMER = common dso_local global i32 0, align 4
@INTE_INTERVALTIMERENB = common dso_local global i32 0, align 4
@IPR_GPSPDIFSTATUSCHANGE = common dso_local global i32 0, align 4
@IPR_CDROMSTATUSCHANGE = common dso_local global i32 0, align 4
@INTE_GPSPDIFENABLE = common dso_local global i32 0, align 4
@INTE_CDSPDIFENABLE = common dso_local global i32 0, align 4
@IPR_FXDSP = common dso_local global i32 0, align 4
@INTE_FXDSPENABLE = common dso_local global i32 0, align 4
@IPR_P16V = common dso_local global i32 0, align 4
@IPR2 = common dso_local global i64 0, align 8
@INTE2_PLAYBACK_CH_0_LOOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"p16v: status: 0x%08x, mask=0x%08x, pvoice=%p, use=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unhandled interrupt: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"emu10k1 irq routine failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_emu10k1_voice*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.snd_emu10k1_voice*, align 8
  %18 = alloca %struct.snd_emu10k1_voice*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.snd_emu10k1*
  store %struct.snd_emu10k1* %21, %struct.snd_emu10k1** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %610, %2
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inl(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 1000
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i1 [ false, %22 ], [ %32, %30 ]
  br i1 %34, label %35, label %618

35:                                               ; preds = %33
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_info(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %618

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @IPR_PCIERROR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %61 = load i32, i32* @INTE_PCIERRORENABLE, align 4
  %62 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %60, i32 %61)
  %63 = load i32, i32* @IPR_PCIERROR, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %53, %48
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @IPR_VOLINCR, align 4
  %70 = load i32, i32* @IPR_VOLDECR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @IPR_MUTE, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %68, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %67
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %78 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %77, i32 0, i32 14
  %79 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %78, align 8
  %80 = icmp ne i32 (%struct.snd_emu10k1*, i32)* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %82, i32 0, i32 14
  %84 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %83, align 8
  %85 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 %84(%struct.snd_emu10k1* %85, i32 %86)
  br label %96

88:                                               ; preds = %76
  %89 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %90 = load i32, i32* @INTE_VOLINCRENABLE, align 4
  %91 = load i32, i32* @INTE_VOLDECRENABLE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @INTE_MUTEENABLE, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %89, i32 %94)
  br label %96

96:                                               ; preds = %88, %81
  %97 = load i32, i32* @IPR_VOLINCR, align 4
  %98 = load i32, i32* @IPR_VOLDECR, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @IPR_MUTE, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %96, %67
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @IPR_CHANNELLOOP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %227

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @IPR_CHANNELNUMBERMASK, align 4
  %113 = and i32 %111, %112
  store i32 %113, i32* %13, align 4
  %114 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %115 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %114, i32 0, i32 13
  %116 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %115, align 8
  store %struct.snd_emu10k1_voice* %116, %struct.snd_emu10k1_voice** %15, align 8
  %117 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %118 = load i32, i32* @CLIPL, align 4
  %119 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %117, i32 %118, i32 0)
  store i32 %119, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %166, %110
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %169

124:                                              ; preds = %120
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %125, 32
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %129 = load i32, i32* @CLIPH, align 4
  %130 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %128, i32 %129, i32 0)
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32, i32* %14, align 4
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %131
  %136 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %137 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %142 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %141, i32 0, i32 2
  %143 = load i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)*, i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)** %142, align 8
  %144 = icmp ne i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %147 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %146, i32 0, i32 2
  %148 = load i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)*, i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)** %147, align 8
  %149 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %150 = bitcast %struct.snd_emu10k1* %149 to %struct.snd_emu10k1.0*
  %151 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %152 = call i32 %148(%struct.snd_emu10k1.0* %150, %struct.snd_emu10k1_voice* %151)
  %153 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @snd_emu10k1_voice_intr_ack(%struct.snd_emu10k1* %153, i32 %154)
  br label %160

156:                                              ; preds = %140, %135
  %157 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @snd_emu10k1_voice_intr_disable(%struct.snd_emu10k1* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %145
  br label %161

161:                                              ; preds = %160, %131
  %162 = load i32, i32* %14, align 4
  %163 = ashr i32 %162, 1
  store i32 %163, i32* %14, align 4
  %164 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %165 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %164, i32 1
  store %struct.snd_emu10k1_voice* %165, %struct.snd_emu10k1_voice** %15, align 8
  br label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %120

169:                                              ; preds = %120
  %170 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %171 = load i32, i32* @HLIPL, align 4
  %172 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %170, i32 %171, i32 0)
  store i32 %172, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %219, %169
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %222

177:                                              ; preds = %173
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 32
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %182 = load i32, i32* @HLIPH, align 4
  %183 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %181, i32 %182, i32 0)
  store i32 %183, i32* %14, align 4
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i32, i32* %14, align 4
  %186 = and i32 %185, 1
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %214

188:                                              ; preds = %184
  %189 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %190 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %188
  %194 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %195 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %194, i32 0, i32 2
  %196 = load i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)*, i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)** %195, align 8
  %197 = icmp ne i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)* %196, null
  br i1 %197, label %198, label %209

198:                                              ; preds = %193
  %199 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %200 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %199, i32 0, i32 2
  %201 = load i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)*, i32 (%struct.snd_emu10k1.0*, %struct.snd_emu10k1_voice*)** %200, align 8
  %202 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %203 = bitcast %struct.snd_emu10k1* %202 to %struct.snd_emu10k1.0*
  %204 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %205 = call i32 %201(%struct.snd_emu10k1.0* %203, %struct.snd_emu10k1_voice* %204)
  %206 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @snd_emu10k1_voice_half_loop_intr_ack(%struct.snd_emu10k1* %206, i32 %207)
  br label %213

209:                                              ; preds = %193, %188
  %210 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @snd_emu10k1_voice_half_loop_intr_disable(%struct.snd_emu10k1* %210, i32 %211)
  br label %213

213:                                              ; preds = %209, %198
  br label %214

214:                                              ; preds = %213, %184
  %215 = load i32, i32* %14, align 4
  %216 = ashr i32 %215, 1
  store i32 %216, i32* %14, align 4
  %217 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %15, align 8
  %218 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %217, i32 1
  store %struct.snd_emu10k1_voice* %218, %struct.snd_emu10k1_voice** %15, align 8
  br label %219

219:                                              ; preds = %214
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %173

222:                                              ; preds = %173
  %223 = load i32, i32* @IPR_CHANNELLOOP, align 4
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %6, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %222, %105
  %228 = load i32, i32* @IPR_CHANNELNUMBERMASK, align 4
  %229 = xor i32 %228, -1
  %230 = load i32, i32* %6, align 4
  %231 = and i32 %230, %229
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @IPR_ADCBUFFULL, align 4
  %234 = load i32, i32* @IPR_ADCBUFHALFFULL, align 4
  %235 = or i32 %233, %234
  %236 = and i32 %232, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %261

238:                                              ; preds = %227
  %239 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %240 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %239, i32 0, i32 12
  %241 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %240, align 8
  %242 = icmp ne i32 (%struct.snd_emu10k1*, i32)* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %245 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %244, i32 0, i32 12
  %246 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %245, align 8
  %247 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %248 = load i32, i32* %6, align 4
  %249 = call i32 %246(%struct.snd_emu10k1* %247, i32 %248)
  br label %254

250:                                              ; preds = %238
  %251 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %252 = load i32, i32* @INTE_ADCBUFENABLE, align 4
  %253 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %251, i32 %252)
  br label %254

254:                                              ; preds = %250, %243
  %255 = load i32, i32* @IPR_ADCBUFFULL, align 4
  %256 = load i32, i32* @IPR_ADCBUFHALFFULL, align 4
  %257 = or i32 %255, %256
  %258 = xor i32 %257, -1
  %259 = load i32, i32* %6, align 4
  %260 = and i32 %259, %258
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %254, %227
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* @IPR_MICBUFFULL, align 4
  %264 = load i32, i32* @IPR_MICBUFHALFFULL, align 4
  %265 = or i32 %263, %264
  %266 = and i32 %262, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %291

268:                                              ; preds = %261
  %269 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %270 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %269, i32 0, i32 11
  %271 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %270, align 8
  %272 = icmp ne i32 (%struct.snd_emu10k1*, i32)* %271, null
  br i1 %272, label %273, label %280

273:                                              ; preds = %268
  %274 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %275 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %274, i32 0, i32 11
  %276 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %275, align 8
  %277 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %278 = load i32, i32* %6, align 4
  %279 = call i32 %276(%struct.snd_emu10k1* %277, i32 %278)
  br label %284

280:                                              ; preds = %268
  %281 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %282 = load i32, i32* @INTE_MICBUFENABLE, align 4
  %283 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %281, i32 %282)
  br label %284

284:                                              ; preds = %280, %273
  %285 = load i32, i32* @IPR_MICBUFFULL, align 4
  %286 = load i32, i32* @IPR_MICBUFHALFFULL, align 4
  %287 = or i32 %285, %286
  %288 = xor i32 %287, -1
  %289 = load i32, i32* %6, align 4
  %290 = and i32 %289, %288
  store i32 %290, i32* %6, align 4
  br label %291

291:                                              ; preds = %284, %261
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @IPR_EFXBUFFULL, align 4
  %294 = load i32, i32* @IPR_EFXBUFHALFFULL, align 4
  %295 = or i32 %293, %294
  %296 = and i32 %292, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %321

298:                                              ; preds = %291
  %299 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %300 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %299, i32 0, i32 10
  %301 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %300, align 8
  %302 = icmp ne i32 (%struct.snd_emu10k1*, i32)* %301, null
  br i1 %302, label %303, label %310

303:                                              ; preds = %298
  %304 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %305 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %304, i32 0, i32 10
  %306 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %305, align 8
  %307 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %308 = load i32, i32* %6, align 4
  %309 = call i32 %306(%struct.snd_emu10k1* %307, i32 %308)
  br label %314

310:                                              ; preds = %298
  %311 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %312 = load i32, i32* @INTE_EFXBUFENABLE, align 4
  %313 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %311, i32 %312)
  br label %314

314:                                              ; preds = %310, %303
  %315 = load i32, i32* @IPR_EFXBUFFULL, align 4
  %316 = load i32, i32* @IPR_EFXBUFHALFFULL, align 4
  %317 = or i32 %315, %316
  %318 = xor i32 %317, -1
  %319 = load i32, i32* %6, align 4
  %320 = and i32 %319, %318
  store i32 %320, i32* %6, align 4
  br label %321

321:                                              ; preds = %314, %291
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* @IPR_MIDITRANSBUFEMPTY, align 4
  %324 = load i32, i32* @IPR_MIDIRECVBUFEMPTY, align 4
  %325 = or i32 %323, %324
  %326 = and i32 %322, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %356

328:                                              ; preds = %321
  %329 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %330 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %329, i32 0, i32 9
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  %332 = load i32 (%struct.snd_emu10k1.2*, i32)*, i32 (%struct.snd_emu10k1.2*, i32)** %331, align 8
  %333 = icmp ne i32 (%struct.snd_emu10k1.2*, i32)* %332, null
  br i1 %333, label %334, label %343

334:                                              ; preds = %328
  %335 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %336 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %335, i32 0, i32 9
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  %338 = load i32 (%struct.snd_emu10k1.2*, i32)*, i32 (%struct.snd_emu10k1.2*, i32)** %337, align 8
  %339 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %340 = bitcast %struct.snd_emu10k1* %339 to %struct.snd_emu10k1.2*
  %341 = load i32, i32* %6, align 4
  %342 = call i32 %338(%struct.snd_emu10k1.2* %340, i32 %341)
  br label %349

343:                                              ; preds = %328
  %344 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %345 = load i32, i32* @INTE_MIDITXENABLE, align 4
  %346 = load i32, i32* @INTE_MIDIRXENABLE, align 4
  %347 = or i32 %345, %346
  %348 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %344, i32 %347)
  br label %349

349:                                              ; preds = %343, %334
  %350 = load i32, i32* @IPR_MIDITRANSBUFEMPTY, align 4
  %351 = load i32, i32* @IPR_MIDIRECVBUFEMPTY, align 4
  %352 = or i32 %350, %351
  %353 = xor i32 %352, -1
  %354 = load i32, i32* %6, align 4
  %355 = and i32 %354, %353
  store i32 %355, i32* %6, align 4
  br label %356

356:                                              ; preds = %349, %321
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* @IPR_A_MIDITRANSBUFEMPTY2, align 4
  %359 = load i32, i32* @IPR_A_MIDIRECVBUFEMPTY2, align 4
  %360 = or i32 %358, %359
  %361 = and i32 %357, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %391

363:                                              ; preds = %356
  %364 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %365 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %364, i32 0, i32 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = load i32 (%struct.snd_emu10k1.1*, i32)*, i32 (%struct.snd_emu10k1.1*, i32)** %366, align 8
  %368 = icmp ne i32 (%struct.snd_emu10k1.1*, i32)* %367, null
  br i1 %368, label %369, label %378

369:                                              ; preds = %363
  %370 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %371 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %370, i32 0, i32 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 0
  %373 = load i32 (%struct.snd_emu10k1.1*, i32)*, i32 (%struct.snd_emu10k1.1*, i32)** %372, align 8
  %374 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %375 = bitcast %struct.snd_emu10k1* %374 to %struct.snd_emu10k1.1*
  %376 = load i32, i32* %6, align 4
  %377 = call i32 %373(%struct.snd_emu10k1.1* %375, i32 %376)
  br label %384

378:                                              ; preds = %363
  %379 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %380 = load i32, i32* @INTE_A_MIDITXENABLE2, align 4
  %381 = load i32, i32* @INTE_A_MIDIRXENABLE2, align 4
  %382 = or i32 %380, %381
  %383 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %379, i32 %382)
  br label %384

384:                                              ; preds = %378, %369
  %385 = load i32, i32* @IPR_A_MIDITRANSBUFEMPTY2, align 4
  %386 = load i32, i32* @IPR_A_MIDIRECVBUFEMPTY2, align 4
  %387 = or i32 %385, %386
  %388 = xor i32 %387, -1
  %389 = load i32, i32* %6, align 4
  %390 = and i32 %389, %388
  store i32 %390, i32* %6, align 4
  br label %391

391:                                              ; preds = %384, %356
  %392 = load i32, i32* %6, align 4
  %393 = load i32, i32* @IPR_INTERVALTIMER, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %420

396:                                              ; preds = %391
  %397 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %398 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %397, i32 0, i32 7
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %398, align 8
  %400 = icmp ne %struct.TYPE_10__* %399, null
  br i1 %400, label %401, label %411

401:                                              ; preds = %396
  %402 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %403 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %402, i32 0, i32 7
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %403, align 8
  %405 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %406 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %405, i32 0, i32 7
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @snd_timer_interrupt(%struct.TYPE_10__* %404, i32 %409)
  br label %415

411:                                              ; preds = %396
  %412 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %413 = load i32, i32* @INTE_INTERVALTIMERENB, align 4
  %414 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %412, i32 %413)
  br label %415

415:                                              ; preds = %411, %401
  %416 = load i32, i32* @IPR_INTERVALTIMER, align 4
  %417 = xor i32 %416, -1
  %418 = load i32, i32* %6, align 4
  %419 = and i32 %418, %417
  store i32 %419, i32* %6, align 4
  br label %420

420:                                              ; preds = %415, %391
  %421 = load i32, i32* %6, align 4
  %422 = load i32, i32* @IPR_GPSPDIFSTATUSCHANGE, align 4
  %423 = load i32, i32* @IPR_CDROMSTATUSCHANGE, align 4
  %424 = or i32 %422, %423
  %425 = and i32 %421, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %452

427:                                              ; preds = %420
  %428 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %429 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %428, i32 0, i32 6
  %430 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %429, align 8
  %431 = icmp ne i32 (%struct.snd_emu10k1*, i32)* %430, null
  br i1 %431, label %432, label %439

432:                                              ; preds = %427
  %433 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %434 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %433, i32 0, i32 6
  %435 = load i32 (%struct.snd_emu10k1*, i32)*, i32 (%struct.snd_emu10k1*, i32)** %434, align 8
  %436 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %437 = load i32, i32* %6, align 4
  %438 = call i32 %435(%struct.snd_emu10k1* %436, i32 %437)
  br label %445

439:                                              ; preds = %427
  %440 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %441 = load i32, i32* @INTE_GPSPDIFENABLE, align 4
  %442 = load i32, i32* @INTE_CDSPDIFENABLE, align 4
  %443 = or i32 %441, %442
  %444 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %440, i32 %443)
  br label %445

445:                                              ; preds = %439, %432
  %446 = load i32, i32* @IPR_GPSPDIFSTATUSCHANGE, align 4
  %447 = load i32, i32* @IPR_CDROMSTATUSCHANGE, align 4
  %448 = or i32 %446, %447
  %449 = xor i32 %448, -1
  %450 = load i32, i32* %6, align 4
  %451 = and i32 %450, %449
  store i32 %451, i32* %6, align 4
  br label %452

452:                                              ; preds = %445, %420
  %453 = load i32, i32* %6, align 4
  %454 = load i32, i32* @IPR_FXDSP, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %477

457:                                              ; preds = %452
  %458 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %459 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %458, i32 0, i32 5
  %460 = load i32 (%struct.snd_emu10k1*)*, i32 (%struct.snd_emu10k1*)** %459, align 8
  %461 = icmp ne i32 (%struct.snd_emu10k1*)* %460, null
  br i1 %461, label %462, label %468

462:                                              ; preds = %457
  %463 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %464 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %463, i32 0, i32 5
  %465 = load i32 (%struct.snd_emu10k1*)*, i32 (%struct.snd_emu10k1*)** %464, align 8
  %466 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %467 = call i32 %465(%struct.snd_emu10k1* %466)
  br label %472

468:                                              ; preds = %457
  %469 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %470 = load i32, i32* @INTE_FXDSPENABLE, align 4
  %471 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %469, i32 %470)
  br label %472

472:                                              ; preds = %468, %462
  %473 = load i32, i32* @IPR_FXDSP, align 4
  %474 = xor i32 %473, -1
  %475 = load i32, i32* %6, align 4
  %476 = and i32 %475, %474
  store i32 %476, i32* %6, align 4
  br label %477

477:                                              ; preds = %472, %452
  %478 = load i32, i32* %6, align 4
  %479 = load i32, i32* @IPR_P16V, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %560

482:                                              ; preds = %477
  br label %483

483:                                              ; preds = %547, %482
  %484 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %485 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %484, i32 0, i32 1
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @IPR2, align 8
  %488 = add nsw i64 %486, %487
  %489 = call i32 @inl(i64 %488)
  store i32 %489, i32* %7, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %555

491:                                              ; preds = %483
  %492 = load i32, i32* @INTE2_PLAYBACK_CH_0_LOOP, align 4
  store i32 %492, i32* %16, align 4
  %493 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %494 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %493, i32 0, i32 4
  %495 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %494, align 8
  %496 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %495, i64 0
  store %struct.snd_emu10k1_voice* %496, %struct.snd_emu10k1_voice** %17, align 8
  %497 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %498 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %497, i32 0, i32 3
  store %struct.snd_emu10k1_voice* %498, %struct.snd_emu10k1_voice** %18, align 8
  %499 = load i32, i32* %7, align 4
  store i32 %499, i32* %9, align 4
  %500 = load i32, i32* %7, align 4
  %501 = load i32, i32* %16, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %530

504:                                              ; preds = %491
  %505 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %17, align 8
  %506 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %505, i32 0, i32 1
  %507 = load i64, i64* %506, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %516

509:                                              ; preds = %504
  %510 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %17, align 8
  %511 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %510, i32 0, i32 0
  %512 = load %struct.TYPE_6__*, %struct.TYPE_6__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = call i32 @snd_pcm_period_elapsed(i32 %514)
  br label %529

516:                                              ; preds = %504
  %517 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %518 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %517, i32 0, i32 0
  %519 = load %struct.TYPE_7__*, %struct.TYPE_7__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* %7, align 4
  %523 = load i32, i32* %16, align 4
  %524 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %17, align 8
  %525 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %17, align 8
  %526 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %525, i32 0, i32 1
  %527 = load i64, i64* %526, align 8
  %528 = call i32 (i32, i8*, ...) @dev_err(i32 %521, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %522, i32 %523, %struct.snd_emu10k1_voice* %524, i64 %527)
  br label %529

529:                                              ; preds = %516, %509
  br label %530

530:                                              ; preds = %529, %491
  %531 = load i32, i32* %7, align 4
  %532 = and i32 %531, 1114112
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %547

534:                                              ; preds = %530
  %535 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %18, align 8
  %536 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %535, i32 0, i32 1
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %546

539:                                              ; preds = %534
  %540 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %18, align 8
  %541 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %540, i32 0, i32 0
  %542 = load %struct.TYPE_6__*, %struct.TYPE_6__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = call i32 @snd_pcm_period_elapsed(i32 %544)
  br label %546

546:                                              ; preds = %539, %534
  br label %547

547:                                              ; preds = %546, %530
  %548 = load i32, i32* %9, align 4
  %549 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %550 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %549, i32 0, i32 1
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @IPR2, align 8
  %553 = add nsw i64 %551, %552
  %554 = call i32 @outl(i32 %548, i64 %553)
  br label %483

555:                                              ; preds = %483
  %556 = load i32, i32* @IPR_P16V, align 4
  %557 = xor i32 %556, -1
  %558 = load i32, i32* %6, align 4
  %559 = and i32 %558, %557
  store i32 %559, i32* %6, align 4
  br label %560

560:                                              ; preds = %555, %477
  %561 = load i32, i32* %6, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %610

563:                                              ; preds = %560
  %564 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %565 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %564, i32 0, i32 0
  %566 = load %struct.TYPE_7__*, %struct.TYPE_7__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* %6, align 4
  %570 = call i32 (i32, i8*, ...) @dev_err(i32 %568, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %569)
  %571 = load i32, i32* @INTE_FXDSPENABLE, align 4
  %572 = load i32, i32* @INTE_PCIERRORENABLE, align 4
  %573 = or i32 %571, %572
  %574 = load i32, i32* @INTE_VOLINCRENABLE, align 4
  %575 = or i32 %573, %574
  %576 = load i32, i32* @INTE_VOLDECRENABLE, align 4
  %577 = or i32 %575, %576
  %578 = load i32, i32* @INTE_MUTEENABLE, align 4
  %579 = or i32 %577, %578
  %580 = load i32, i32* @INTE_MICBUFENABLE, align 4
  %581 = or i32 %579, %580
  %582 = load i32, i32* @INTE_ADCBUFENABLE, align 4
  %583 = or i32 %581, %582
  %584 = load i32, i32* @INTE_EFXBUFENABLE, align 4
  %585 = or i32 %583, %584
  %586 = load i32, i32* @INTE_GPSPDIFENABLE, align 4
  %587 = or i32 %585, %586
  %588 = load i32, i32* @INTE_CDSPDIFENABLE, align 4
  %589 = or i32 %587, %588
  %590 = load i32, i32* @INTE_INTERVALTIMERENB, align 4
  %591 = or i32 %589, %590
  %592 = load i32, i32* @INTE_MIDITXENABLE, align 4
  %593 = or i32 %591, %592
  %594 = load i32, i32* @INTE_MIDIRXENABLE, align 4
  %595 = or i32 %593, %594
  store i32 %595, i32* %19, align 4
  %596 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %597 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %596, i32 0, i32 2
  %598 = load i64, i64* %597, align 8
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %606

600:                                              ; preds = %563
  %601 = load i32, i32* @INTE_A_MIDITXENABLE2, align 4
  %602 = load i32, i32* @INTE_A_MIDIRXENABLE2, align 4
  %603 = or i32 %601, %602
  %604 = load i32, i32* %19, align 4
  %605 = or i32 %604, %603
  store i32 %605, i32* %19, align 4
  br label %606

606:                                              ; preds = %600, %563
  %607 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %608 = load i32, i32* %19, align 4
  %609 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %607, i32 %608)
  br label %610

610:                                              ; preds = %606, %560
  %611 = load i32, i32* %8, align 4
  %612 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %613 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %612, i32 0, i32 1
  %614 = load i64, i64* %613, align 8
  %615 = load i64, i64* @IPR, align 8
  %616 = add nsw i64 %614, %615
  %617 = call i32 @outl(i32 %611, i64 %616)
  br label %22

618:                                              ; preds = %41, %33
  %619 = load i32, i32* %11, align 4
  %620 = icmp eq i32 %619, 1000
  br i1 %620, label %621, label %628

621:                                              ; preds = %618
  %622 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %623 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %622, i32 0, i32 0
  %624 = load %struct.TYPE_7__*, %struct.TYPE_7__** %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 4
  %627 = call i32 @dev_info(i32 %626, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %628

628:                                              ; preds = %621, %618
  %629 = load i32, i32* %10, align 4
  %630 = call i32 @IRQ_RETVAL(i32 %629)
  ret i32 %630
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_voice_intr_ack(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_voice_intr_disable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_voice_half_loop_intr_ack(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_voice_half_loop_intr_disable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_timer_interrupt(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
