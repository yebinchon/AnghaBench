; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_memalloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_memalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32, i32, i32, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i32, i32, %struct.TYPE_4__, %struct.snd_ymfpci_effect_bank***, %struct.snd_ymfpci_capture_bank***, %struct.snd_ymfpci_playback_bank***, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_4__ = type { i8*, i64, i32 }
%struct.snd_ymfpci_effect_bank = type { i32 }
%struct.snd_ymfpci_capture_bank = type { i32 }
%struct.snd_ymfpci_playback_bank = type { i32 }
%struct.TYPE_3__ = type { i32, i64, %struct.snd_ymfpci_playback_bank* }

@YDSXG_PLAYBACK_VOICES = common dso_local global i32 0, align 4
@YDSXGR_PLAYCTRLSIZE = common dso_local global i32 0, align 4
@YDSXGR_RECCTRLSIZE = common dso_local global i32 0, align 4
@YDSXGR_EFFCTRLSIZE = common dso_local global i32 0, align 4
@YDSXG_DEFAULT_WORK_SIZE = common dso_local global i64 0, align 8
@YDSXG_CAPTURE_VOICES = common dso_local global i32 0, align 4
@YDSXG_EFFECT_VOICES = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YDSXGR_PLAYCTRLBASE = common dso_local global i32 0, align 4
@YDSXGR_RECCTRLBASE = common dso_local global i32 0, align 4
@YDSXGR_EFFCTRLBASE = common dso_local global i32 0, align 4
@YDSXGR_WORKBASE = common dso_local global i32 0, align 4
@YDSXGR_WORKSIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_DEFAULT_CON_SPDIF = common dso_local global i32 0, align 4
@YDSXGR_SPDIFOUTCTRL = common dso_local global i32 0, align 4
@YDSXGR_SPDIFOUTSTATUS = common dso_local global i32 0, align 4
@YDSXGR_SPDIFINCTRL = common dso_local global i32 0, align 4
@YDSXGR_NATIVEDACOUTVOL = common dso_local global i32 0, align 4
@YDSXGR_BUF441OUTVOL = common dso_local global i32 0, align 4
@YDSXGR_ZVOUTVOL = common dso_local global i32 0, align 4
@YDSXGR_SPDIFOUTVOL = common dso_local global i32 0, align 4
@YDSXGR_NATIVEADCINVOL = common dso_local global i32 0, align 4
@YDSXGR_NATIVEDACINVOL = common dso_local global i32 0, align 4
@YDSXGR_PRIADCLOOPVOL = common dso_local global i32 0, align 4
@YDSXGR_LEGACYOUTVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*)* @snd_ymfpci_memalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_memalloc(%struct.snd_ymfpci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ymfpci*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %3, align 8
  %11 = load i32, i32* @YDSXG_PLAYBACK_VOICES, align 4
  %12 = mul nsw i32 4, %11
  %13 = add nsw i32 4, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %16 = load i32, i32* @YDSXGR_PLAYCTRLSIZE, align 4
  %17 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %15, i32 %16)
  %18 = shl i32 %17, 2
  %19 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %20 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %22 = load i32, i32* @YDSXGR_RECCTRLSIZE, align 4
  %23 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %21, i32 %22)
  %24 = shl i32 %23, 2
  %25 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %26 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %28 = load i32, i32* @YDSXGR_EFFCTRLSIZE, align 4
  %29 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %27, i32 %28)
  %30 = shl i32 %29, 2
  %31 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %32 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* @YDSXG_DEFAULT_WORK_SIZE, align 8
  %34 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %35 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @ALIGN(i64 %36, i32 256)
  %38 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %39 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 2
  %42 = load i32, i32* @YDSXG_PLAYBACK_VOICES, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = call i64 @ALIGN(i64 %44, i32 256)
  %46 = add i64 %37, %45
  %47 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %48 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 2
  %51 = load i32, i32* @YDSXG_CAPTURE_VOICES, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = call i64 @ALIGN(i64 %53, i32 256)
  %55 = add i64 %46, %54
  %56 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %57 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  %60 = load i32, i32* @YDSXG_EFFECT_VOICES, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = call i64 @ALIGN(i64 %62, i32 256)
  %64 = add i64 %55, %63
  %65 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %66 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %64, %67
  store i64 %68, i64* %4, align 8
  %69 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %70 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %71 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %70, i32 0, i32 20
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @snd_dma_pci_data(i32 %72)
  %74 = load i64, i64* %4, align 8
  %75 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %76 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %75, i32 0, i32 14
  %77 = call i64 @snd_dma_alloc_pages(i32 %69, i32 %73, i64 %74, %struct.TYPE_4__* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %1
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %409

82:                                               ; preds = %1
  %83 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %84 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %83, i32 0, i32 14
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %9, align 8
  %87 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %88 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %87, i32 0, i32 14
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %10, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @memset(i8* %91, i32 0, i64 %92)
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %96 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %99 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %103 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %102, i32 0, i32 19
  store i32* %101, i32** %103, align 8
  %104 = load i32, i32* @YDSXG_PLAYBACK_VOICES, align 4
  %105 = call i32 @cpu_to_le32(i32 %104)
  %106 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %107 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %106, i32 0, i32 19
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %105, i32* %109, align 4
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @ALIGN(i64 %110, i32 256)
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 %111
  store i8* %113, i8** %9, align 8
  %114 = load i64, i64* %5, align 8
  %115 = call i64 @ALIGN(i64 %114, i32 256)
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %180, %82
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @YDSXG_PLAYBACK_VOICES, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %183

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %125 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %124, i32 0, i32 18
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 %123, i32* %130, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = bitcast i8* %131 to %struct.snd_ymfpci_playback_bank*
  %133 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %134 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %133, i32 0, i32 18
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store %struct.snd_ymfpci_playback_bank* %132, %struct.snd_ymfpci_playback_bank** %139, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %142 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %141, i32 0, i32 18
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i64 %140, i64* %147, align 8
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %176, %122
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %151, label %179

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8
  %153 = bitcast i8* %152 to %struct.snd_ymfpci_playback_bank*
  %154 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %155 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %154, i32 0, i32 17
  %156 = load %struct.snd_ymfpci_playback_bank***, %struct.snd_ymfpci_playback_bank**** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.snd_ymfpci_playback_bank**, %struct.snd_ymfpci_playback_bank*** %156, i64 %158
  %160 = load %struct.snd_ymfpci_playback_bank**, %struct.snd_ymfpci_playback_bank*** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %160, i64 %162
  store %struct.snd_ymfpci_playback_bank* %153, %struct.snd_ymfpci_playback_bank** %163, align 8
  %164 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %165 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8* %169, i8** %9, align 8
  %170 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %171 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %10, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %10, align 8
  br label %176

176:                                              ; preds = %151
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %148

179:                                              ; preds = %148
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %118

183:                                              ; preds = %118
  %184 = load i8*, i8** %9, align 8
  %185 = ptrtoint i8* %184 to i64
  %186 = call i64 @ALIGN(i64 %185, i32 256)
  %187 = inttoptr i64 %186 to i8*
  store i8* %187, i8** %9, align 8
  %188 = load i64, i64* %10, align 8
  %189 = call i64 @ALIGN(i64 %188, i32 256)
  store i64 %189, i64* %10, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %192 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %191, i32 0, i32 6
  store i8* %190, i8** %192, align 8
  %193 = load i64, i64* %10, align 8
  %194 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %195 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %194, i32 0, i32 7
  store i64 %193, i64* %195, align 8
  store i32 0, i32* %6, align 4
  br label %196

196:                                              ; preds = %233, %183
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @YDSXG_CAPTURE_VOICES, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %236

200:                                              ; preds = %196
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %229, %200
  %202 = load i32, i32* %7, align 4
  %203 = icmp slt i32 %202, 2
  br i1 %203, label %204, label %232

204:                                              ; preds = %201
  %205 = load i8*, i8** %9, align 8
  %206 = bitcast i8* %205 to %struct.snd_ymfpci_capture_bank*
  %207 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %208 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %207, i32 0, i32 16
  %209 = load %struct.snd_ymfpci_capture_bank***, %struct.snd_ymfpci_capture_bank**** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.snd_ymfpci_capture_bank**, %struct.snd_ymfpci_capture_bank*** %209, i64 %211
  %213 = load %struct.snd_ymfpci_capture_bank**, %struct.snd_ymfpci_capture_bank*** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.snd_ymfpci_capture_bank*, %struct.snd_ymfpci_capture_bank** %213, i64 %215
  store %struct.snd_ymfpci_capture_bank* %206, %struct.snd_ymfpci_capture_bank** %216, align 8
  %217 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %218 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %9, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %9, align 8
  %223 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %224 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* %10, align 8
  %228 = add i64 %227, %226
  store i64 %228, i64* %10, align 8
  br label %229

229:                                              ; preds = %204
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %7, align 4
  br label %201

232:                                              ; preds = %201
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %196

236:                                              ; preds = %196
  %237 = load i8*, i8** %9, align 8
  %238 = ptrtoint i8* %237 to i64
  %239 = call i64 @ALIGN(i64 %238, i32 256)
  %240 = inttoptr i64 %239 to i8*
  store i8* %240, i8** %9, align 8
  %241 = load i64, i64* %10, align 8
  %242 = call i64 @ALIGN(i64 %241, i32 256)
  store i64 %242, i64* %10, align 8
  %243 = load i8*, i8** %9, align 8
  %244 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %245 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %244, i32 0, i32 8
  store i8* %243, i8** %245, align 8
  %246 = load i64, i64* %10, align 8
  %247 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %248 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %247, i32 0, i32 9
  store i64 %246, i64* %248, align 8
  store i32 0, i32* %6, align 4
  br label %249

249:                                              ; preds = %286, %236
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @YDSXG_EFFECT_VOICES, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %289

253:                                              ; preds = %249
  store i32 0, i32* %7, align 4
  br label %254

254:                                              ; preds = %282, %253
  %255 = load i32, i32* %7, align 4
  %256 = icmp slt i32 %255, 2
  br i1 %256, label %257, label %285

257:                                              ; preds = %254
  %258 = load i8*, i8** %9, align 8
  %259 = bitcast i8* %258 to %struct.snd_ymfpci_effect_bank*
  %260 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %261 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %260, i32 0, i32 15
  %262 = load %struct.snd_ymfpci_effect_bank***, %struct.snd_ymfpci_effect_bank**** %261, align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.snd_ymfpci_effect_bank**, %struct.snd_ymfpci_effect_bank*** %262, i64 %264
  %266 = load %struct.snd_ymfpci_effect_bank**, %struct.snd_ymfpci_effect_bank*** %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.snd_ymfpci_effect_bank*, %struct.snd_ymfpci_effect_bank** %266, i64 %268
  store %struct.snd_ymfpci_effect_bank* %259, %struct.snd_ymfpci_effect_bank** %269, align 8
  %270 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %271 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load i8*, i8** %9, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, i8* %273, i64 %274
  store i8* %275, i8** %9, align 8
  %276 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %277 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* %10, align 8
  %281 = add i64 %280, %279
  store i64 %281, i64* %10, align 8
  br label %282

282:                                              ; preds = %257
  %283 = load i32, i32* %7, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %7, align 4
  br label %254

285:                                              ; preds = %254
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %6, align 4
  br label %249

289:                                              ; preds = %249
  %290 = load i8*, i8** %9, align 8
  %291 = ptrtoint i8* %290 to i64
  %292 = call i64 @ALIGN(i64 %291, i32 256)
  %293 = inttoptr i64 %292 to i8*
  store i8* %293, i8** %9, align 8
  %294 = load i64, i64* %10, align 8
  %295 = call i64 @ALIGN(i64 %294, i32 256)
  store i64 %295, i64* %10, align 8
  %296 = load i8*, i8** %9, align 8
  %297 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %298 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %297, i32 0, i32 10
  store i8* %296, i8** %298, align 8
  %299 = load i64, i64* %10, align 8
  %300 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %301 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %300, i32 0, i32 11
  store i64 %299, i64* %301, align 8
  %302 = load i8*, i8** %9, align 8
  %303 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %304 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds i8, i8* %302, i64 %305
  %307 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %308 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %307, i32 0, i32 14
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %312 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %311, i32 0, i32 14
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %310, i64 %315
  %317 = icmp ne i8* %306, %316
  %318 = zext i1 %317 to i32
  %319 = call i32 @snd_BUG_ON(i32 %318)
  %320 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %321 = load i32, i32* @YDSXGR_PLAYCTRLBASE, align 4
  %322 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %323 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %322, i32 0, i32 5
  %324 = load i64, i64* %323, align 8
  %325 = trunc i64 %324 to i32
  %326 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %320, i32 %321, i32 %325)
  %327 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %328 = load i32, i32* @YDSXGR_RECCTRLBASE, align 4
  %329 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %330 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %329, i32 0, i32 7
  %331 = load i64, i64* %330, align 8
  %332 = trunc i64 %331 to i32
  %333 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %327, i32 %328, i32 %332)
  %334 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %335 = load i32, i32* @YDSXGR_EFFCTRLBASE, align 4
  %336 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %337 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %336, i32 0, i32 9
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %334, i32 %335, i32 %339)
  %341 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %342 = load i32, i32* @YDSXGR_WORKBASE, align 4
  %343 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %344 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %343, i32 0, i32 11
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %341, i32 %342, i32 %346)
  %348 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %349 = load i32, i32* @YDSXGR_WORKSIZE, align 4
  %350 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %351 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %350, i32 0, i32 3
  %352 = load i64, i64* %351, align 8
  %353 = ashr i64 %352, 2
  %354 = trunc i64 %353 to i32
  %355 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %348, i32 %349, i32 %354)
  %356 = load i32, i32* @SNDRV_PCM_DEFAULT_CON_SPDIF, align 4
  %357 = and i32 %356, 65535
  %358 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %359 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %358, i32 0, i32 13
  store i32 %357, i32* %359, align 4
  %360 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %361 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %360, i32 0, i32 12
  store i32 %357, i32* %361, align 8
  %362 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %363 = load i32, i32* @YDSXGR_SPDIFOUTCTRL, align 4
  %364 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %362, i32 %363, i32 0)
  %365 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %366 = load i32, i32* @YDSXGR_SPDIFOUTSTATUS, align 4
  %367 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %368 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %367, i32 0, i32 12
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %365, i32 %366, i32 %369)
  %371 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %372 = load i32, i32* @YDSXGR_SPDIFINCTRL, align 4
  %373 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %371, i32 %372, i32 0)
  store i32 128, i32* %8, align 4
  br label %374

