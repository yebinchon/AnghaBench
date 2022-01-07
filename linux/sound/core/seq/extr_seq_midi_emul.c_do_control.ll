; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_do_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_do_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_op = type { i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)* }
%struct.snd_midi_channel = type opaque
%struct.snd_midi_channel.0 = type opaque
%struct.snd_midi_channel_set = type { i32 }
%struct.snd_midi_channel.1 = type { i32*, i32*, i32, i32 }

@SNDRV_MIDI_NOTE_RELEASED = common dso_local global i32 0, align 4
@SNDRV_MIDI_NOTE_OFF = common dso_local global i8* null, align 8
@SNDRV_MIDI_NOTE_ON = common dso_local global i32 0, align 4
@SNDRV_MIDI_NOTE_SOSTENUTO = common dso_local global i32 0, align 4
@SNDRV_MIDI_PARAM_TYPE_REGISTERED = common dso_local global i32 0, align 4
@SNDRV_MIDI_PARAM_TYPE_NONREGISTERED = common dso_local global i32 0, align 4
@SNDRV_MIDI_MODE_XG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_op*, i8*, %struct.snd_midi_channel_set*, %struct.snd_midi_channel.1*, i32, i32)* @do_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_control(%struct.snd_midi_op* %0, i8* %1, %struct.snd_midi_channel_set* %2, %struct.snd_midi_channel.1* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_midi_op*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.snd_midi_channel_set*, align 8
  %10 = alloca %struct.snd_midi_channel.1*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_midi_op* %0, %struct.snd_midi_op** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.snd_midi_channel_set* %2, %struct.snd_midi_channel_set** %9, align 8
  store %struct.snd_midi_channel.1* %3, %struct.snd_midi_channel.1** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %16 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp sge i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %274

21:                                               ; preds = %6
  %22 = load i32, i32* %11, align 4
  %23 = icmp sge i32 %22, 64
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp sle i32 %25, 69
  br i1 %26, label %33, label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %11, align 4
  %29 = icmp sge i32 %28, 80
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 83
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %12, align 4
  %35 = icmp sge i32 %34, 64
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 127, i32 0
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %33, %30, %27
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %41 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  switch i32 %46, label %259 [
    i32 128, label %47
    i32 139, label %94
    i32 129, label %95
    i32 142, label %194
    i32 144, label %199
    i32 138, label %218
    i32 137, label %218
    i32 141, label %222
    i32 140, label %222
    i32 153, label %226
    i32 154, label %231
    i32 143, label %236
    i32 145, label %253
    i32 136, label %254
    i32 130, label %257
    i32 146, label %257
    i32 147, label %257
    i32 135, label %257
    i32 134, label %257
    i32 133, label %257
    i32 132, label %257
    i32 131, label %257
    i32 152, label %257
    i32 151, label %257
    i32 150, label %257
    i32 149, label %257
    i32 148, label %257
  ]

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %89, %50
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 128
  br i1 %53, label %54, label %92

54:                                               ; preds = %51
  %55 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %56 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SNDRV_MIDI_NOTE_RELEASED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %54
  %66 = load i8*, i8** @SNDRV_MIDI_NOTE_OFF, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %69 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %75 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %74, i32 0, i32 1
  %76 = load i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)** %75, align 8
  %77 = icmp ne i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %65
  %79 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %80 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %79, i32 0, i32 1
  %81 = load i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)** %80, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %85 = bitcast %struct.snd_midi_channel.1* %84 to %struct.snd_midi_channel.0*
  %86 = call i32 %81(i8* %82, i32 %83, i32 0, %struct.snd_midi_channel.0* %85)
  br label %87

87:                                               ; preds = %78, %65
  br label %88

88:                                               ; preds = %87, %54
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %51

92:                                               ; preds = %51
  br label %93

93:                                               ; preds = %92, %47
  br label %274

94:                                               ; preds = %38
  br label %274

95:                                               ; preds = %38
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %95
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %124, %98
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 128
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  %103 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %104 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SNDRV_MIDI_NOTE_ON, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %102
  %114 = load i32, i32* @SNDRV_MIDI_NOTE_SOSTENUTO, align 4
  %115 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %116 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %114
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %113, %102
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %99

127:                                              ; preds = %99
  br label %193

128:                                              ; preds = %95
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %189, %128
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %130, 128
  br i1 %131, label %132, label %192

132:                                              ; preds = %129
  %133 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %134 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @SNDRV_MIDI_NOTE_SOSTENUTO, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %188

