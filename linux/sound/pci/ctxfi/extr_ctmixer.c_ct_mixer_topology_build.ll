; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_topology_build.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_topology_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { %struct.sum**, %struct.amixer** }
%struct.sum = type { i32 }
%struct.amixer = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.amixer*, i32*, i32, %struct.sum*)* }

@AMIXER_MASTER_F = common dso_local global i32 0, align 4
@SUM_IN_F = common dso_local global i32 0, align 4
@AMIXER_MASTER_S = common dso_local global i32 0, align 4
@CHN_NUM = common dso_local global i32 0, align 4
@INIT_VOL = common dso_local global i32 0, align 4
@AMIXER_WAVE_F = common dso_local global i32 0, align 4
@AMIXER_WAVE_S = common dso_local global i32 0, align 4
@AMIXER_SPDIFO = common dso_local global i32 0, align 4
@AMIXER_PCM_F = common dso_local global i32 0, align 4
@AMIXER_PCM_S = common dso_local global i32 0, align 4
@AMIXER_LINEIN = common dso_local global i32 0, align 4
@AMIXER_MIC = common dso_local global i32 0, align 4
@AMIXER_SPDIFI = common dso_local global i32 0, align 4
@AMIXER_MASTER_F_C = common dso_local global i32 0, align 4
@SUM_IN_F_C = common dso_local global i32 0, align 4
@AMIXER_PCM_F_C = common dso_local global i32 0, align 4
@AMIXER_LINEIN_C = common dso_local global i32 0, align 4
@AMIXER_MIC_C = common dso_local global i32 0, align 4
@AMIXER_SPDIFI_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer*)* @ct_mixer_topology_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_mixer_topology_build(%struct.ct_mixer* %0) #0 {
  %2 = alloca %struct.ct_mixer*, align 8
  %3 = alloca %struct.sum*, align 8
  %4 = alloca %struct.amixer*, align 8
  %5 = alloca %struct.amixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %2, align 8
  %9 = load i32, i32* @AMIXER_MASTER_F, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @SUM_IN_F, align 4
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %74, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @AMIXER_MASTER_S, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %11
  %16 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %17 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %16, i32 0, i32 1
  %18 = load %struct.amixer**, %struct.amixer*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @CHN_NUM, align 4
  %21 = mul i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.amixer*, %struct.amixer** %18, i64 %22
  %24 = load %struct.amixer*, %struct.amixer** %23, align 8
  store %struct.amixer* %24, %struct.amixer** %4, align 8
  %25 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %26 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %25, i32 0, i32 0
  %27 = load %struct.sum**, %struct.sum*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CHN_NUM, align 4
  %30 = mul i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sum*, %struct.sum** %27, i64 %31
  %33 = load %struct.sum*, %struct.sum** %32, align 8
  store %struct.sum* %33, %struct.sum** %3, align 8
  %34 = load %struct.amixer*, %struct.amixer** %4, align 8
  %35 = getelementptr inbounds %struct.amixer, %struct.amixer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %37, align 8
  %39 = load %struct.amixer*, %struct.amixer** %4, align 8
  %40 = load %struct.sum*, %struct.sum** %3, align 8
  %41 = getelementptr inbounds %struct.sum, %struct.sum* %40, i32 0, i32 0
  %42 = load i32, i32* @INIT_VOL, align 4
  %43 = call i32 %38(%struct.amixer* %39, i32* %41, i32 %42, %struct.sum* null)
  %44 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %45 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %44, i32 0, i32 1
  %46 = load %struct.amixer**, %struct.amixer*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CHN_NUM, align 4
  %49 = mul i32 %47, %48
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.amixer*, %struct.amixer** %46, i64 %51
  %53 = load %struct.amixer*, %struct.amixer** %52, align 8
  store %struct.amixer* %53, %struct.amixer** %4, align 8
  %54 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %55 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %54, i32 0, i32 0
  %56 = load %struct.sum**, %struct.sum*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @CHN_NUM, align 4
  %59 = mul i32 %57, %58
  %60 = add i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sum*, %struct.sum** %56, i64 %61
  %63 = load %struct.sum*, %struct.sum** %62, align 8
  store %struct.sum* %63, %struct.sum** %3, align 8
  %64 = load %struct.amixer*, %struct.amixer** %4, align 8
  %65 = getelementptr inbounds %struct.amixer, %struct.amixer* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %67, align 8
  %69 = load %struct.amixer*, %struct.amixer** %4, align 8
  %70 = load %struct.sum*, %struct.sum** %3, align 8
  %71 = getelementptr inbounds %struct.sum, %struct.sum* %70, i32 0, i32 0
  %72 = load i32, i32* @INIT_VOL, align 4
  %73 = call i32 %68(%struct.amixer* %69, i32* %71, i32 %72, %struct.sum* null)
  br label %74

74:                                               ; preds = %15
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %11

79:                                               ; preds = %11
  %80 = load i32, i32* @AMIXER_WAVE_F, align 4
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @AMIXER_MASTER_F, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %145, %79
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @AMIXER_WAVE_S, align 4
  %85 = icmp ule i32 %83, %84
  br i1 %85, label %86, label %150

