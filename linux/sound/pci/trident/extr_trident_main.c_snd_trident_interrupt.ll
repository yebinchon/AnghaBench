; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32, i32, i32, i32, i32, i32, i32*, i32, %struct.snd_trident_voice*, i64, i32, i64, i32 }

@T4D_MISCINT = common dso_local global i32 0, align 4
@ADDRESS_IRQ = common dso_local global i32 0, align 4
@MPU401_IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@T4D_STIMER = common dso_local global i32 0, align 4
@T4D_AINT_A = common dso_local global i32 0, align 4
@T4D_AINT_B = common dso_local global i32 0, align 4
@T4D_STOP_B = common dso_local global i32 0, align 4
@T4D_SBBL_SBCL = common dso_local global i32 0, align 4
@NX_SPCTRL_SPCSO = common dso_local global i32 0, align 4
@T4D_MPUR0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_trident_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_trident*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_trident_voice*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.snd_trident*
  store %struct.snd_trident* %16, %struct.snd_trident** %6, align 8
  %17 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %18 = load i32, i32* @T4D_MISCINT, align 4
  %19 = call i32 @TRID_REG(%struct.snd_trident* %17, i32 %18)
  %20 = call i32 @inl(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ADDRESS_IRQ, align 4
  %23 = load i32, i32* @MPU401_IRQ, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %290

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ADDRESS_IRQ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %264

34:                                               ; preds = %29
  %35 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %36 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %35, i32 0, i32 3
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %39 = load i32, i32* @T4D_STIMER, align 4
  %40 = call i32 @TRID_REG(%struct.snd_trident* %38, i32 %39)
  %41 = call i32 @inl(i32 %40)
  %42 = and i32 %41, 16777215
  store i32 %42, i32* %9, align 4
  %43 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %44 = load i32, i32* @T4D_AINT_A, align 4
  %45 = call i32 @TRID_REG(%struct.snd_trident* %43, i32 %44)
  %46 = call i32 @inl(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %56

50:                                               ; preds = %34
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %53 = load i32, i32* @T4D_AINT_A, align 4
  %54 = call i32 @TRID_REG(%struct.snd_trident* %52, i32 %53)
  %55 = call i32 @outl(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %49
  %57 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %58 = load i32, i32* @T4D_AINT_B, align 4
  %59 = call i32 @TRID_REG(%struct.snd_trident* %57, i32 %58)
  %60 = call i32 @inl(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %260

64:                                               ; preds = %56
  store i32 63, i32* %10, align 4
  br label %65

65:                                               ; preds = %251, %64
  %66 = load i32, i32* %10, align 4
  %67 = icmp uge i32 %66, 32
  br i1 %67, label %68, label %254

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 31
  %71 = shl i32 1, %70
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %251

77:                                               ; preds = %68
  %78 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %79 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %81, i64 %83
  store %struct.snd_trident_voice* %84, %struct.snd_trident_voice** %14, align 8
  %85 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %86 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %85, i32 0, i32 12
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %77
  %90 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %91 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89, %77
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %97 = load i32, i32* @T4D_STOP_B, align 4
  %98 = call i32 @TRID_REG(%struct.snd_trident* %96, i32 %97)
  %99 = call i32 @outl(i32 %95, i32 %98)
  br label %251

100:                                              ; preds = %89
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %103 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %101, %104
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* %13, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %108, %100
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %114 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %111
  %118 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %119 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %123 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %130 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %127, %117
  br label %251

132:                                              ; preds = %111
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %135 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %137 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %136, i32 0, i32 11
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %209

140:                                              ; preds = %132
  %141 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %142 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %168, label %145

145:                                              ; preds = %140
  %146 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %147 = load i32, i32* @T4D_SBBL_SBCL, align 4
  %148 = call i32 @TRID_REG(%struct.snd_trident* %146, i32 %147)
  %149 = call i32 @inw(i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %151 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 64
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  %156 = load i32, i32* %12, align 4
  %157 = lshr i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %155, %145
  %159 = load i32, i32* %12, align 4
  %160 = icmp ugt i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %163 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sub i32 %164, %165
  store i32 %166, i32* %12, align 4
  br label %167

167:                                              ; preds = %161, %158
  br label %174

168:                                              ; preds = %140
  %169 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %170 = load i32, i32* @NX_SPCTRL_SPCSO, align 4
  %171 = call i32 @TRID_REG(%struct.snd_trident* %169, i32 %170)
  %172 = call i32 @inl(i32 %171)
  %173 = and i32 %172, 16777215
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %168, %167
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %177 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = icmp ult i32 %175, %178
  br i1 %179, label %180, label %208

180:                                              ; preds = %174
  %181 = load i32, i32* %12, align 4
  %182 = icmp ugt i32 %181, 16
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %185 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 7
  store i32 %187, i32* %12, align 4
  br label %193

188:                                              ; preds = %180
  %189 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %190 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 2
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %188, %183
  %194 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %195 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %196 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @snd_trident_stop_voice(%struct.snd_trident* %194, i32 %197)
  %199 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %200 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @snd_trident_write_eso_reg(%struct.snd_trident* %199, %struct.snd_trident_voice* %200, i32 %201)
  %203 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %204 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %205 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @snd_trident_start_voice(%struct.snd_trident* %203, i32 %206)
  br label %208

208:                                              ; preds = %193, %174
  br label %240

209:                                              ; preds = %132
  %210 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %211 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %210, i32 0, i32 9
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %239

214:                                              ; preds = %209
  %215 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %216 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %215, i32 0, i32 9
  store i64 0, i64* %216, align 8
  %217 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %218 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %219 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @snd_trident_stop_voice(%struct.snd_trident* %217, i32 %220)
  %222 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %223 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %224 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %225 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @snd_trident_write_cso_reg(%struct.snd_trident* %222, %struct.snd_trident_voice* %223, i32 %226)
  %228 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %229 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %230 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %231 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @snd_trident_write_eso_reg(%struct.snd_trident* %228, %struct.snd_trident_voice* %229, i32 %232)
  %234 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %235 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %236 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @snd_trident_start_voice(%struct.snd_trident* %234, i32 %237)
  br label %239

239:                                              ; preds = %214, %209
  br label %240

240:                                              ; preds = %239, %208
  %241 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %242 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %241, i32 0, i32 3
  %243 = call i32 @spin_unlock(i32* %242)
  %244 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  %245 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %244, i32 0, i32 6
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @snd_pcm_period_elapsed(i32* %246)
  %248 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %249 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %248, i32 0, i32 3
  %250 = call i32 @spin_lock(i32* %249)
  br label %251

251:                                              ; preds = %240, %131, %94, %76
  %252 = load i32, i32* %10, align 4
  %253 = add i32 %252, -1
  store i32 %253, i32* %10, align 4
  br label %65

254:                                              ; preds = %65
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %257 = load i32, i32* @T4D_AINT_B, align 4
  %258 = call i32 @TRID_REG(%struct.snd_trident* %256, i32 %257)
  %259 = call i32 @outl(i32 %255, i32 %258)
  br label %260

260:                                              ; preds = %254, %63
  %261 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %262 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %261, i32 0, i32 3
  %263 = call i32 @spin_unlock(i32* %262)
  br label %264

264:                                              ; preds = %260, %29
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* @MPU401_IRQ, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %288

269:                                              ; preds = %264
  %270 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %271 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %270, i32 0, i32 2
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = icmp ne %struct.TYPE_4__* %272, null
  br i1 %273, label %274, label %282

274:                                              ; preds = %269
  %275 = load i32, i32* %4, align 4
  %276 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %277 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %276, i32 0, i32 2
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @snd_mpu401_uart_interrupt(i32 %275, i32 %280)
  br label %287

282:                                              ; preds = %269
  %283 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %284 = load i32, i32* @T4D_MPUR0, align 4
  %285 = call i32 @TRID_REG(%struct.snd_trident* %283, i32 %284)
  %286 = call i32 @inb(i32 %285)
  br label %287

287:                                              ; preds = %282, %274
  br label %288

288:                                              ; preds = %287, %264
  %289 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %288, %27
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @snd_trident_stop_voice(%struct.snd_trident*, i32) #1

declare dso_local i32 @snd_trident_write_eso_reg(%struct.snd_trident*, %struct.snd_trident_voice*, i32) #1

declare dso_local i32 @snd_trident_start_voice(%struct.snd_trident*, i32) #1

declare dso_local i32 @snd_trident_write_cso_reg(%struct.snd_trident*, %struct.snd_trident_voice*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32*) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
