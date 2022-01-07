; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_parse_tree.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_parse_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@LOLA_PAR_VENDOR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't read VENDOR_ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown codec vendor 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LOLA_PAR_FUNCTION_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't read FUNCTION_TYPE\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unknown function type %d\0A\00", align 1
@LOLA_PAR_SPECIFIC_CAPS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Can't read SPECCAPS\0A\00", align 1
@CAPT = common dso_local global i64 0, align 8
@PLAY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"speccaps=0x%x, pins in=%d, out=%d\0A\00", align 1
@MAX_AUDIO_INOUT_COUNT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Invalid Lola-spec caps 0x%x\0A\00", align 1
@LOLA_GRANULARITY_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*)* @lola_parse_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_parse_tree(%struct.lola* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lola*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %3, align 8
  %7 = load %struct.lola*, %struct.lola** %3, align 8
  %8 = load i32, i32* @LOLA_PAR_VENDOR_ID, align 4
  %9 = call i32 @lola_read_param(%struct.lola* %7, i32 0, i32 %8, i32* %4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.lola*, %struct.lola** %3, align 8
  %14 = getelementptr inbounds %struct.lola, %struct.lola* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %249

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = lshr i32 %21, 16
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 4969
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.lola*, %struct.lola** %3, align 8
  %27 = getelementptr inbounds %struct.lola, %struct.lola* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %249

35:                                               ; preds = %20
  %36 = load %struct.lola*, %struct.lola** %3, align 8
  %37 = load i32, i32* @LOLA_PAR_FUNCTION_TYPE, align 4
  %38 = call i32 @lola_read_param(%struct.lola* %36, i32 1, i32 %37, i32* %4)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.lola*, %struct.lola** %3, align 8
  %43 = getelementptr inbounds %struct.lola, %struct.lola* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %249

49:                                               ; preds = %35
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.lola*, %struct.lola** %3, align 8
  %54 = getelementptr inbounds %struct.lola, %struct.lola* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %249

62:                                               ; preds = %49
  %63 = load %struct.lola*, %struct.lola** %3, align 8
  %64 = load i32, i32* @LOLA_PAR_SPECIFIC_CAPS, align 4
  %65 = call i32 @lola_read_param(%struct.lola* %63, i32 1, i32 %64, i32* %4)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.lola*, %struct.lola** %3, align 8
  %70 = getelementptr inbounds %struct.lola, %struct.lola* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %249

76:                                               ; preds = %62
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.lola*, %struct.lola** %3, align 8
  %79 = getelementptr inbounds %struct.lola, %struct.lola* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.lola*, %struct.lola** %3, align 8
  %81 = getelementptr inbounds %struct.lola, %struct.lola* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @LOLA_AFG_INPUT_PIN_COUNT(i32 %82)
  %84 = load %struct.lola*, %struct.lola** %3, align 8
  %85 = getelementptr inbounds %struct.lola, %struct.lola* %84, i32 0, i32 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i64, i64* @CAPT, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i64 %83, i64* %89, align 8
  %90 = load %struct.lola*, %struct.lola** %3, align 8
  %91 = getelementptr inbounds %struct.lola, %struct.lola* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @LOLA_AFG_OUTPUT_PIN_COUNT(i32 %92)
  %94 = load %struct.lola*, %struct.lola** %3, align 8
  %95 = getelementptr inbounds %struct.lola, %struct.lola* %94, i32 0, i32 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i64, i64* @PLAY, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i64 %93, i64* %99, align 8
  %100 = load %struct.lola*, %struct.lola** %3, align 8
  %101 = getelementptr inbounds %struct.lola, %struct.lola* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.lola*, %struct.lola** %3, align 8
  %106 = getelementptr inbounds %struct.lola, %struct.lola* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.lola*, %struct.lola** %3, align 8
  %109 = getelementptr inbounds %struct.lola, %struct.lola* %108, i32 0, i32 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i64, i64* @CAPT, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.lola*, %struct.lola** %3, align 8
  %116 = getelementptr inbounds %struct.lola, %struct.lola* %115, i32 0, i32 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i64, i64* @PLAY, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %107, i64 %114, i64 %121)
  %123 = load %struct.lola*, %struct.lola** %3, align 8
  %124 = getelementptr inbounds %struct.lola, %struct.lola* %123, i32 0, i32 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i64, i64* @CAPT, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MAX_AUDIO_INOUT_COUNT, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %76
  %133 = load %struct.lola*, %struct.lola** %3, align 8
  %134 = getelementptr inbounds %struct.lola, %struct.lola* %133, i32 0, i32 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i64, i64* @PLAY, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @MAX_AUDIO_INOUT_COUNT, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %132, %76
  %143 = load %struct.lola*, %struct.lola** %3, align 8
  %144 = getelementptr inbounds %struct.lola, %struct.lola* %143, i32 0, i32 3
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %4, align 4
  %149 = call i32 (i32, i8*, ...) @dev_err(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %249

152:                                              ; preds = %132
  store i32 2, i32* %5, align 4
  %153 = load %struct.lola*, %struct.lola** %3, align 8
  %154 = load i64, i64* @CAPT, align 8
  %155 = call i32 @lola_init_pcm(%struct.lola* %153, i64 %154, i32* %5)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %2, align 4
  br label %249

160:                                              ; preds = %152
  %161 = load %struct.lola*, %struct.lola** %3, align 8
  %162 = load i64, i64* @PLAY, align 8
  %163 = call i32 @lola_init_pcm(%struct.lola* %161, i64 %162, i32* %5)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %249

168:                                              ; preds = %160
  %169 = load %struct.lola*, %struct.lola** %3, align 8
  %170 = load i64, i64* @CAPT, align 8
  %171 = call i32 @lola_init_pins(%struct.lola* %169, i64 %170, i32* %5)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %2, align 4
  br label %249

176:                                              ; preds = %168
  %177 = load %struct.lola*, %struct.lola** %3, align 8
  %178 = load i64, i64* @PLAY, align 8
  %179 = call i32 @lola_init_pins(%struct.lola* %177, i64 %178, i32* %5)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %249

184:                                              ; preds = %176
  %185 = load %struct.lola*, %struct.lola** %3, align 8
  %186 = getelementptr inbounds %struct.lola, %struct.lola* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @LOLA_AFG_CLOCK_WIDGET_PRESENT(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load %struct.lola*, %struct.lola** %3, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @lola_init_clock_widget(%struct.lola* %191, i32 %192)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %2, align 4
  br label %249

198:                                              ; preds = %190
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %198, %184
  %202 = load %struct.lola*, %struct.lola** %3, align 8
  %203 = getelementptr inbounds %struct.lola, %struct.lola* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @LOLA_AFG_MIXER_WIDGET_PRESENT(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %201
  %208 = load %struct.lola*, %struct.lola** %3, align 8
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @lola_init_mixer_widget(%struct.lola* %208, i32 %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = load i32, i32* %6, align 4
  store i32 %214, i32* %2, align 4
  br label %249

215:                                              ; preds = %207
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %215, %201
  %219 = load %struct.lola*, %struct.lola** %3, align 8
  %220 = call i32 @lola_enable_clock_events(%struct.lola* %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i32, i32* %6, align 4
  store i32 %224, i32* %2, align 4
  br label %249

225:                                              ; preds = %218
  %226 = load %struct.lola*, %struct.lola** %3, align 8
  %227 = getelementptr inbounds %struct.lola, %struct.lola* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %225
  %231 = load %struct.lola*, %struct.lola** %3, align 8
  %232 = call i32 @lola_reset_setups(%struct.lola* %231)
  %233 = load %struct.lola*, %struct.lola** %3, align 8
  %234 = getelementptr inbounds %struct.lola, %struct.lola* %233, i32 0, i32 1
  store i32 1, i32* %234, align 4
  br label %248

235:                                              ; preds = %225
  %236 = load %struct.lola*, %struct.lola** %3, align 8
  %237 = getelementptr inbounds %struct.lola, %struct.lola* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @LOLA_GRANULARITY_MIN, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %235
  %242 = load %struct.lola*, %struct.lola** %3, align 8
  %243 = load %struct.lola*, %struct.lola** %3, align 8
  %244 = getelementptr inbounds %struct.lola, %struct.lola* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @lola_set_granularity(%struct.lola* %242, i64 %245, i32 1)
  br label %247

247:                                              ; preds = %241, %235
  br label %248

248:                                              ; preds = %247, %230
  store i32 0, i32* %2, align 4
  br label %249

249:                                              ; preds = %248, %223, %213, %196, %182, %174, %166, %158, %142, %68, %52, %41, %25, %12
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @lola_read_param(%struct.lola*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @LOLA_AFG_INPUT_PIN_COUNT(i32) #1

declare dso_local i64 @LOLA_AFG_OUTPUT_PIN_COUNT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @lola_init_pcm(%struct.lola*, i64, i32*) #1

declare dso_local i32 @lola_init_pins(%struct.lola*, i64, i32*) #1

declare dso_local i64 @LOLA_AFG_CLOCK_WIDGET_PRESENT(i32) #1

declare dso_local i32 @lola_init_clock_widget(%struct.lola*, i32) #1

declare dso_local i64 @LOLA_AFG_MIXER_WIDGET_PRESENT(i32) #1

declare dso_local i32 @lola_init_mixer_widget(%struct.lola*, i32) #1

declare dso_local i32 @lola_enable_clock_events(%struct.lola*) #1

declare dso_local i32 @lola_reset_setups(%struct.lola*) #1

declare dso_local i32 @lola_set_granularity(%struct.lola*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