374:                                              ; preds = %381, %289
  %375 = load i32, i32* %8, align 4
  %376 = icmp slt i32 %375, 192
  br i1 %376, label %377, label %384

377:                                              ; preds = %374
  %378 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %379 = load i32, i32* %8, align 4
  %380 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %378, i32 %379, i32 0)
  br label %381

381:                                              ; preds = %377
  %382 = load i32, i32* %8, align 4
  %383 = add nsw i32 %382, 4
  store i32 %383, i32* %8, align 4
  br label %374

384:                                              ; preds = %374
  %385 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %386 = load i32, i32* @YDSXGR_NATIVEDACOUTVOL, align 4
  %387 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %385, i32 %386, i32 1073692671)
  %388 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %389 = load i32, i32* @YDSXGR_BUF441OUTVOL, align 4
  %390 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %388, i32 %389, i32 1073692671)
  %391 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %392 = load i32, i32* @YDSXGR_ZVOUTVOL, align 4
  %393 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %391, i32 %392, i32 1073692671)
  %394 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %395 = load i32, i32* @YDSXGR_SPDIFOUTVOL, align 4
  %396 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %394, i32 %395, i32 1073692671)
  %397 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %398 = load i32, i32* @YDSXGR_NATIVEADCINVOL, align 4
  %399 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %397, i32 %398, i32 1073692671)
  %400 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %401 = load i32, i32* @YDSXGR_NATIVEDACINVOL, align 4
  %402 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %400, i32 %401, i32 1073692671)
  %403 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %404 = load i32, i32* @YDSXGR_PRIADCLOOPVOL, align 4
  %405 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %403, i32 %404, i32 1073692671)
  %406 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %407 = load i32, i32* @YDSXGR_LEGACYOUTVOL, align 4
  %408 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %406, i32 %407, i32 1073692671)
  store i32 0, i32* %2, align 4
  br label %409

409:                                              ; preds = %384, %79
  %410 = load i32, i32* %2, align 4
  ret i32 %410
}

declare dso_local i32 @snd_ymfpci_readl(%struct.snd_ymfpci*, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @snd_ymfpci_writew(%struct.snd_ymfpci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