86:                                               ; preds = %82
  %87 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %88 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %87, i32 0, i32 1
  %89 = load %struct.amixer**, %struct.amixer*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @CHN_NUM, align 4
  %92 = mul i32 %90, %91
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.amixer*, %struct.amixer** %89, i64 %93
  %95 = load %struct.amixer*, %struct.amixer** %94, align 8
  store %struct.amixer* %95, %struct.amixer** %4, align 8
  %96 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %97 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %96, i32 0, i32 1
  %98 = load %struct.amixer**, %struct.amixer*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @CHN_NUM, align 4
  %101 = mul i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.amixer*, %struct.amixer** %98, i64 %102
  %104 = load %struct.amixer*, %struct.amixer** %103, align 8
  store %struct.amixer* %104, %struct.amixer** %5, align 8
  %105 = load %struct.amixer*, %struct.amixer** %4, align 8
  %106 = getelementptr inbounds %struct.amixer, %struct.amixer* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %108, align 8
  %110 = load %struct.amixer*, %struct.amixer** %4, align 8
  %111 = load %struct.amixer*, %struct.amixer** %5, align 8
  %112 = getelementptr inbounds %struct.amixer, %struct.amixer* %111, i32 0, i32 1
  %113 = load i32, i32* @INIT_VOL, align 4
  %114 = call i32 %109(%struct.amixer* %110, i32* %112, i32 %113, %struct.sum* null)
  %115 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %116 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %115, i32 0, i32 1
  %117 = load %struct.amixer**, %struct.amixer*** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @CHN_NUM, align 4
  %120 = mul i32 %118, %119
  %121 = add i32 %120, 1
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.amixer*, %struct.amixer** %117, i64 %122
  %124 = load %struct.amixer*, %struct.amixer** %123, align 8
  store %struct.amixer* %124, %struct.amixer** %4, align 8
  %125 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %126 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %125, i32 0, i32 1
  %127 = load %struct.amixer**, %struct.amixer*** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @CHN_NUM, align 4
  %130 = mul i32 %128, %129
  %131 = add i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.amixer*, %struct.amixer** %127, i64 %132
  %134 = load %struct.amixer*, %struct.amixer** %133, align 8
  store %struct.amixer* %134, %struct.amixer** %5, align 8
  %135 = load %struct.amixer*, %struct.amixer** %4, align 8
  %136 = getelementptr inbounds %struct.amixer, %struct.amixer* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %138, align 8
  %140 = load %struct.amixer*, %struct.amixer** %4, align 8
  %141 = load %struct.amixer*, %struct.amixer** %5, align 8
  %142 = getelementptr inbounds %struct.amixer, %struct.amixer* %141, i32 0, i32 1
  %143 = load i32, i32* @INIT_VOL, align 4
  %144 = call i32 %139(%struct.amixer* %140, i32* %142, i32 %143, %struct.sum* null)
  br label %145

145:                                              ; preds = %86
  %146 = load i32, i32* %6, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %82

150:                                              ; preds = %82
  %151 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %152 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %151, i32 0, i32 1
  %153 = load %struct.amixer**, %struct.amixer*** %152, align 8
  %154 = load i32, i32* @AMIXER_SPDIFO, align 4
  %155 = load i32, i32* @CHN_NUM, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.amixer*, %struct.amixer** %153, i64 %157
  %159 = load %struct.amixer*, %struct.amixer** %158, align 8
  store %struct.amixer* %159, %struct.amixer** %4, align 8
  %160 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %161 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %160, i32 0, i32 1
  %162 = load %struct.amixer**, %struct.amixer*** %161, align 8
  %163 = load i32, i32* @AMIXER_MASTER_F, align 4
  %164 = load i32, i32* @CHN_NUM, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.amixer*, %struct.amixer** %162, i64 %166
  %168 = load %struct.amixer*, %struct.amixer** %167, align 8
  store %struct.amixer* %168, %struct.amixer** %5, align 8
  %169 = load %struct.amixer*, %struct.amixer** %4, align 8
  %170 = getelementptr inbounds %struct.amixer, %struct.amixer* %169, i32 0, i32 0
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %172, align 8
  %174 = load %struct.amixer*, %struct.amixer** %4, align 8
  %175 = load %struct.amixer*, %struct.amixer** %5, align 8
  %176 = getelementptr inbounds %struct.amixer, %struct.amixer* %175, i32 0, i32 1
  %177 = load i32, i32* @INIT_VOL, align 4
  %178 = call i32 %173(%struct.amixer* %174, i32* %176, i32 %177, %struct.sum* null)
  %179 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %180 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %179, i32 0, i32 1
  %181 = load %struct.amixer**, %struct.amixer*** %180, align 8
  %182 = load i32, i32* @AMIXER_SPDIFO, align 4
  %183 = load i32, i32* @CHN_NUM, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.amixer*, %struct.amixer** %181, i64 %186
  %188 = load %struct.amixer*, %struct.amixer** %187, align 8
  store %struct.amixer* %188, %struct.amixer** %4, align 8
  %189 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %190 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %189, i32 0, i32 1
  %191 = load %struct.amixer**, %struct.amixer*** %190, align 8
  %192 = load i32, i32* @AMIXER_MASTER_F, align 4
  %193 = load i32, i32* @CHN_NUM, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.amixer*, %struct.amixer** %191, i64 %196
  %198 = load %struct.amixer*, %struct.amixer** %197, align 8
  store %struct.amixer* %198, %struct.amixer** %5, align 8
  %199 = load %struct.amixer*, %struct.amixer** %4, align 8
  %200 = getelementptr inbounds %struct.amixer, %struct.amixer* %199, i32 0, i32 0
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %202, align 8
  %204 = load %struct.amixer*, %struct.amixer** %4, align 8
  %205 = load %struct.amixer*, %struct.amixer** %5, align 8
  %206 = getelementptr inbounds %struct.amixer, %struct.amixer* %205, i32 0, i32 1
  %207 = load i32, i32* @INIT_VOL, align 4
  %208 = call i32 %203(%struct.amixer* %204, i32* %206, i32 %207, %struct.sum* null)
  %209 = load i32, i32* @AMIXER_PCM_F, align 4
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* @SUM_IN_F, align 4
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %272, %150
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @AMIXER_PCM_S, align 4
  %214 = icmp ule i32 %212, %213
  br i1 %214, label %215, label %277

