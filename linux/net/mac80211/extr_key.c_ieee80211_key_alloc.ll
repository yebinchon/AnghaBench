; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { i32, %struct.TYPE_18__, i64, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32** }
%struct.TYPE_12__ = type { i8*, i32** }
%struct.TYPE_11__ = type { i8*, i32* }
%struct.TYPE_10__ = type { i8*, i32* }
%struct.TYPE_16__ = type { i8*, i32** }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.ieee80211_cipher_scheme = type { i64, i32, i32 }

@NUM_DEFAULT_KEYS = common dso_local global i32 0, align 4
@NUM_DEFAULT_MGMT_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_WEP_IV_LEN = common dso_local global i32 0, align 4
@IEEE80211_WEP_ICV_LEN = common dso_local global i32 0, align 4
@IEEE80211_TKIP_IV_LEN = common dso_local global i32 0, align 4
@IEEE80211_TKIP_ICV_LEN = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@IEEE80211_CCMP_HDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_CCMP_MIC_LEN = common dso_local global i8* null, align 8
@IEEE80211_CCMP_PN_LEN = common dso_local global i32 0, align 4
@IEEE80211_CCMP_256_HDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_CCMP_256_MIC_LEN = common dso_local global i8* null, align 8
@IEEE80211_CCMP_256_PN_LEN = common dso_local global i32 0, align 4
@IEEE80211_CMAC_PN_LEN = common dso_local global i32 0, align 4
@IEEE80211_GMAC_PN_LEN = common dso_local global i32 0, align 4
@IEEE80211_GCMP_HDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_GCMP_MIC_LEN = common dso_local global i32 0, align 4
@IEEE80211_GCMP_PN_LEN = common dso_local global i32 0, align 4
@KEY_FLAG_CIPHER_SCHEME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_key* @ieee80211_key_alloc(i32 %0, i32 %1, i64 %2, i32* %3, i64 %4, i32* %5, %struct.ieee80211_cipher_scheme* %6) #0 {
  %8 = alloca %struct.ieee80211_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ieee80211_cipher_scheme*, align 8
  %16 = alloca %struct.ieee80211_key*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.ieee80211_cipher_scheme* %6, %struct.ieee80211_cipher_scheme** %15, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @NUM_DEFAULT_KEYS, align 4
  %25 = load i32, i32* @NUM_DEFAULT_MGMT_KEYS, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp sge i32 %23, %26
  br label %28