143:                                              ; preds = %132
  %144 = load i32, i32* @SNDRV_MIDI_NOTE_SOSTENUTO, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %147 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %145
  store i32 %153, i32* %151, align 4
  %154 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %155 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SNDRV_MIDI_NOTE_RELEASED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %143
  %165 = load i8*, i8** @SNDRV_MIDI_NOTE_OFF, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %168 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  %173 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %174 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %173, i32 0, i32 1
  %175 = load i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)** %174, align 8
  %176 = icmp ne i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)* %175, null
  br i1 %176, label %177, label %186

177:                                              ; preds = %164
  %178 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %179 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %178, i32 0, i32 1
  %180 = load i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)** %179, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %184 = bitcast %struct.snd_midi_channel.1* %183 to %struct.snd_midi_channel.0*
  %185 = call i32 %180(i8* %181, i32 %182, i32 0, %struct.snd_midi_channel.0* %184)
  br label %186

186:                                              ; preds = %177, %164
  br label %187

187:                                              ; preds = %186, %143
  br label %188

188:                                              ; preds = %187, %132
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %129

192:                                              ; preds = %129
  br label %193

193:                                              ; preds = %192, %127
  br label %274

194:                                              ; preds = %38
  %195 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %196 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 144
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %38, %194
  %200 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %201 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @SNDRV_MIDI_PARAM_TYPE_REGISTERED, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %209 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %9, align 8
  %210 = call i32 @rpn(%struct.snd_midi_op* %206, i8* %207, %struct.snd_midi_channel.1* %208, %struct.snd_midi_channel_set* %209)
  br label %217

211:                                              ; preds = %199
  %212 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %215 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %9, align 8
  %216 = call i32 @nrpn(%struct.snd_midi_op* %212, i8* %213, %struct.snd_midi_channel.1* %214, %struct.snd_midi_channel_set* %215)
  br label %217

217:                                              ; preds = %211, %205
  br label %274

218:                                              ; preds = %38, %38
  %219 = load i32, i32* @SNDRV_MIDI_PARAM_TYPE_REGISTERED, align 4
  %220 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %221 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  br label %274

222:                                              ; preds = %38, %38
  %223 = load i32, i32* @SNDRV_MIDI_PARAM_TYPE_NONREGISTERED, align 4
  %224 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %225 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  br label %274

226:                                              ; preds = %38
  %227 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %228 = load i8*, i8** %8, align 8
  %229 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %230 = call i32 @all_sounds_off(%struct.snd_midi_op* %227, i8* %228, %struct.snd_midi_channel.1* %229)
  br label %274

231:                                              ; preds = %38
  %232 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %233 = load i8*, i8** %8, align 8
  %234 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %235 = call i32 @all_notes_off(%struct.snd_midi_op* %232, i8* %233, %struct.snd_midi_channel.1* %234)
  br label %274

236:                                              ; preds = %38
  %237 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %9, align 8
  %238 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @SNDRV_MIDI_MODE_XG, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %236
  %243 = load i32, i32* %12, align 4
  %244 = icmp eq i32 %243, 127
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %247 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %246, i32 0, i32 2
  store i32 1, i32* %247, align 8
  br label %251

248:                                              ; preds = %242
  %249 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %250 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %249, i32 0, i32 2
  store i32 0, i32* %250, align 8
  br label %251

251:                                              ; preds = %248, %245
  br label %252

252:                                              ; preds = %251, %236
  br label %274

253:                                              ; preds = %38
  br label %274

254:                                              ; preds = %38
  %255 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %256 = call i32 @snd_midi_reset_controllers(%struct.snd_midi_channel.1* %255)
  br label %274

257:                                              ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %38, %258
  %260 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %261 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %260, i32 0, i32 0
  %262 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %261, align 8
  %263 = icmp ne i32 (i8*, i32, %struct.snd_midi_channel*)* %262, null
  br i1 %263, label %264, label %273

264:                                              ; preds = %259
  %265 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %266 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %265, i32 0, i32 0
  %267 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %266, align 8
  %268 = load i8*, i8** %8, align 8
  %269 = load i32, i32* %11, align 4
  %270 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %271 = bitcast %struct.snd_midi_channel.1* %270 to %struct.snd_midi_channel*
  %272 = call i32 %267(i8* %268, i32 %269, %struct.snd_midi_channel* %271)
  br label %273

273:                                              ; preds = %264, %259
  br label %274

274:                                              ; preds = %20, %273, %254, %253, %252, %231, %226, %222, %218, %217, %193, %94, %93
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rpn(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.1*, %struct.snd_midi_channel_set*) #1

declare dso_local i32 @nrpn(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.1*, %struct.snd_midi_channel_set*) #1

declare dso_local i32 @all_sounds_off(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.1*) #1

declare dso_local i32 @all_notes_off(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.1*) #1

declare dso_local i32 @snd_midi_reset_controllers(%struct.snd_midi_channel.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
