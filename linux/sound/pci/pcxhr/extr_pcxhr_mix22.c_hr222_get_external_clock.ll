; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_get_external_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_get_external_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i8, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@HR22_CLOCK_TYPE_AES_SYNC = common dso_local global i32 0, align 4
@PCXHR_SUER_CLOCK_PRESENT_MASK = common dso_local global i8 0, align 1
@PCXHR_SUER_DATA_PRESENT_MASK = common dso_local global i8 0, align 1
@PCXHR_STAT_FREQ_SYNC_MASK = common dso_local global i8 0, align 1
@HR22_CLOCK_TYPE_AES_1 = common dso_local global i32 0, align 4
@PCXHR_SUER1_CLOCK_PRESENT_MASK = common dso_local global i8 0, align 1
@PCXHR_SUER1_DATA_PRESENT_MASK = common dso_local global i8 0, align 1
@PCXHR_STAT_FREQ_UER1_MASK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [44 x i8] c"get_external_clock : type %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCXHR_XLX_CSUER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"get_external_clock(%d) = 0 Hz\0A\00", align 1
@PCXHR_XLX_STATUS = common dso_local global i32 0, align 4
@PCXHR_STAT_FREQ_SAVE_MASK = common dso_local global i8 0, align 1
@PCXHR_XLX_CFG = common dso_local global i32 0, align 4
@PCXHR_DSP_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"External clock is at %d Hz (measured %d Hz)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hr222_get_external_clock(%struct.pcxhr_mgr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @HR22_CLOCK_TYPE_AES_SYNC, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i8, i8* @PCXHR_SUER_CLOCK_PRESENT_MASK, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @PCXHR_SUER_DATA_PRESENT_MASK, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %11, align 1
  %23 = load i8, i8* @PCXHR_STAT_FREQ_SYNC_MASK, align 1
  store i8 %23, i8* %12, align 1
  br label %51

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @HR22_CLOCK_TYPE_AES_1, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %30 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i8, i8* @PCXHR_SUER1_CLOCK_PRESENT_MASK, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @PCXHR_SUER1_DATA_PRESENT_MASK, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %11, align 1
  %40 = load i8, i8* @PCXHR_STAT_FREQ_UER1_MASK, align 1
  store i8 %40, i8* %12, align 1
  br label %50

41:                                               ; preds = %28, %24
  %42 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %43 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %201

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %16
  %52 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %53 = load i32, i32* @PCXHR_XLX_CSUER, align 4
  %54 = call zeroext i8 @PCXHR_INPB(%struct.pcxhr_mgr* %52, i32 %53)
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %11, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %64 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %7, align 8
  store i32 0, i32* %69, align 4
  store i32 0, i32* %4, align 4
  br label %201

70:                                               ; preds = %51
  %71 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %72 = load i32, i32* @PCXHR_XLX_STATUS, align 4
  %73 = load i8, i8* %12, align 1
  %74 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %71, i32 %72, i8 zeroext %73)
  %75 = load i8, i8* @PCXHR_STAT_FREQ_SAVE_MASK, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %78, %76
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %12, align 1
  %81 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %82 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 8
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %12, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %70
  %89 = call i32 @udelay(i32 500)
  %90 = load i8, i8* %12, align 1
  %91 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %92 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %91, i32 0, i32 0
  store i8 %90, i8* %92, align 8
  br label %93

93:                                               ; preds = %88, %70
  %94 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %95 = load i32, i32* @PCXHR_XLX_STATUS, align 4
  %96 = load i8, i8* %12, align 1
  %97 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %94, i32 %95, i8 zeroext %96)
  %98 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %99 = load i32, i32* @PCXHR_XLX_CFG, align 4
  %100 = call zeroext i8 @PCXHR_INPB(%struct.pcxhr_mgr* %98, i32 %99)
  %101 = zext i8 %100 to i32
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, 3
  %104 = shl i32 %103, 8
  store i32 %104, i32* %10, align 4
  %105 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %106 = load i32, i32* @PCXHR_DSP_RESET, align 4
  %107 = call zeroext i8 @PCXHR_INPB(%struct.pcxhr_mgr* %105, i32 %106)
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %93
  %114 = load i32, i32* %10, align 4
  %115 = udiv i32 28224000, %114
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %93
  %117 = load i32, i32* %9, align 4
  %118 = icmp sgt i32 %117, 184200
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 192000, i32* %8, align 4
  br label %191

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = icmp sgt i32 %121, 152200
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 176400, i32* %8, align 4
  br label %190

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = icmp sgt i32 %125, 112000
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 128000, i32* %8, align 4
  br label %189

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = icmp sgt i32 %129, 92100
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 96000, i32* %8, align 4
  br label %188

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  %134 = icmp sgt i32 %133, 76100
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 88200, i32* %8, align 4
  br label %187

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = icmp sgt i32 %137, 56000
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 64000, i32* %8, align 4
  br label %186

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = icmp sgt i32 %141, 46050
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 48000, i32* %8, align 4
  br label %185

144:                                              ; preds = %140
  %145 = load i32, i32* %9, align 4
  %146 = icmp sgt i32 %145, 38050
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 44100, i32* %8, align 4
  br label %184

148:                                              ; preds = %144
  %149 = load i32, i32* %9, align 4
  %150 = icmp sgt i32 %149, 28000
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 32000, i32* %8, align 4
  br label %183

152:                                              ; preds = %148
  %153 = load i32, i32* %9, align 4
  %154 = icmp sgt i32 %153, 23025
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 24000, i32* %8, align 4
  br label %182

156:                                              ; preds = %152
  %157 = load i32, i32* %9, align 4
  %158 = icmp sgt i32 %157, 19025
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 22050, i32* %8, align 4
  br label %181

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  %162 = icmp sgt i32 %161, 14000
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 16000, i32* %8, align 4
  br label %180

164:                                              ; preds = %160
  %165 = load i32, i32* %9, align 4
  %166 = icmp sgt i32 %165, 11512
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 12000, i32* %8, align 4
  br label %179

168:                                              ; preds = %164
  %169 = load i32, i32* %9, align 4
  %170 = icmp sgt i32 %169, 9512
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 11025, i32* %8, align 4
  br label %178

172:                                              ; preds = %168
  %173 = load i32, i32* %9, align 4
  %174 = icmp sgt i32 %173, 7000
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 8000, i32* %8, align 4
  br label %177

176:                                              ; preds = %172
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %176, %175
  br label %178

178:                                              ; preds = %177, %171
  br label %179

179:                                              ; preds = %178, %167
  br label %180

180:                                              ; preds = %179, %163
  br label %181

181:                                              ; preds = %180, %159
  br label %182

182:                                              ; preds = %181, %155
  br label %183

183:                                              ; preds = %182, %151
  br label %184

184:                                              ; preds = %183, %147
  br label %185

185:                                              ; preds = %184, %143
  br label %186

186:                                              ; preds = %185, %139
  br label %187

187:                                              ; preds = %186, %135
  br label %188

188:                                              ; preds = %187, %131
  br label %189

189:                                              ; preds = %188, %127
  br label %190

190:                                              ; preds = %189, %123
  br label %191

191:                                              ; preds = %190, %119
  %192 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %193 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %192, i32 0, i32 1
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %9, align 4
  %198 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %195, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %196, i32 %197)
  %199 = load i32, i32* %8, align 4
  %200 = load i32*, i32** %7, align 8
  store i32 %199, i32* %200, align 4
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %191, %62, %41
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local zeroext i8 @PCXHR_INPB(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @PCXHR_OUTPB(%struct.pcxhr_mgr*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