215:                                              ; preds = %211
  %216 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %217 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %216, i32 0, i32 1
  %218 = load %struct.amixer**, %struct.amixer*** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @CHN_NUM, align 4
  %221 = mul i32 %219, %220
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.amixer*, %struct.amixer** %218, i64 %222
  %224 = load %struct.amixer*, %struct.amixer** %223, align 8
  store %struct.amixer* %224, %struct.amixer** %4, align 8
  %225 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %226 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %225, i32 0, i32 0
  %227 = load %struct.sum**, %struct.sum*** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @CHN_NUM, align 4
  %230 = mul i32 %228, %229
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.sum*, %struct.sum** %227, i64 %231
  %233 = load %struct.sum*, %struct.sum** %232, align 8
  store %struct.sum* %233, %struct.sum** %3, align 8
  %234 = load %struct.amixer*, %struct.amixer** %4, align 8
  %235 = getelementptr inbounds %struct.amixer, %struct.amixer* %234, i32 0, i32 0
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %237, align 8
  %239 = load %struct.amixer*, %struct.amixer** %4, align 8
  %240 = load i32, i32* @INIT_VOL, align 4
  %241 = load %struct.sum*, %struct.sum** %3, align 8
  %242 = call i32 %238(%struct.amixer* %239, i32* null, i32 %240, %struct.sum* %241)
  %243 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %244 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %243, i32 0, i32 1
  %245 = load %struct.amixer**, %struct.amixer*** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @CHN_NUM, align 4
  %248 = mul i32 %246, %247
  %249 = add i32 %248, 1
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.amixer*, %struct.amixer** %245, i64 %250
  %252 = load %struct.amixer*, %struct.amixer** %251, align 8
  store %struct.amixer* %252, %struct.amixer** %4, align 8
  %253 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %254 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %253, i32 0, i32 0
  %255 = load %struct.sum**, %struct.sum*** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @CHN_NUM, align 4
  %258 = mul i32 %256, %257
  %259 = add i32 %258, 1
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.sum*, %struct.sum** %255, i64 %260
  %262 = load %struct.sum*, %struct.sum** %261, align 8
  store %struct.sum* %262, %struct.sum** %3, align 8
  %263 = load %struct.amixer*, %struct.amixer** %4, align 8
  %264 = getelementptr inbounds %struct.amixer, %struct.amixer* %263, i32 0, i32 0
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %266, align 8
  %268 = load %struct.amixer*, %struct.amixer** %4, align 8
  %269 = load i32, i32* @INIT_VOL, align 4
  %270 = load %struct.sum*, %struct.sum** %3, align 8
  %271 = call i32 %267(%struct.amixer* %268, i32* null, i32 %269, %struct.sum* %270)
  br label %272

272:                                              ; preds = %215
  %273 = load i32, i32* %6, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %8, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %8, align 4
  br label %211

