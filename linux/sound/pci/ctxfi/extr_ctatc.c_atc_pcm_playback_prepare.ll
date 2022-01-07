; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32, i32, i32, i32*, i32, %struct.src_mgr** }
%struct.src_mgr = type { i32 (%struct.src_mgr*, %struct.src_desc*, %struct.src**)*, i32 (%struct.src_mgr*, %struct.amixer_desc*, %struct.amixer**)* }
%struct.src_desc = type opaque
%struct.src = type opaque
%struct.amixer_desc = type opaque
%struct.amixer = type opaque
%struct.ct_atc_pcm = type { i32, %struct.src.0*, %struct.amixer.1**, i64, %struct.TYPE_8__* }
%struct.src.0 = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.src.0* (%struct.src.0*)*, i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)* }
%struct.amixer.1 = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.amixer.1*, i32*, i32, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.amixer_mgr = type { i32 (%struct.src_mgr*, %struct.src_desc.2*, %struct.src.0**)*, i32 (%struct.src_mgr*, %struct.amixer_desc.3*, %struct.amixer.1**)* }
%struct.src_desc.2 = type { i32, i32, i32, i32 }
%struct.amixer_desc.3 = type opaque
%struct.amixer_desc.4 = type { i32, i32 }

@SRC = common dso_local global i64 0, align 8
@AMIXER = common dso_local global i64 0, align 8
@MEMRD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INIT_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_playback_prepare(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src_mgr*, align 8
  %7 = alloca %struct.amixer_mgr*, align 8
  %8 = alloca %struct.src_desc.2, align 4
  %9 = alloca %struct.amixer_desc.4, align 4
  %10 = alloca %struct.src.0*, align 8
  %11 = alloca %struct.amixer.1*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %17 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %18 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %17, i32 0, i32 5
  %19 = load %struct.src_mgr**, %struct.src_mgr*** %18, align 8
  %20 = load i64, i64* @SRC, align 8
  %21 = getelementptr inbounds %struct.src_mgr*, %struct.src_mgr** %19, i64 %20
  %22 = load %struct.src_mgr*, %struct.src_mgr** %21, align 8
  store %struct.src_mgr* %22, %struct.src_mgr** %6, align 8
  %23 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %24 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %23, i32 0, i32 5
  %25 = load %struct.src_mgr**, %struct.src_mgr*** %24, align 8
  %26 = load i64, i64* @AMIXER, align 8
  %27 = getelementptr inbounds %struct.src_mgr*, %struct.src_mgr** %25, i64 %26
  %28 = load %struct.src_mgr*, %struct.src_mgr** %27, align 8
  %29 = bitcast %struct.src_mgr* %28 to %struct.amixer_mgr*
  store %struct.amixer_mgr* %29, %struct.amixer_mgr** %7, align 8
  %30 = bitcast %struct.src_desc.2* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 16, i1 false)
  %31 = bitcast %struct.amixer_desc.4* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 8, i1 false)
  %32 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %33 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %32, i32 0, i32 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %39 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %40 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %47 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %48 = call i32 @atc_pcm_release_resources(%struct.ct_atc* %46, %struct.ct_atc_pcm* %47)
  %49 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %50 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %49, i32 0, i32 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.src_desc.2, %struct.src_desc.2* %8, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %58 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.src_desc.2, %struct.src_desc.2* %8, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @MEMRD, align 4
  %62 = getelementptr inbounds %struct.src_desc.2, %struct.src_desc.2* %8, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %64 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %63, i32 0, i32 0
  %65 = load i32 (%struct.src_mgr*, %struct.src_desc*, %struct.src**)*, i32 (%struct.src_mgr*, %struct.src_desc*, %struct.src**)** %64, align 8
  %66 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %67 = bitcast %struct.src_desc.2* %8 to %struct.src_desc*
  %68 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %69 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %68, i32 0, i32 1
  %70 = bitcast %struct.src.0** %69 to %struct.src**
  %71 = call i32 %65(%struct.src_mgr* %66, %struct.src_desc* %67, %struct.src** %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %2
  br label %271

75:                                               ; preds = %2
  %76 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %77 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %76, i32 0, i32 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %84 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %87 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = call i32 @atc_get_pitch(i32 %82, i32 %89)
  store i32 %90, i32* %16, align 4
  %91 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %92 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %91, i32 0, i32 1
  %93 = load %struct.src.0*, %struct.src.0** %92, align 8
  store %struct.src.0* %93, %struct.src.0** %10, align 8
  %94 = load %struct.src.0*, %struct.src.0** %10, align 8
  %95 = getelementptr inbounds %struct.src.0, %struct.src.0* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %97, align 8
  %99 = load %struct.src.0*, %struct.src.0** %10, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 %98(%struct.src.0* %99, i32 %100)
  %102 = load %struct.src.0*, %struct.src.0** %10, align 8
  %103 = getelementptr inbounds %struct.src.0, %struct.src.0* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  %106 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %105, align 8
  %107 = load %struct.src.0*, %struct.src.0** %10, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @select_rom(i32 %108)
  %110 = call i32 %106(%struct.src.0* %107, i32 %109)
  %111 = load %struct.src.0*, %struct.src.0** %10, align 8
  %112 = getelementptr inbounds %struct.src.0, %struct.src.0* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %114, align 8
  %116 = load %struct.src.0*, %struct.src.0** %10, align 8
  %117 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %118 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %117, i32 0, i32 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %125 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @convert_format(i32 %123, i32 %126)
  %128 = call i32 %115(%struct.src.0* %116, i32 %127)
  %129 = load %struct.src.0*, %struct.src.0** %10, align 8
  %130 = getelementptr inbounds %struct.src.0, %struct.src.0* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %132, align 8
  %134 = load %struct.src.0*, %struct.src.0** %10, align 8
  %135 = load %struct.src.0*, %struct.src.0** %10, align 8
  %136 = getelementptr inbounds %struct.src.0, %struct.src.0* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load %struct.src.0* (%struct.src.0*)*, %struct.src.0* (%struct.src.0*)** %138, align 8
  %140 = load %struct.src.0*, %struct.src.0** %10, align 8
  %141 = call %struct.src.0* %139(%struct.src.0* %140)
  %142 = icmp ne %struct.src.0* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 %133(%struct.src.0* %134, i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %75
  br label %150

148:                                              ; preds = %75
  %149 = load i32, i32* %13, align 4
  br label %150

150:                                              ; preds = %148, %147
  %151 = phi i32 [ 2, %147 ], [ %149, %148 ]
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call %struct.amixer.1** @kcalloc(i32 %152, i32 8, i32 %153)
  %155 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %156 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %155, i32 0, i32 2
  store %struct.amixer.1** %154, %struct.amixer.1*** %156, align 8
  %157 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %158 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %157, i32 0, i32 2
  %159 = load %struct.amixer.1**, %struct.amixer.1*** %158, align 8
  %160 = icmp ne %struct.amixer.1** %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %150
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %12, align 4
  br label %271

164:                                              ; preds = %150
  %165 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %166 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.amixer_desc.4, %struct.amixer_desc.4* %9, i32 0, i32 0
  store i32 %167, i32* %168, align 4
  store i32 0, i32* %14, align 4
  %169 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %170 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %169, i32 0, i32 3
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %197, %164
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %171
  %176 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %177 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %176, i32 0, i32 1
  %178 = load i32 (%struct.src_mgr*, %struct.amixer_desc.3*, %struct.amixer.1**)*, i32 (%struct.src_mgr*, %struct.amixer_desc.3*, %struct.amixer.1**)** %177, align 8
  %179 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %180 = bitcast %struct.amixer_mgr* %179 to %struct.src_mgr*
  %181 = bitcast %struct.amixer_desc.4* %9 to %struct.amixer_desc.3*
  %182 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %183 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %182, i32 0, i32 2
  %184 = load %struct.amixer.1**, %struct.amixer.1*** %183, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.amixer.1*, %struct.amixer.1** %184, i64 %186
  %188 = call i32 %178(%struct.src_mgr* %180, %struct.amixer_desc.3* %181, %struct.amixer.1** %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %175
  br label %271

192:                                              ; preds = %175
  %193 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %194 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %194, align 8
  br label %197

197:                                              ; preds = %192
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %14, align 4
  br label %171

200:                                              ; preds = %171
  %201 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %202 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %203 = call i32 @ct_map_audio_buffer(%struct.ct_atc* %201, %struct.ct_atc_pcm* %202)
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %271

207:                                              ; preds = %200
  %208 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %209 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %208, i32 0, i32 1
  %210 = load %struct.src.0*, %struct.src.0** %209, align 8
  store %struct.src.0* %210, %struct.src.0** %10, align 8
  store i32 0, i32* %14, align 4
  br label %211

211:                                              ; preds = %263, %207
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %13, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %266

215:                                              ; preds = %211
  %216 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %217 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %216, i32 0, i32 2
  %218 = load %struct.amixer.1**, %struct.amixer.1*** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.amixer.1*, %struct.amixer.1** %218, i64 %220
  %222 = load %struct.amixer.1*, %struct.amixer.1** %221, align 8
  store %struct.amixer.1* %222, %struct.amixer.1** %11, align 8
  %223 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %224 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %223, i32 0, i32 2
  %225 = call i32 @mutex_lock(i32* %224)
  %226 = load %struct.amixer.1*, %struct.amixer.1** %11, align 8
  %227 = getelementptr inbounds %struct.amixer.1, %struct.amixer.1* %226, i32 0, i32 0
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32 (%struct.amixer.1*, i32*, i32, i32)*, i32 (%struct.amixer.1*, i32*, i32, i32)** %229, align 8
  %231 = load %struct.amixer.1*, %struct.amixer.1** %11, align 8
  %232 = load %struct.src.0*, %struct.src.0** %10, align 8
  %233 = getelementptr inbounds %struct.src.0, %struct.src.0* %232, i32 0, i32 1
  %234 = load i32, i32* @INIT_VOL, align 4
  %235 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %236 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %15, align 4
  %240 = mul nsw i32 %239, 2
  %241 = add nsw i32 %238, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %237, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 %230(%struct.amixer.1* %231, i32* %233, i32 %234, i32 %244)
  %246 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %247 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %246, i32 0, i32 2
  %248 = call i32 @mutex_unlock(i32* %247)
  %249 = load %struct.src.0*, %struct.src.0** %10, align 8
  %250 = getelementptr inbounds %struct.src.0, %struct.src.0* %249, i32 0, i32 0
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = load %struct.src.0* (%struct.src.0*)*, %struct.src.0* (%struct.src.0*)** %252, align 8
  %254 = load %struct.src.0*, %struct.src.0** %10, align 8
  %255 = call %struct.src.0* %253(%struct.src.0* %254)
  store %struct.src.0* %255, %struct.src.0** %10, align 8
  %256 = load %struct.src.0*, %struct.src.0** %10, align 8
  %257 = icmp ne %struct.src.0* %256, null
  br i1 %257, label %262, label %258

258:                                              ; preds = %215
  %259 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %260 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %259, i32 0, i32 1
  %261 = load %struct.src.0*, %struct.src.0** %260, align 8
  store %struct.src.0* %261, %struct.src.0** %10, align 8
  br label %262

262:                                              ; preds = %258, %215
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %14, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %14, align 4
  br label %211

266:                                              ; preds = %211
  %267 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %268 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @ct_timer_prepare(i32 %269)
  store i32 0, i32* %3, align 4
  br label %276

271:                                              ; preds = %206, %191, %161, %74
  %272 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %273 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %274 = call i32 @atc_pcm_release_resources(%struct.ct_atc* %272, %struct.ct_atc_pcm* %273)
  %275 = load i32, i32* %12, align 4
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %271, %266
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @atc_pcm_release_resources(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

declare dso_local i32 @atc_get_pitch(i32, i32) #2

declare dso_local i32 @select_rom(i32) #2

declare dso_local i32 @convert_format(i32, i32) #2

declare dso_local %struct.amixer.1** @kcalloc(i32, i32, i32) #2

declare dso_local i32 @ct_map_audio_buffer(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ct_timer_prepare(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
