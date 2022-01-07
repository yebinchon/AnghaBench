; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32, i32, %struct.ct_mixer* }
%struct.ct_mixer = type { i32 (%struct.ct_mixer*, i32, %struct.rsc**, %struct.rsc**)* }
%struct.rsc = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.rsc*)*, i32 (%struct.rsc*)* }
%struct.ct_atc_pcm = type { i32, i32, %struct.src*, %struct.srcimp**, %struct.amixer**, %struct.TYPE_7__*, %struct.src**, %struct.sum* }
%struct.src = type { %struct.rsc }
%struct.srcimp = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.srcimp*, %struct.src*, %struct.rsc*)* }
%struct.amixer = type { %struct.rsc, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.amixer*)*, i32 (%struct.amixer*, i32*)*, i32 (%struct.amixer*, i32)*, i32 (%struct.amixer*, %struct.rsc*)*, i32 (%struct.amixer*, %struct.rsc*, i32, %struct.sum*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sum = type { %struct.rsc }

@MIX_PCMO_FRONT = common dso_local global i32 0, align 4
@MONO_SUM_SCALE = common dso_local global i32 0, align 4
@INIT_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_capture_prepare(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src*, align 8
  %7 = alloca %struct.amixer*, align 8
  %8 = alloca %struct.srcimp*, align 8
  %9 = alloca %struct.ct_mixer*, align 8
  %10 = alloca %struct.sum*, align 8
  %11 = alloca [8 x %struct.rsc*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %20 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %21 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %20, i32 0, i32 2
  %22 = load %struct.ct_mixer*, %struct.ct_mixer** %21, align 8
  store %struct.ct_mixer* %22, %struct.ct_mixer** %9, align 8
  %23 = bitcast [8 x %struct.rsc*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 64, i1 false)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %25 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %26 = call i32 @atc_pcm_release_resources(%struct.ct_atc* %24, %struct.ct_atc_pcm* %25)
  %27 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %28 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %29 = call i32 @atc_pcm_capture_get_resources(%struct.ct_atc* %27, %struct.ct_atc_pcm* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %3, align 4
  br label %339

34:                                               ; preds = %2
  %35 = load %struct.ct_mixer*, %struct.ct_mixer** %9, align 8
  %36 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %35, i32 0, i32 0
  %37 = load i32 (%struct.ct_mixer*, i32, %struct.rsc**, %struct.rsc**)*, i32 (%struct.ct_mixer*, i32, %struct.rsc**, %struct.rsc**)** %36, align 8
  %38 = load %struct.ct_mixer*, %struct.ct_mixer** %9, align 8
  %39 = load i32, i32* @MIX_PCMO_FRONT, align 4
  %40 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 0
  %41 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 1
  %42 = call i32 %37(%struct.ct_mixer* %38, i32 %39, %struct.rsc** %40, %struct.rsc** %41)
  %43 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %44 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %43, i32 0, i32 5
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp eq i32 1, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %34
  %53 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %54 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %53, i32 0, i32 7
  %55 = load %struct.sum*, %struct.sum** %54, align 8
  store %struct.sum* %55, %struct.sum** %10, align 8
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %80, %52
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %61 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %60, i32 0, i32 4
  %62 = load %struct.amixer**, %struct.amixer*** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.amixer*, %struct.amixer** %62, i64 %64
  %66 = load %struct.amixer*, %struct.amixer** %65, align 8
  store %struct.amixer* %66, %struct.amixer** %7, align 8
  %67 = load %struct.amixer*, %struct.amixer** %7, align 8
  %68 = getelementptr inbounds %struct.amixer, %struct.amixer* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i32 (%struct.amixer*, %struct.rsc*, i32, %struct.sum*)*, i32 (%struct.amixer*, %struct.rsc*, i32, %struct.sum*)** %70, align 8
  %72 = load %struct.amixer*, %struct.amixer** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 %74
  %76 = load %struct.rsc*, %struct.rsc** %75, align 8
  %77 = load i32, i32* @MONO_SUM_SCALE, align 4
  %78 = load %struct.sum*, %struct.sum** %10, align 8
  %79 = call i32 %71(%struct.amixer* %72, %struct.rsc* %76, i32 %77, %struct.sum* %78)
  br label %80

80:                                               ; preds = %59
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %56

83:                                               ; preds = %56
  %84 = load %struct.sum*, %struct.sum** %10, align 8
  %85 = getelementptr inbounds %struct.sum, %struct.sum* %84, i32 0, i32 0
  %86 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 0
  store %struct.rsc* %85, %struct.rsc** %86, align 16
  store i32 1, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = mul nsw i32 %87, 2
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %83, %34
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %153, %89
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %93 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %156

96:                                               ; preds = %90
  %97 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %98 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %97, i32 0, i32 6
  %99 = load %struct.src**, %struct.src*** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.src*, %struct.src** %99, i64 %101
  %103 = load %struct.src*, %struct.src** %102, align 8
  store %struct.src* %103, %struct.src** %6, align 8
  %104 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %105 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %104, i32 0, i32 3
  %106 = load %struct.srcimp**, %struct.srcimp*** %105, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.srcimp*, %struct.srcimp** %106, i64 %110
  %112 = load %struct.srcimp*, %struct.srcimp** %111, align 8
  store %struct.srcimp* %112, %struct.srcimp** %8, align 8
  %113 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %114 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %113, i32 0, i32 4
  %115 = load %struct.amixer**, %struct.amixer*** %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.amixer*, %struct.amixer** %115, i64 %119
  %121 = load %struct.amixer*, %struct.amixer** %120, align 8
  store %struct.amixer* %121, %struct.amixer** %7, align 8
  %122 = load %struct.srcimp*, %struct.srcimp** %8, align 8
  %123 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32 (%struct.srcimp*, %struct.src*, %struct.rsc*)*, i32 (%struct.srcimp*, %struct.src*, %struct.rsc*)** %125, align 8
  %127 = load %struct.srcimp*, %struct.srcimp** %8, align 8
  %128 = load %struct.src*, %struct.src** %6, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %16, align 4
  %131 = srem i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 %132
  %134 = load %struct.rsc*, %struct.rsc** %133, align 8
  %135 = call i32 %126(%struct.srcimp* %127, %struct.src* %128, %struct.rsc* %134)
  %136 = load %struct.amixer*, %struct.amixer** %7, align 8
  %137 = getelementptr inbounds %struct.amixer, %struct.amixer* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = load i32 (%struct.amixer*, %struct.rsc*, i32, %struct.sum*)*, i32 (%struct.amixer*, %struct.rsc*, i32, %struct.sum*)** %139, align 8
  %141 = load %struct.amixer*, %struct.amixer** %7, align 8
  %142 = load %struct.src*, %struct.src** %6, align 8
  %143 = getelementptr inbounds %struct.src, %struct.src* %142, i32 0, i32 0
  %144 = load i32, i32* @INIT_VOL, align 4
  %145 = call i32 %140(%struct.amixer* %141, %struct.rsc* %143, i32 %144, %struct.sum* null)
  %146 = load %struct.amixer*, %struct.amixer** %7, align 8
  %147 = getelementptr inbounds %struct.amixer, %struct.amixer* %146, i32 0, i32 0
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %16, align 4
  %150 = srem i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 %151
  store %struct.rsc* %147, %struct.rsc** %152, align 8
  br label %153

153:                                              ; preds = %96
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %90

156:                                              ; preds = %90
  %157 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %158 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %161 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %159, %162
  %164 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %165 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %164, i32 0, i32 5
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @atc_get_pitch(i32 %163, i32 %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %299

174:                                              ; preds = %156
  %175 = load i32, i32* %17, align 4
  %176 = icmp ule i32 %175, 134217728
  br i1 %176, label %177, label %299

177:                                              ; preds = %174
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %295, %177
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %16, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %298

182:                                              ; preds = %178
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 %184
  %186 = load %struct.rsc*, %struct.rsc** %185, align 8
  %187 = getelementptr inbounds %struct.rsc, %struct.rsc* %186, i32 0, i32 0
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %189, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 %192
  %194 = load %struct.rsc*, %struct.rsc** %193, align 8
  %195 = call i32 %190(%struct.rsc* %194)
  store i32 0, i32* %14, align 4
  br label %196

196:                                              ; preds = %291, %182
  %197 = load i32, i32* %14, align 4
  %198 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %199 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %294

202:                                              ; preds = %196
  %203 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %204 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %203, i32 0, i32 4
  %205 = load %struct.amixer**, %struct.amixer*** %204, align 8
  %206 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %207 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %16, align 4
  %211 = mul nsw i32 %209, %210
  %212 = add nsw i32 %208, %211
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.amixer*, %struct.amixer** %205, i64 %215
  %217 = load %struct.amixer*, %struct.amixer** %216, align 8
  store %struct.amixer* %217, %struct.amixer** %7, align 8
  %218 = load %struct.amixer*, %struct.amixer** %7, align 8
  %219 = getelementptr inbounds %struct.amixer, %struct.amixer* %218, i32 0, i32 1
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 3
  %222 = load i32 (%struct.amixer*, %struct.rsc*)*, i32 (%struct.amixer*, %struct.rsc*)** %221, align 8
  %223 = load %struct.amixer*, %struct.amixer** %7, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 %225
  %227 = load %struct.rsc*, %struct.rsc** %226, align 8
  %228 = call i32 %222(%struct.amixer* %223, %struct.rsc* %227)
  %229 = load %struct.amixer*, %struct.amixer** %7, align 8
  %230 = getelementptr inbounds %struct.amixer, %struct.amixer* %229, i32 0, i32 1
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = load i32 (%struct.amixer*, i32)*, i32 (%struct.amixer*, i32)** %232, align 8
  %234 = load %struct.amixer*, %struct.amixer** %7, align 8
  %235 = load i32, i32* @INIT_VOL, align 4
  %236 = call i32 %233(%struct.amixer* %234, i32 %235)
  %237 = load %struct.amixer*, %struct.amixer** %7, align 8
  %238 = getelementptr inbounds %struct.amixer, %struct.amixer* %237, i32 0, i32 1
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load i32 (%struct.amixer*, i32*)*, i32 (%struct.amixer*, i32*)** %240, align 8
  %242 = load %struct.amixer*, %struct.amixer** %7, align 8
  %243 = call i32 %241(%struct.amixer* %242, i32* null)
  %244 = load %struct.amixer*, %struct.amixer** %7, align 8
  %245 = getelementptr inbounds %struct.amixer, %struct.amixer* %244, i32 0, i32 1
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load i32 (%struct.amixer*)*, i32 (%struct.amixer*)** %247, align 8
  %249 = load %struct.amixer*, %struct.amixer** %7, align 8
  %250 = call i32 %248(%struct.amixer* %249)
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 %252
  %254 = load %struct.rsc*, %struct.rsc** %253, align 8
  %255 = getelementptr inbounds %struct.rsc, %struct.rsc* %254, i32 0, i32 0
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 %260
  %262 = load %struct.rsc*, %struct.rsc** %261, align 8
  %263 = call i32 %258(%struct.rsc* %262)
  %264 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %265 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %264, i32 0, i32 3
  %266 = load %struct.srcimp**, %struct.srcimp*** %265, align 8
  %267 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %268 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %16, align 4
  %272 = mul nsw i32 %270, %271
  %273 = add nsw i32 %269, %272
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.srcimp*, %struct.srcimp** %266, i64 %276
  %278 = load %struct.srcimp*, %struct.srcimp** %277, align 8
  store %struct.srcimp* %278, %struct.srcimp** %8, align 8
  %279 = load %struct.srcimp*, %struct.srcimp** %8, align 8
  %280 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %279, i32 0, i32 0
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = load i32 (%struct.srcimp*, %struct.src*, %struct.rsc*)*, i32 (%struct.srcimp*, %struct.src*, %struct.rsc*)** %282, align 8
  %284 = load %struct.srcimp*, %struct.srcimp** %8, align 8
  %285 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %286 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %285, i32 0, i32 2
  %287 = load %struct.src*, %struct.src** %286, align 8
  %288 = load %struct.amixer*, %struct.amixer** %7, align 8
  %289 = getelementptr inbounds %struct.amixer, %struct.amixer* %288, i32 0, i32 0
  %290 = call i32 %283(%struct.srcimp* %284, %struct.src* %287, %struct.rsc* %289)
  br label %291

291:                                              ; preds = %202
  %292 = load i32, i32* %14, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %14, align 4
  br label %196

294:                                              ; preds = %196
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %13, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %13, align 4
  br label %178

298:                                              ; preds = %178
  br label %334

299:                                              ; preds = %174, %156
  store i32 0, i32* %13, align 4
  br label %300

300:                                              ; preds = %330, %299
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* %16, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %333

304:                                              ; preds = %300
  %305 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %306 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %305, i32 0, i32 3
  %307 = load %struct.srcimp**, %struct.srcimp*** %306, align 8
  %308 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %309 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* %13, align 4
  %312 = add nsw i32 %310, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.srcimp*, %struct.srcimp** %307, i64 %313
  %315 = load %struct.srcimp*, %struct.srcimp** %314, align 8
  store %struct.srcimp* %315, %struct.srcimp** %8, align 8
  %316 = load %struct.srcimp*, %struct.srcimp** %8, align 8
  %317 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %316, i32 0, i32 0
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = load i32 (%struct.srcimp*, %struct.src*, %struct.rsc*)*, i32 (%struct.srcimp*, %struct.src*, %struct.rsc*)** %319, align 8
  %321 = load %struct.srcimp*, %struct.srcimp** %8, align 8
  %322 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %323 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %322, i32 0, i32 2
  %324 = load %struct.src*, %struct.src** %323, align 8
  %325 = load i32, i32* %13, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [8 x %struct.rsc*], [8 x %struct.rsc*]* %11, i64 0, i64 %326
  %328 = load %struct.rsc*, %struct.rsc** %327, align 8
  %329 = call i32 %320(%struct.srcimp* %321, %struct.src* %324, %struct.rsc* %328)
  br label %330

330:                                              ; preds = %304
  %331 = load i32, i32* %13, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %13, align 4
  br label %300

333:                                              ; preds = %300
  br label %334

334:                                              ; preds = %333, %298
  %335 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %336 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @ct_timer_prepare(i32 %337)
  store i32 0, i32* %3, align 4
  br label %339

339:                                              ; preds = %334, %32
  %340 = load i32, i32* %3, align 4
  ret i32 %340
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @atc_pcm_release_resources(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

declare dso_local i32 @atc_pcm_capture_get_resources(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

declare dso_local i32 @atc_get_pitch(i32, i32) #2

declare dso_local i32 @ct_timer_prepare(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