28:                                               ; preds = %22, %7
  %29 = phi i1 [ true, %7 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.ieee80211_key* @ERR_PTR(i32 %35)
  store %struct.ieee80211_key* %36, %struct.ieee80211_key** %8, align 8
  br label %588

37:                                               ; preds = %28
  %38 = load i64, i64* %11, align 8
  %39 = add i64 144, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.ieee80211_key* @kzalloc(i32 %40, i32 %41)
  store %struct.ieee80211_key* %42, %struct.ieee80211_key** %16, align 8
  %43 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %44 = icmp ne %struct.ieee80211_key* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.ieee80211_key* @ERR_PTR(i32 %47)
  store %struct.ieee80211_key* %48, %struct.ieee80211_key** %8, align 8
  br label %588

49:                                               ; preds = %37
  %50 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %51 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %57 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %65 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  store i64 %63, i64* %66, align 8
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %499 [
    i32 128, label %68
    i32 129, label %68
    i32 130, label %77
    i32 134, label %127
    i32 133, label %207
    i32 138, label %288
    i32 137, label %288
    i32 136, label %358
    i32 135, label %358
    i32 132, label %420
    i32 131, label %420
  ]

68:                                               ; preds = %49, %49
  %69 = load i32, i32* @IEEE80211_WEP_IV_LEN, align 4
  %70 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %71 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 5
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @IEEE80211_WEP_ICV_LEN, align 4
  %74 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %75 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 8
  br label %576

77:                                               ; preds = %49
  %78 = load i32, i32* @IEEE80211_TKIP_IV_LEN, align 4
  %79 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %80 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 5
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @IEEE80211_TKIP_ICV_LEN, align 4
  %83 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %84 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %121

88:                                               ; preds = %77
  store i32 0, i32* %17, align 4
  br label %89

89:                                               ; preds = %117, %88
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %89
  %94 = load i32*, i32** %14, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = call i32 @get_unaligned_le32(i32* %95)
  %97 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %98 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  store i32 %96, i32* %105, align 4
  %106 = load i32*, i32** %14, align 8
  %107 = call i32 @get_unaligned_le16(i32* %106)
  %108 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %109 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  store i32 %107, i32* %116, align 4
  br label %117

117:                                              ; preds = %93
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %89

120:                                              ; preds = %89
  br label %121

121:                                              ; preds = %120, %77
  %122 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %123 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = call i32 @spin_lock_init(i32* %125)
  br label %576

127:                                              ; preds = %49
  %128 = load i32, i32* @IEEE80211_CCMP_HDR_LEN, align 4
  %129 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %130 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 5
  store i32 %128, i32* %131, align 8
  %132 = load i8*, i8** @IEEE80211_CCMP_MIC_LEN, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %135 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 3
  store i32 %133, i32* %136, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %179

139:                                              ; preds = %127
  store i32 0, i32* %17, align 4
  br label %140

140:                                              ; preds = %175, %139
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %143 = add nsw i32 %142, 1
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %178

145:                                              ; preds = %140
  store i32 0, i32* %18, align 4
  br label %146

146:                                              ; preds = %171, %145
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %174

150:                                              ; preds = %146
  %151 = load i32*, i32** %14, align 8
  %152 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %153 = load i32, i32* %18, align 4
  %154 = sub nsw i32 %152, %153
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %151, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %160 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %158, i32* %170, align 4
  br label %171

171:                                              ; preds = %150
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %18, align 4
  br label %146

174:                                              ; preds = %146
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %17, align 4
  br label %140

178:                                              ; preds = %140
  br label %179

179:                                              ; preds = %178, %127
  %180 = load i32*, i32** %12, align 8
  %181 = load i64, i64* %11, align 8
  %182 = load i8*, i8** @IEEE80211_CCMP_MIC_LEN, align 8
  %183 = call i8* @ieee80211_aes_key_setup_encrypt(i32* %180, i64 %181, i8* %182)
  %184 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %185 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  store i8* %183, i8** %187, align 8
  %188 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %189 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @IS_ERR(i8* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %179
  %196 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %197 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @PTR_ERR(i8* %200)
  store i32 %201, i32* %19, align 4
  %202 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %203 = call i32 @kfree(%struct.ieee80211_key* %202)
  %204 = load i32, i32* %19, align 4
  %205 = call %struct.ieee80211_key* @ERR_PTR(i32 %204)
  store %struct.ieee80211_key* %205, %struct.ieee80211_key** %8, align 8
  br label %588

206:                                              ; preds = %179
  br label %576

207:                                              ; preds = %49
  %208 = load i32, i32* @IEEE80211_CCMP_256_HDR_LEN, align 4
  %209 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %210 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 5
  store i32 %208, i32* %211, align 8
  %212 = load i8*, i8** @IEEE80211_CCMP_256_MIC_LEN, align 8
  %213 = ptrtoint i8* %212 to i32
  %214 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %215 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 3
  store i32 %213, i32* %216, align 8
  store i32 0, i32* %17, align 4
  br label %217

217:                                              ; preds = %257, %207
  %218 = load i32*, i32** %14, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %223 = add nsw i32 %222, 1
  %224 = icmp slt i32 %221, %223
  br label %225

225:                                              ; preds = %220, %217
  %226 = phi i1 [ false, %217 ], [ %224, %220 ]
  br i1 %226, label %227, label %260

227:                                              ; preds = %225
  store i32 0, i32* %18, align 4
  br label %228

228:                                              ; preds = %253, %227
  %229 = load i32, i32* %18, align 4
  %230 = load i32, i32* @IEEE80211_CCMP_256_PN_LEN, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %256

232:                                              ; preds = %228
  %233 = load i32*, i32** %14, align 8
  %234 = load i32, i32* @IEEE80211_CCMP_256_PN_LEN, align 4
  %235 = load i32, i32* %18, align 4
  %236 = sub nsw i32 %234, %235
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %233, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %242 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %18, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %240, i32* %252, align 4
  br label %253

253:                                              ; preds = %232
  %254 = load i32, i32* %18, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %18, align 4
  br label %228

256:                                              ; preds = %228
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %17, align 4
  br label %217

260:                                              ; preds = %225
  %261 = load i32*, i32** %12, align 8
  %262 = load i64, i64* %11, align 8
  %263 = load i8*, i8** @IEEE80211_CCMP_256_MIC_LEN, align 8
  %264 = call i8* @ieee80211_aes_key_setup_encrypt(i32* %261, i64 %262, i8* %263)
  %265 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %266 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  store i8* %264, i8** %268, align 8
  %269 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %270 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @IS_ERR(i8* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %260
  %277 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %278 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @PTR_ERR(i8* %281)
  store i32 %282, i32* %19, align 4
  %283 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %284 = call i32 @kfree(%struct.ieee80211_key* %283)
  %285 = load i32, i32* %19, align 4
  %286 = call %struct.ieee80211_key* @ERR_PTR(i32 %285)
  store %struct.ieee80211_key* %286, %struct.ieee80211_key** %8, align 8
  br label %588

287:                                              ; preds = %260
  br label %576

288:                                              ; preds = %49, %49
  %289 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %290 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 5
  store i32 0, i32* %291, align 8
  %292 = load i32, i32* %9, align 4
  %293 = icmp eq i32 %292, 138
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %296 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 3
  store i32 4, i32* %297, align 8
  br label %302

298:                                              ; preds = %288
  %299 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %300 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 3
  store i32 4, i32* %301, align 8
  br label %302

302:                                              ; preds = %298, %294
  %303 = load i32*, i32** %14, align 8
  %304 = icmp ne i32* %303, null
  br i1 %304, label %305, label %331

305:                                              ; preds = %302
  store i32 0, i32* %18, align 4
  br label %306

306:                                              ; preds = %327, %305
  %307 = load i32, i32* %18, align 4
  %308 = load i32, i32* @IEEE80211_CMAC_PN_LEN, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %330

310:                                              ; preds = %306
  %311 = load i32*, i32** %14, align 8
  %312 = load i32, i32* @IEEE80211_CMAC_PN_LEN, align 4
  %313 = load i32, i32* %18, align 4
  %314 = sub nsw i32 %312, %313
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %311, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %320 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %18, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %318, i32* %326, align 4
  br label %327

327:                                              ; preds = %310
  %328 = load i32, i32* %18, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %18, align 4
  br label %306

330:                                              ; preds = %306
  br label %331

331:                                              ; preds = %330, %302
  %332 = load i32*, i32** %12, align 8
  %333 = load i64, i64* %11, align 8
  %334 = call i8* @ieee80211_aes_cmac_key_setup(i32* %332, i64 %333)
  %335 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %336 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  store i8* %334, i8** %338, align 8
  %339 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %340 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = call i32 @IS_ERR(i8* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %357

346:                                              ; preds = %331
  %347 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %348 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @PTR_ERR(i8* %351)
  store i32 %352, i32* %19, align 4
  %353 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %354 = call i32 @kfree(%struct.ieee80211_key* %353)
  %355 = load i32, i32* %19, align 4
  %356 = call %struct.ieee80211_key* @ERR_PTR(i32 %355)
  store %struct.ieee80211_key* %356, %struct.ieee80211_key** %8, align 8
  br label %588

357:                                              ; preds = %331
  br label %576

358:                                              ; preds = %49, %49
  %359 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %360 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 5
  store i32 0, i32* %361, align 8
  %362 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %363 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 3
  store i32 4, i32* %364, align 8
  %365 = load i32*, i32** %14, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %367, label %393

367:                                              ; preds = %358
  store i32 0, i32* %18, align 4
  br label %368

368:                                              ; preds = %389, %367
  %369 = load i32, i32* %18, align 4
  %370 = load i32, i32* @IEEE80211_GMAC_PN_LEN, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %392

372:                                              ; preds = %368
  %373 = load i32*, i32** %14, align 8
  %374 = load i32, i32* @IEEE80211_GMAC_PN_LEN, align 4
  %375 = load i32, i32* %18, align 4
  %376 = sub nsw i32 %374, %375
  %377 = sub nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %373, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %382 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %381, i32 0, i32 3
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 1
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %18, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  store i32 %380, i32* %388, align 4
  br label %389

389:                                              ; preds = %372
  %390 = load i32, i32* %18, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %18, align 4
  br label %368

392:                                              ; preds = %368
  br label %393

393:                                              ; preds = %392, %358
  %394 = load i32*, i32** %12, align 8
  %395 = load i64, i64* %11, align 8
  %396 = call i8* @ieee80211_aes_gmac_key_setup(i32* %394, i64 %395)
  %397 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %398 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %397, i32 0, i32 3
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 0
  store i8* %396, i8** %400, align 8
  %401 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %402 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 @IS_ERR(i8* %405)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %419

408:                                              ; preds = %393
  %409 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %410 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i32 0, i32 0
  %413 = load i8*, i8** %412, align 8
  %414 = call i32 @PTR_ERR(i8* %413)
  store i32 %414, i32* %19, align 4
  %415 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %416 = call i32 @kfree(%struct.ieee80211_key* %415)
  %417 = load i32, i32* %19, align 4
  %418 = call %struct.ieee80211_key* @ERR_PTR(i32 %417)
  store %struct.ieee80211_key* %418, %struct.ieee80211_key** %8, align 8
  br label %588

419:                                              ; preds = %393
  br label %576

420:                                              ; preds = %49, %49
  %421 = load i32, i32* @IEEE80211_GCMP_HDR_LEN, align 4
  %422 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %423 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %423, i32 0, i32 5
  store i32 %421, i32* %424, align 8
  %425 = load i32, i32* @IEEE80211_GCMP_MIC_LEN, align 4
  %426 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %427 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 3
  store i32 %425, i32* %428, align 8
  store i32 0, i32* %17, align 4
  br label %429

429:                                              ; preds = %469, %420
  %430 = load i32*, i32** %14, align 8
  %431 = icmp ne i32* %430, null
  br i1 %431, label %432, label %437

432:                                              ; preds = %429
  %433 = load i32, i32* %17, align 4
  %434 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %435 = add nsw i32 %434, 1
  %436 = icmp slt i32 %433, %435
  br label %437

437:                                              ; preds = %432, %429
  %438 = phi i1 [ false, %429 ], [ %436, %432 ]
  br i1 %438, label %439, label %472

439:                                              ; preds = %437
  store i32 0, i32* %18, align 4
  br label %440

440:                                              ; preds = %465, %439
  %441 = load i32, i32* %18, align 4
  %442 = load i32, i32* @IEEE80211_GCMP_PN_LEN, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %444, label %468

444:                                              ; preds = %440
  %445 = load i32*, i32** %14, align 8
  %446 = load i32, i32* @IEEE80211_GCMP_PN_LEN, align 4
  %447 = load i32, i32* %18, align 4
  %448 = sub nsw i32 %446, %447
  %449 = sub nsw i32 %448, 1
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %445, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %454 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %453, i32 0, i32 3
  %455 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 1
  %457 = load i32**, i32*** %456, align 8
  %458 = load i32, i32* %17, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32*, i32** %457, i64 %459
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %18, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  store i32 %452, i32* %464, align 4
  br label %465

465:                                              ; preds = %444
  %466 = load i32, i32* %18, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %18, align 4
  br label %440

468:                                              ; preds = %440
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %17, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %17, align 4
  br label %429

472:                                              ; preds = %437
  %473 = load i32*, i32** %12, align 8
  %474 = load i64, i64* %11, align 8
  %475 = call i8* @ieee80211_aes_gcm_key_setup_encrypt(i32* %473, i64 %474)
  %476 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %477 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %476, i32 0, i32 3
  %478 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 0
  store i8* %475, i8** %479, align 8
  %480 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %481 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %482, i32 0, i32 0
  %484 = load i8*, i8** %483, align 8
  %485 = call i32 @IS_ERR(i8* %484)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %498

487:                                              ; preds = %472
  %488 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %489 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %488, i32 0, i32 3
  %490 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 0
  %492 = load i8*, i8** %491, align 8
  %493 = call i32 @PTR_ERR(i8* %492)
  store i32 %493, i32* %19, align 4
  %494 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %495 = call i32 @kfree(%struct.ieee80211_key* %494)
  %496 = load i32, i32* %19, align 4
  %497 = call %struct.ieee80211_key* @ERR_PTR(i32 %496)
  store %struct.ieee80211_key* %497, %struct.ieee80211_key** %8, align 8
  br label %588

498:                                              ; preds = %472
  br label %576

499:                                              ; preds = %49
  %500 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %15, align 8
  %501 = icmp ne %struct.ieee80211_cipher_scheme* %500, null
  br i1 %501, label %502, label %575

502:                                              ; preds = %499
  %503 = load i64, i64* %13, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %517

505:                                              ; preds = %502
  %506 = load i64, i64* %13, align 8
  %507 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %15, align 8
  %508 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %507, i32 0, i32 0
  %509 = load i64, i64* %508, align 8
  %510 = icmp ne i64 %506, %509
  br i1 %510, label %511, label %517

511:                                              ; preds = %505
  %512 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %513 = call i32 @kfree(%struct.ieee80211_key* %512)
  %514 = load i32, i32* @EINVAL, align 4
  %515 = sub nsw i32 0, %514
  %516 = call %struct.ieee80211_key* @ERR_PTR(i32 %515)
  store %struct.ieee80211_key* %516, %struct.ieee80211_key** %8, align 8
  br label %588

517:                                              ; preds = %505, %502
  %518 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %15, align 8
  %519 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %522 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %522, i32 0, i32 5
  store i32 %520, i32* %523, align 8
  %524 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %15, align 8
  %525 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 8
  %527 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %528 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %527, i32 0, i32 1
  %529 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %528, i32 0, i32 3
  store i32 %526, i32* %529, align 8
  store i32 0, i32* %17, align 4
  br label %530

530:                                              ; preds = %566, %517
  %531 = load i32, i32* %17, align 4
  %532 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %533 = add nsw i32 %532, 1
  %534 = icmp slt i32 %531, %533
  br i1 %534, label %535, label %569

535:                                              ; preds = %530
  store i32 0, i32* %18, align 4
  br label %536

536:                                              ; preds = %562, %535
  %537 = load i32, i32* %18, align 4
  %538 = sext i32 %537 to i64
  %539 = load i64, i64* %13, align 8
  %540 = icmp ult i64 %538, %539
  br i1 %540, label %541, label %565

541:                                              ; preds = %536
  %542 = load i32*, i32** %14, align 8
  %543 = load i64, i64* %13, align 8
  %544 = load i32, i32* %18, align 4
  %545 = sext i32 %544 to i64
  %546 = sub i64 %543, %545
  %547 = sub i64 %546, 1
  %548 = getelementptr inbounds i32, i32* %542, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %551 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %550, i32 0, i32 3
  %552 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %552, i32 0, i32 0
  %554 = load i32**, i32*** %553, align 8
  %555 = load i32, i32* %17, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32*, i32** %554, i64 %556
  %558 = load i32*, i32** %557, align 8
  %559 = load i32, i32* %18, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  store i32 %549, i32* %561, align 4
  br label %562

562:                                              ; preds = %541
  %563 = load i32, i32* %18, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %18, align 4
  br label %536

565:                                              ; preds = %536
  br label %566

566:                                              ; preds = %565
  %567 = load i32, i32* %17, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %17, align 4
  br label %530

569:                                              ; preds = %530
  %570 = load i64, i64* @KEY_FLAG_CIPHER_SCHEME, align 8
  %571 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %572 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %571, i32 0, i32 2
  %573 = load i64, i64* %572, align 8
  %574 = or i64 %573, %570
  store i64 %574, i64* %572, align 8
  br label %575

575:                                              ; preds = %569, %499
  br label %576

576:                                              ; preds = %575, %498, %419, %357, %287, %206, %121, %68
  %577 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %578 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %578, i32 0, i32 4
  %580 = load i32, i32* %579, align 4
  %581 = load i32*, i32** %12, align 8
  %582 = load i64, i64* %11, align 8
  %583 = call i32 @memcpy(i32 %580, i32* %581, i64 %582)
  %584 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %585 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %584, i32 0, i32 0
  %586 = call i32 @INIT_LIST_HEAD(i32* %585)
  %587 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  store %struct.ieee80211_key* %587, %struct.ieee80211_key** %8, align 8
  br label %588

588:                                              ; preds = %576, %511, %487, %408, %346, %276, %195, %45, %33
  %589 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  ret %struct.ieee80211_key* %589
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_key* @ERR_PTR(i32) #1

declare dso_local %struct.ieee80211_key* @kzalloc(i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @ieee80211_aes_key_setup_encrypt(i32*, i64, i8*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @kfree(%struct.ieee80211_key*) #1

declare dso_local i8* @ieee80211_aes_cmac_key_setup(i32*, i64) #1

declare dso_local i8* @ieee80211_aes_gmac_key_setup(i32*, i64) #1

declare dso_local i8* @ieee80211_aes_gcm_key_setup_encrypt(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
