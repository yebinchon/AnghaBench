; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_rirb_get_response.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_rirb_get_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.azx = type { i32, %struct.TYPE_6__*, i32, i64, %struct.TYPE_5__*, i64, %struct.hda_bus }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 (%struct.azx*)* }
%struct.hda_bus = type { i32, i32, i64, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"too slow response, last cmd=%#08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"azx_get_response timeout, polling the codec once: last cmd=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"azx_get_response timeout, switching to polling mode: last cmd=0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"No response from codec, disabling MSI: last cmd=0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"No response from codec, resetting bus: last cmd=0x%08x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [73 x i8] c"azx_get_response timeout, switching to single_cmd mode: last cmd=0x%08x\0A\00", align 1
@LOOP_COUNT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_bus*, i32, i32*)* @azx_rirb_get_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_rirb_get_response(%struct.hdac_bus* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.azx*, align 8
  %9 = alloca %struct.hda_bus*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %15 = call %struct.azx* @bus_to_azx(%struct.hdac_bus* %14)
  store %struct.azx* %15, %struct.azx** %8, align 8
  %16 = load %struct.azx*, %struct.azx** %8, align 8
  %17 = getelementptr inbounds %struct.azx, %struct.azx* %16, i32 0, i32 6
  store %struct.hda_bus* %17, %struct.hda_bus** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %209, %156, %133, %3
  %19 = load i64, i64* @jiffies, align 8
  %20 = call i64 @msecs_to_jiffies(i32 1000)
  %21 = add i64 %19, %20
  store i64 %21, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %22

22:                                               ; preds = %112, %18
  %23 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %24 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %23, i32 0, i32 3
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %27 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %22
  %34 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %35 = call i32 @snd_hdac_bus_update_rirb(%struct.hdac_bus* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %38 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %51 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %57 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %52
  %66 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %67 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %66, i32 0, i32 3
  %68 = call i32 @spin_unlock_irq(i32* %67)
  store i32 0, i32* %4, align 4
  br label %281

69:                                               ; preds = %36
  %70 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %71 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %70, i32 0, i32 3
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @time_after(i64 %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %115

78:                                               ; preds = %69
  %79 = load %struct.hda_bus*, %struct.hda_bus** %9, align 8
  %80 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* %11, align 8
  %85 = icmp ugt i64 %84, 3000
  br i1 %85, label %86, label %108

86:                                               ; preds = %83, %78
  %87 = load i64, i64* %11, align 8
  %88 = icmp ugt i64 %87, 3000
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %89
  %93 = load %struct.azx*, %struct.azx** %8, align 8
  %94 = getelementptr inbounds %struct.azx, %struct.azx* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %99 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_dbg_ratelimited(i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %104)
  store i32 1, i32* %13, align 4
  br label %106

106:                                              ; preds = %92, %89, %86
  %107 = call i32 @msleep(i32 2)
  br label %111

108:                                              ; preds = %83
  %109 = call i32 @udelay(i32 10)
  %110 = call i32 (...) @cond_resched()
  br label %111

111:                                              ; preds = %108, %106
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %22

115:                                              ; preds = %77
  %116 = load %struct.hda_bus*, %struct.hda_bus** %9, align 8
  %117 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %281

123:                                              ; preds = %115
  %124 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %125 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %151, label %128

128:                                              ; preds = %123
  %129 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %130 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %131, 2
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  %134 = load %struct.azx*, %struct.azx** %8, align 8
  %135 = getelementptr inbounds %struct.azx, %struct.azx* %134, i32 0, i32 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %140 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_dbg(i32 %138, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  store i32 1, i32* %12, align 4
  %147 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %148 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %18

151:                                              ; preds = %128, %123
  %152 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %153 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %172, label %156

156:                                              ; preds = %151
  %157 = load %struct.azx*, %struct.azx** %8, align 8
  %158 = getelementptr inbounds %struct.azx, %struct.azx* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %163 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dev_warn(i32 %161, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %171 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  br label %18

172:                                              ; preds = %151
  %173 = load %struct.azx*, %struct.azx** %8, align 8
  %174 = getelementptr inbounds %struct.azx, %struct.azx* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %172
  %178 = load %struct.azx*, %struct.azx** %8, align 8
  %179 = getelementptr inbounds %struct.azx, %struct.azx* %178, i32 0, i32 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %184 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @dev_warn(i32 %182, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %189)
  %191 = load %struct.azx*, %struct.azx** %8, align 8
  %192 = getelementptr inbounds %struct.azx, %struct.azx* %191, i32 0, i32 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i64 (%struct.azx*)*, i64 (%struct.azx*)** %194, align 8
  %196 = icmp ne i64 (%struct.azx*)* %195, null
  br i1 %196, label %197, label %209

197:                                              ; preds = %177
  %198 = load %struct.azx*, %struct.azx** %8, align 8
  %199 = getelementptr inbounds %struct.azx, %struct.azx* %198, i32 0, i32 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i64 (%struct.azx*)*, i64 (%struct.azx*)** %201, align 8
  %203 = load %struct.azx*, %struct.azx** %8, align 8
  %204 = call i64 %202(%struct.azx* %203)
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load i32, i32* @EIO, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %4, align 4
  br label %281

209:                                              ; preds = %197, %177
  br label %18

210:                                              ; preds = %172
  %211 = load %struct.azx*, %struct.azx** %8, align 8
  %212 = getelementptr inbounds %struct.azx, %struct.azx* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load i32, i32* @EIO, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %4, align 4
  br label %281

218:                                              ; preds = %210
  %219 = load %struct.azx*, %struct.azx** %8, align 8
  %220 = getelementptr inbounds %struct.azx, %struct.azx* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* @EIO, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %4, align 4
  br label %281

226:                                              ; preds = %218
  %227 = load %struct.hda_bus*, %struct.hda_bus** %9, align 8
  %228 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %259

231:                                              ; preds = %226
  %232 = load %struct.hda_bus*, %struct.hda_bus** %9, align 8
  %233 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %259, label %236

236:                                              ; preds = %231
  %237 = load %struct.hda_bus*, %struct.hda_bus** %9, align 8
  %238 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %259, label %241

241:                                              ; preds = %236
  %242 = load %struct.hda_bus*, %struct.hda_bus** %9, align 8
  %243 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %242, i32 0, i32 0
  store i32 1, i32* %243, align 8
  %244 = load %struct.azx*, %struct.azx** %8, align 8
  %245 = getelementptr inbounds %struct.azx, %struct.azx* %244, i32 0, i32 1
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %250 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @dev_err(i32 %248, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @EAGAIN, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %4, align 4
  br label %281

259:                                              ; preds = %236, %231, %226
  %260 = load %struct.azx*, %struct.azx** %8, align 8
  %261 = getelementptr inbounds %struct.azx, %struct.azx* %260, i32 0, i32 1
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %266 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %6, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @dev_WARN(i32 %264, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %271)
  %273 = load %struct.azx*, %struct.azx** %8, align 8
  %274 = getelementptr inbounds %struct.azx, %struct.azx* %273, i32 0, i32 0
  store i32 1, i32* %274, align 8
  %275 = load %struct.hda_bus*, %struct.hda_bus** %9, align 8
  %276 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %275, i32 0, i32 0
  store i32 0, i32* %276, align 8
  %277 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %278 = call i32 @snd_hdac_bus_stop_cmd_io(%struct.hdac_bus* %277)
  %279 = load i32, i32* @EIO, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %4, align 4
  br label %281

281:                                              ; preds = %259, %241, %223, %215, %206, %120, %65
  %282 = load i32, i32* %4, align 4
  ret i32 %282
}

declare dso_local %struct.azx* @bus_to_azx(%struct.hdac_bus*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_hdac_bus_update_rirb(%struct.hdac_bus*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_WARN(i32, i8*, i32) #1

declare dso_local i32 @snd_hdac_bus_stop_cmd_io(%struct.hdac_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