277:                                              ; preds = %211
  %278 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %279 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %278, i32 0, i32 1
  %280 = load %struct.amixer**, %struct.amixer*** %279, align 8
  %281 = load i32, i32* @AMIXER_LINEIN, align 4
  %282 = load i32, i32* @CHN_NUM, align 4
  %283 = mul nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.amixer*, %struct.amixer** %280, i64 %284
  %286 = load %struct.amixer*, %struct.amixer** %285, align 8
  store %struct.amixer* %286, %struct.amixer** %4, align 8
  %287 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %288 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %287, i32 0, i32 0
  %289 = load %struct.sum**, %struct.sum*** %288, align 8
  %290 = load i32, i32* @SUM_IN_F, align 4
  %291 = load i32, i32* @CHN_NUM, align 4
  %292 = mul nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.sum*, %struct.sum** %289, i64 %293
  %295 = load %struct.sum*, %struct.sum** %294, align 8
  store %struct.sum* %295, %struct.sum** %3, align 8
  %296 = load %struct.amixer*, %struct.amixer** %4, align 8
  %297 = getelementptr inbounds %struct.amixer, %struct.amixer* %296, i32 0, i32 0
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %299, align 8
  %301 = load %struct.amixer*, %struct.amixer** %4, align 8
  %302 = load i32, i32* @INIT_VOL, align 4
  %303 = load %struct.sum*, %struct.sum** %3, align 8
  %304 = call i32 %300(%struct.amixer* %301, i32* null, i32 %302, %struct.sum* %303)
  %305 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %306 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %305, i32 0, i32 1
  %307 = load %struct.amixer**, %struct.amixer*** %306, align 8
  %308 = load i32, i32* @AMIXER_LINEIN, align 4
  %309 = load i32, i32* @CHN_NUM, align 4
  %310 = mul nsw i32 %308, %309
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.amixer*, %struct.amixer** %307, i64 %312
  %314 = load %struct.amixer*, %struct.amixer** %313, align 8
  store %struct.amixer* %314, %struct.amixer** %4, align 8
  %315 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %316 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %315, i32 0, i32 0
  %317 = load %struct.sum**, %struct.sum*** %316, align 8
  %318 = load i32, i32* @SUM_IN_F, align 4
  %319 = load i32, i32* @CHN_NUM, align 4
  %320 = mul nsw i32 %318, %319
  %321 = add nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.sum*, %struct.sum** %317, i64 %322
  %324 = load %struct.sum*, %struct.sum** %323, align 8
  store %struct.sum* %324, %struct.sum** %3, align 8
  %325 = load %struct.amixer*, %struct.amixer** %4, align 8
  %326 = getelementptr inbounds %struct.amixer, %struct.amixer* %325, i32 0, i32 0
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 0
  %329 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %328, align 8
  %330 = load %struct.amixer*, %struct.amixer** %4, align 8
  %331 = load i32, i32* @INIT_VOL, align 4
  %332 = load %struct.sum*, %struct.sum** %3, align 8
  %333 = call i32 %329(%struct.amixer* %330, i32* null, i32 %331, %struct.sum* %332)
  %334 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %335 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %334, i32 0, i32 1
  %336 = load %struct.amixer**, %struct.amixer*** %335, align 8
  %337 = load i32, i32* @AMIXER_MIC, align 4
  %338 = load i32, i32* @CHN_NUM, align 4
  %339 = mul nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.amixer*, %struct.amixer** %336, i64 %340
  %342 = load %struct.amixer*, %struct.amixer** %341, align 8
  store %struct.amixer* %342, %struct.amixer** %4, align 8
  %343 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %344 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %343, i32 0, i32 0
  %345 = load %struct.sum**, %struct.sum*** %344, align 8
  %346 = load i32, i32* @SUM_IN_F, align 4
  %347 = load i32, i32* @CHN_NUM, align 4
  %348 = mul nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.sum*, %struct.sum** %345, i64 %349
  %351 = load %struct.sum*, %struct.sum** %350, align 8
  store %struct.sum* %351, %struct.sum** %3, align 8
  %352 = load %struct.amixer*, %struct.amixer** %4, align 8
  %353 = getelementptr inbounds %struct.amixer, %struct.amixer* %352, i32 0, i32 0
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %355, align 8
  %357 = load %struct.amixer*, %struct.amixer** %4, align 8
  %358 = load i32, i32* @INIT_VOL, align 4
  %359 = load %struct.sum*, %struct.sum** %3, align 8
  %360 = call i32 %356(%struct.amixer* %357, i32* null, i32 %358, %struct.sum* %359)
  %361 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %362 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %361, i32 0, i32 1
  %363 = load %struct.amixer**, %struct.amixer*** %362, align 8
  %364 = load i32, i32* @AMIXER_MIC, align 4
  %365 = load i32, i32* @CHN_NUM, align 4
  %366 = mul nsw i32 %364, %365
  %367 = add nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.amixer*, %struct.amixer** %363, i64 %368
  %370 = load %struct.amixer*, %struct.amixer** %369, align 8
  store %struct.amixer* %370, %struct.amixer** %4, align 8
  %371 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %372 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %371, i32 0, i32 0
  %373 = load %struct.sum**, %struct.sum*** %372, align 8
  %374 = load i32, i32* @SUM_IN_F, align 4
  %375 = load i32, i32* @CHN_NUM, align 4
  %376 = mul nsw i32 %374, %375
  %377 = add nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.sum*, %struct.sum** %373, i64 %378
  %380 = load %struct.sum*, %struct.sum** %379, align 8
  store %struct.sum* %380, %struct.sum** %3, align 8
  %381 = load %struct.amixer*, %struct.amixer** %4, align 8
  %382 = getelementptr inbounds %struct.amixer, %struct.amixer* %381, i32 0, i32 0
  %383 = load %struct.TYPE_2__*, %struct.TYPE_2__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i32 0, i32 0
  %385 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %384, align 8
  %386 = load %struct.amixer*, %struct.amixer** %4, align 8
  %387 = load i32, i32* @INIT_VOL, align 4
  %388 = load %struct.sum*, %struct.sum** %3, align 8
  %389 = call i32 %385(%struct.amixer* %386, i32* null, i32 %387, %struct.sum* %388)
  %390 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %391 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %390, i32 0, i32 1
  %392 = load %struct.amixer**, %struct.amixer*** %391, align 8
  %393 = load i32, i32* @AMIXER_SPDIFI, align 4
  %394 = load i32, i32* @CHN_NUM, align 4
  %395 = mul nsw i32 %393, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.amixer*, %struct.amixer** %392, i64 %396
  %398 = load %struct.amixer*, %struct.amixer** %397, align 8
  store %struct.amixer* %398, %struct.amixer** %4, align 8
  %399 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %400 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %399, i32 0, i32 0
  %401 = load %struct.sum**, %struct.sum*** %400, align 8
  %402 = load i32, i32* @SUM_IN_F, align 4
  %403 = load i32, i32* @CHN_NUM, align 4
  %404 = mul nsw i32 %402, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.sum*, %struct.sum** %401, i64 %405
  %407 = load %struct.sum*, %struct.sum** %406, align 8
  store %struct.sum* %407, %struct.sum** %3, align 8
  %408 = load %struct.amixer*, %struct.amixer** %4, align 8
  %409 = getelementptr inbounds %struct.amixer, %struct.amixer* %408, i32 0, i32 0
  %410 = load %struct.TYPE_2__*, %struct.TYPE_2__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %410, i32 0, i32 0
  %412 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %411, align 8
  %413 = load %struct.amixer*, %struct.amixer** %4, align 8
  %414 = load i32, i32* @INIT_VOL, align 4
  %415 = load %struct.sum*, %struct.sum** %3, align 8
  %416 = call i32 %412(%struct.amixer* %413, i32* null, i32 %414, %struct.sum* %415)
  %417 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %418 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %417, i32 0, i32 1
  %419 = load %struct.amixer**, %struct.amixer*** %418, align 8
  %420 = load i32, i32* @AMIXER_SPDIFI, align 4
  %421 = load i32, i32* @CHN_NUM, align 4
  %422 = mul nsw i32 %420, %421
  %423 = add nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.amixer*, %struct.amixer** %419, i64 %424
  %426 = load %struct.amixer*, %struct.amixer** %425, align 8
  store %struct.amixer* %426, %struct.amixer** %4, align 8
  %427 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %428 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %427, i32 0, i32 0
  %429 = load %struct.sum**, %struct.sum*** %428, align 8
  %430 = load i32, i32* @SUM_IN_F, align 4
  %431 = load i32, i32* @CHN_NUM, align 4
  %432 = mul nsw i32 %430, %431
  %433 = add nsw i32 %432, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.sum*, %struct.sum** %429, i64 %434
  %436 = load %struct.sum*, %struct.sum** %435, align 8
  store %struct.sum* %436, %struct.sum** %3, align 8
  %437 = load %struct.amixer*, %struct.amixer** %4, align 8
  %438 = getelementptr inbounds %struct.amixer, %struct.amixer* %437, i32 0, i32 0
  %439 = load %struct.TYPE_2__*, %struct.TYPE_2__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i32 0, i32 0
  %441 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %440, align 8
  %442 = load %struct.amixer*, %struct.amixer** %4, align 8
  %443 = load i32, i32* @INIT_VOL, align 4
  %444 = load %struct.sum*, %struct.sum** %3, align 8
  %445 = call i32 %441(%struct.amixer* %442, i32* null, i32 %443, %struct.sum* %444)
  %446 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %447 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %446, i32 0, i32 1
  %448 = load %struct.amixer**, %struct.amixer*** %447, align 8
  %449 = load i32, i32* @AMIXER_MASTER_F_C, align 4
  %450 = load i32, i32* @CHN_NUM, align 4
  %451 = mul nsw i32 %449, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.amixer*, %struct.amixer** %448, i64 %452
  %454 = load %struct.amixer*, %struct.amixer** %453, align 8
  store %struct.amixer* %454, %struct.amixer** %4, align 8
  %455 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %456 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %455, i32 0, i32 0
  %457 = load %struct.sum**, %struct.sum*** %456, align 8
  %458 = load i32, i32* @SUM_IN_F_C, align 4
  %459 = load i32, i32* @CHN_NUM, align 4
  %460 = mul nsw i32 %458, %459
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.sum*, %struct.sum** %457, i64 %461
  %463 = load %struct.sum*, %struct.sum** %462, align 8
  store %struct.sum* %463, %struct.sum** %3, align 8
  %464 = load %struct.amixer*, %struct.amixer** %4, align 8
  %465 = getelementptr inbounds %struct.amixer, %struct.amixer* %464, i32 0, i32 0
  %466 = load %struct.TYPE_2__*, %struct.TYPE_2__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %466, i32 0, i32 0
  %468 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %467, align 8
  %469 = load %struct.amixer*, %struct.amixer** %4, align 8
  %470 = load %struct.sum*, %struct.sum** %3, align 8
  %471 = getelementptr inbounds %struct.sum, %struct.sum* %470, i32 0, i32 0
  %472 = load i32, i32* @INIT_VOL, align 4
  %473 = call i32 %468(%struct.amixer* %469, i32* %471, i32 %472, %struct.sum* null)
  %474 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %475 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %474, i32 0, i32 1
  %476 = load %struct.amixer**, %struct.amixer*** %475, align 8
  %477 = load i32, i32* @AMIXER_MASTER_F_C, align 4
  %478 = load i32, i32* @CHN_NUM, align 4
  %479 = mul nsw i32 %477, %478
  %480 = add nsw i32 %479, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.amixer*, %struct.amixer** %476, i64 %481
  %483 = load %struct.amixer*, %struct.amixer** %482, align 8
  store %struct.amixer* %483, %struct.amixer** %4, align 8
  %484 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %485 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %484, i32 0, i32 0
  %486 = load %struct.sum**, %struct.sum*** %485, align 8
  %487 = load i32, i32* @SUM_IN_F_C, align 4
  %488 = load i32, i32* @CHN_NUM, align 4
  %489 = mul nsw i32 %487, %488
  %490 = add nsw i32 %489, 1
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.sum*, %struct.sum** %486, i64 %491
  %493 = load %struct.sum*, %struct.sum** %492, align 8
  store %struct.sum* %493, %struct.sum** %3, align 8
  %494 = load %struct.amixer*, %struct.amixer** %4, align 8
  %495 = getelementptr inbounds %struct.amixer, %struct.amixer* %494, i32 0, i32 0
  %496 = load %struct.TYPE_2__*, %struct.TYPE_2__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %496, i32 0, i32 0
  %498 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %497, align 8
  %499 = load %struct.amixer*, %struct.amixer** %4, align 8
  %500 = load %struct.sum*, %struct.sum** %3, align 8
  %501 = getelementptr inbounds %struct.sum, %struct.sum* %500, i32 0, i32 0
  %502 = load i32, i32* @INIT_VOL, align 4
  %503 = call i32 %498(%struct.amixer* %499, i32* %501, i32 %502, %struct.sum* null)
  %504 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %505 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %504, i32 0, i32 1
  %506 = load %struct.amixer**, %struct.amixer*** %505, align 8
  %507 = load i32, i32* @AMIXER_PCM_F_C, align 4
  %508 = load i32, i32* @CHN_NUM, align 4
  %509 = mul nsw i32 %507, %508
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.amixer*, %struct.amixer** %506, i64 %510
  %512 = load %struct.amixer*, %struct.amixer** %511, align 8
  store %struct.amixer* %512, %struct.amixer** %4, align 8
  %513 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %514 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %513, i32 0, i32 0
  %515 = load %struct.sum**, %struct.sum*** %514, align 8
  %516 = load i32, i32* @SUM_IN_F_C, align 4
  %517 = load i32, i32* @CHN_NUM, align 4
  %518 = mul nsw i32 %516, %517
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.sum*, %struct.sum** %515, i64 %519
  %521 = load %struct.sum*, %struct.sum** %520, align 8
  store %struct.sum* %521, %struct.sum** %3, align 8
  %522 = load %struct.amixer*, %struct.amixer** %4, align 8
  %523 = getelementptr inbounds %struct.amixer, %struct.amixer* %522, i32 0, i32 0
  %524 = load %struct.TYPE_2__*, %struct.TYPE_2__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %524, i32 0, i32 0
  %526 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %525, align 8
  %527 = load %struct.amixer*, %struct.amixer** %4, align 8
  %528 = load i32, i32* @INIT_VOL, align 4
  %529 = load %struct.sum*, %struct.sum** %3, align 8
  %530 = call i32 %526(%struct.amixer* %527, i32* null, i32 %528, %struct.sum* %529)
  %531 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %532 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %531, i32 0, i32 1
  %533 = load %struct.amixer**, %struct.amixer*** %532, align 8
  %534 = load i32, i32* @AMIXER_PCM_F_C, align 4
  %535 = load i32, i32* @CHN_NUM, align 4
  %536 = mul nsw i32 %534, %535
  %537 = add nsw i32 %536, 1
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.amixer*, %struct.amixer** %533, i64 %538
  %540 = load %struct.amixer*, %struct.amixer** %539, align 8
  store %struct.amixer* %540, %struct.amixer** %4, align 8
  %541 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %542 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %541, i32 0, i32 0
  %543 = load %struct.sum**, %struct.sum*** %542, align 8
  %544 = load i32, i32* @SUM_IN_F_C, align 4
  %545 = load i32, i32* @CHN_NUM, align 4
  %546 = mul nsw i32 %544, %545
  %547 = add nsw i32 %546, 1
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.sum*, %struct.sum** %543, i64 %548
  %550 = load %struct.sum*, %struct.sum** %549, align 8
  store %struct.sum* %550, %struct.sum** %3, align 8
  %551 = load %struct.amixer*, %struct.amixer** %4, align 8
  %552 = getelementptr inbounds %struct.amixer, %struct.amixer* %551, i32 0, i32 0
  %553 = load %struct.TYPE_2__*, %struct.TYPE_2__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %553, i32 0, i32 0
  %555 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %554, align 8
  %556 = load %struct.amixer*, %struct.amixer** %4, align 8
  %557 = load i32, i32* @INIT_VOL, align 4
  %558 = load %struct.sum*, %struct.sum** %3, align 8
  %559 = call i32 %555(%struct.amixer* %556, i32* null, i32 %557, %struct.sum* %558)
  %560 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %561 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %560, i32 0, i32 1
  %562 = load %struct.amixer**, %struct.amixer*** %561, align 8
  %563 = load i32, i32* @AMIXER_LINEIN_C, align 4
  %564 = load i32, i32* @CHN_NUM, align 4
  %565 = mul nsw i32 %563, %564
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.amixer*, %struct.amixer** %562, i64 %566
  %568 = load %struct.amixer*, %struct.amixer** %567, align 8
  store %struct.amixer* %568, %struct.amixer** %4, align 8
  %569 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %570 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %569, i32 0, i32 0
  %571 = load %struct.sum**, %struct.sum*** %570, align 8
  %572 = load i32, i32* @SUM_IN_F_C, align 4
  %573 = load i32, i32* @CHN_NUM, align 4
  %574 = mul nsw i32 %572, %573
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.sum*, %struct.sum** %571, i64 %575
  %577 = load %struct.sum*, %struct.sum** %576, align 8
  store %struct.sum* %577, %struct.sum** %3, align 8
  %578 = load %struct.amixer*, %struct.amixer** %4, align 8
  %579 = getelementptr inbounds %struct.amixer, %struct.amixer* %578, i32 0, i32 0
  %580 = load %struct.TYPE_2__*, %struct.TYPE_2__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %580, i32 0, i32 0
  %582 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %581, align 8
  %583 = load %struct.amixer*, %struct.amixer** %4, align 8
  %584 = load i32, i32* @INIT_VOL, align 4
  %585 = load %struct.sum*, %struct.sum** %3, align 8
  %586 = call i32 %582(%struct.amixer* %583, i32* null, i32 %584, %struct.sum* %585)
  %587 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %588 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %587, i32 0, i32 1
  %589 = load %struct.amixer**, %struct.amixer*** %588, align 8
  %590 = load i32, i32* @AMIXER_LINEIN_C, align 4
  %591 = load i32, i32* @CHN_NUM, align 4
  %592 = mul nsw i32 %590, %591
  %593 = add nsw i32 %592, 1
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.amixer*, %struct.amixer** %589, i64 %594
  %596 = load %struct.amixer*, %struct.amixer** %595, align 8
  store %struct.amixer* %596, %struct.amixer** %4, align 8
  %597 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %598 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %597, i32 0, i32 0
  %599 = load %struct.sum**, %struct.sum*** %598, align 8
  %600 = load i32, i32* @SUM_IN_F_C, align 4
  %601 = load i32, i32* @CHN_NUM, align 4
  %602 = mul nsw i32 %600, %601
  %603 = add nsw i32 %602, 1
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.sum*, %struct.sum** %599, i64 %604
  %606 = load %struct.sum*, %struct.sum** %605, align 8
  store %struct.sum* %606, %struct.sum** %3, align 8
  %607 = load %struct.amixer*, %struct.amixer** %4, align 8
  %608 = getelementptr inbounds %struct.amixer, %struct.amixer* %607, i32 0, i32 0
  %609 = load %struct.TYPE_2__*, %struct.TYPE_2__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %609, i32 0, i32 0
  %611 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %610, align 8
  %612 = load %struct.amixer*, %struct.amixer** %4, align 8
  %613 = load i32, i32* @INIT_VOL, align 4
  %614 = load %struct.sum*, %struct.sum** %3, align 8
  %615 = call i32 %611(%struct.amixer* %612, i32* null, i32 %613, %struct.sum* %614)
  %616 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %617 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %616, i32 0, i32 1
  %618 = load %struct.amixer**, %struct.amixer*** %617, align 8
  %619 = load i32, i32* @AMIXER_MIC_C, align 4
  %620 = load i32, i32* @CHN_NUM, align 4
  %621 = mul nsw i32 %619, %620
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.amixer*, %struct.amixer** %618, i64 %622
  %624 = load %struct.amixer*, %struct.amixer** %623, align 8
  store %struct.amixer* %624, %struct.amixer** %4, align 8
  %625 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %626 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %625, i32 0, i32 0
  %627 = load %struct.sum**, %struct.sum*** %626, align 8
  %628 = load i32, i32* @SUM_IN_F_C, align 4
  %629 = load i32, i32* @CHN_NUM, align 4
  %630 = mul nsw i32 %628, %629
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.sum*, %struct.sum** %627, i64 %631
  %633 = load %struct.sum*, %struct.sum** %632, align 8
  store %struct.sum* %633, %struct.sum** %3, align 8
  %634 = load %struct.amixer*, %struct.amixer** %4, align 8
  %635 = getelementptr inbounds %struct.amixer, %struct.amixer* %634, i32 0, i32 0
  %636 = load %struct.TYPE_2__*, %struct.TYPE_2__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %636, i32 0, i32 0
  %638 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %637, align 8
  %639 = load %struct.amixer*, %struct.amixer** %4, align 8
  %640 = load i32, i32* @INIT_VOL, align 4
  %641 = load %struct.sum*, %struct.sum** %3, align 8
  %642 = call i32 %638(%struct.amixer* %639, i32* null, i32 %640, %struct.sum* %641)
  %643 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %644 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %643, i32 0, i32 1
  %645 = load %struct.amixer**, %struct.amixer*** %644, align 8
  %646 = load i32, i32* @AMIXER_MIC_C, align 4
  %647 = load i32, i32* @CHN_NUM, align 4
  %648 = mul nsw i32 %646, %647
  %649 = add nsw i32 %648, 1
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.amixer*, %struct.amixer** %645, i64 %650
  %652 = load %struct.amixer*, %struct.amixer** %651, align 8
  store %struct.amixer* %652, %struct.amixer** %4, align 8
  %653 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %654 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %653, i32 0, i32 0
  %655 = load %struct.sum**, %struct.sum*** %654, align 8
  %656 = load i32, i32* @SUM_IN_F_C, align 4
  %657 = load i32, i32* @CHN_NUM, align 4
  %658 = mul nsw i32 %656, %657
  %659 = add nsw i32 %658, 1
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds %struct.sum*, %struct.sum** %655, i64 %660
  %662 = load %struct.sum*, %struct.sum** %661, align 8
  store %struct.sum* %662, %struct.sum** %3, align 8
  %663 = load %struct.amixer*, %struct.amixer** %4, align 8
  %664 = getelementptr inbounds %struct.amixer, %struct.amixer* %663, i32 0, i32 0
  %665 = load %struct.TYPE_2__*, %struct.TYPE_2__** %664, align 8
  %666 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %665, i32 0, i32 0
  %667 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %666, align 8
  %668 = load %struct.amixer*, %struct.amixer** %4, align 8
  %669 = load i32, i32* @INIT_VOL, align 4
  %670 = load %struct.sum*, %struct.sum** %3, align 8
  %671 = call i32 %667(%struct.amixer* %668, i32* null, i32 %669, %struct.sum* %670)
  %672 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %673 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %672, i32 0, i32 1
  %674 = load %struct.amixer**, %struct.amixer*** %673, align 8
  %675 = load i32, i32* @AMIXER_SPDIFI_C, align 4
  %676 = load i32, i32* @CHN_NUM, align 4
  %677 = mul nsw i32 %675, %676
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds %struct.amixer*, %struct.amixer** %674, i64 %678
  %680 = load %struct.amixer*, %struct.amixer** %679, align 8
  store %struct.amixer* %680, %struct.amixer** %4, align 8
  %681 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %682 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %681, i32 0, i32 0
  %683 = load %struct.sum**, %struct.sum*** %682, align 8
  %684 = load i32, i32* @SUM_IN_F_C, align 4
  %685 = load i32, i32* @CHN_NUM, align 4
  %686 = mul nsw i32 %684, %685
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.sum*, %struct.sum** %683, i64 %687
  %689 = load %struct.sum*, %struct.sum** %688, align 8
  store %struct.sum* %689, %struct.sum** %3, align 8
  %690 = load %struct.amixer*, %struct.amixer** %4, align 8
  %691 = getelementptr inbounds %struct.amixer, %struct.amixer* %690, i32 0, i32 0
  %692 = load %struct.TYPE_2__*, %struct.TYPE_2__** %691, align 8
  %693 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %692, i32 0, i32 0
  %694 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %693, align 8
  %695 = load %struct.amixer*, %struct.amixer** %4, align 8
  %696 = load i32, i32* @INIT_VOL, align 4
  %697 = load %struct.sum*, %struct.sum** %3, align 8
  %698 = call i32 %694(%struct.amixer* %695, i32* null, i32 %696, %struct.sum* %697)
  %699 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %700 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %699, i32 0, i32 1
  %701 = load %struct.amixer**, %struct.amixer*** %700, align 8
  %702 = load i32, i32* @AMIXER_SPDIFI_C, align 4
  %703 = load i32, i32* @CHN_NUM, align 4
  %704 = mul nsw i32 %702, %703
  %705 = add nsw i32 %704, 1
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.amixer*, %struct.amixer** %701, i64 %706
  %708 = load %struct.amixer*, %struct.amixer** %707, align 8
  store %struct.amixer* %708, %struct.amixer** %4, align 8
  %709 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %710 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %709, i32 0, i32 0
  %711 = load %struct.sum**, %struct.sum*** %710, align 8
  %712 = load i32, i32* @SUM_IN_F_C, align 4
  %713 = load i32, i32* @CHN_NUM, align 4
  %714 = mul nsw i32 %712, %713
  %715 = add nsw i32 %714, 1
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds %struct.sum*, %struct.sum** %711, i64 %716
  %718 = load %struct.sum*, %struct.sum** %717, align 8
  store %struct.sum* %718, %struct.sum** %3, align 8
  %719 = load %struct.amixer*, %struct.amixer** %4, align 8
  %720 = getelementptr inbounds %struct.amixer, %struct.amixer* %719, i32 0, i32 0
  %721 = load %struct.TYPE_2__*, %struct.TYPE_2__** %720, align 8
  %722 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %721, i32 0, i32 0
  %723 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %722, align 8
  %724 = load %struct.amixer*, %struct.amixer** %4, align 8
  %725 = load i32, i32* @INIT_VOL, align 4
  %726 = load %struct.sum*, %struct.sum** %3, align 8
  %727 = call i32 %723(%struct.amixer* %724, i32* null, i32 %725, %struct.sum* %726)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
