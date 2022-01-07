; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_shift.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i32, i32* }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_shift(%struct.sk_buff* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i64 @skb_headlen(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %309

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i64 @skb_zcopy(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i64 @skb_zcopy(%struct.sk_buff* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  store i32 0, i32* %4, align 4
  br label %309

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %8, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %12, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %34
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @skb_frag_page(i32* %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @skb_frag_off(i32* %54)
  %56 = call i32 @skb_can_coalesce(%struct.sk_buff* %50, i32 %51, i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49, %34
  store i32 -1, i32* %10, align 4
  br label %104

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @skb_frag_size(i32* %62)
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i64 @skb_prepare_for_shift(%struct.sk_buff* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i64 @skb_prepare_for_shift(%struct.sk_buff* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  store i32 0, i32* %4, align 4
  br label %309

77:                                               ; preds = %72
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32* %84, i32** %12, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32* %91, i32** %13, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @skb_frag_size_add(i32* %92, i32 %93)
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @skb_frag_size_sub(i32* %95, i32 %96)
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @skb_frag_off_add(i32* %98, i32 %99)
  br label %271

101:                                              ; preds = %59
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %101, %58
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %117, %118
  %120 = icmp sgt i32 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %309

122:                                              ; preds = %110, %104
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = call i64 @skb_prepare_for_shift(%struct.sk_buff* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call i64 @skb_prepare_for_shift(%struct.sk_buff* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126, %122
  store i32 0, i32* %4, align 4
  br label %309

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %200, %131
  %133 = load i32, i32* %11, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %137)
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %136, %140
  br label %142

142:                                              ; preds = %135, %132
  %143 = phi i1 [ false, %132 ], [ %141, %135 ]
  br i1 %143, label %144, label %201

144:                                              ; preds = %142
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %309

149:                                              ; preds = %144
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %150)
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32* %156, i32** %12, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %157)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32* %163, i32** %13, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = call i32 @skb_frag_size(i32* %165)
  %167 = icmp sge i32 %164, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %149
  %169 = load i32*, i32** %12, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %13, align 8
  store i32 %170, i32* %171, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @skb_frag_size(i32* %172)
  %174 = load i32, i32* %11, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %200

180:                                              ; preds = %149
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 @__skb_frag_ref(i32* %181)
  %183 = load i32*, i32** %13, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = call i32 @skb_frag_page_copy(i32* %183, i32* %184)
  %186 = load i32*, i32** %13, align 8
  %187 = load i32*, i32** %12, align 8
  %188 = call i32 @skb_frag_off_copy(i32* %186, i32* %187)
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @skb_frag_size_set(i32* %189, i32 %190)
  %192 = load i32*, i32** %12, align 8
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @skb_frag_off_add(i32* %192, i32 %193)
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @skb_frag_size_sub(i32* %195, i32 %196)
  store i32 0, i32* %11, align 4
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %201

200:                                              ; preds = %168
  br label %132

201:                                              ; preds = %180, %142
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %203)
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 8
  %206 = load i32, i32* %10, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %201
  %209 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %210 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %209)
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32* %213, i32** %12, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %215 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %214)
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32* %220, i32** %13, align 8
  %221 = load i32*, i32** %13, align 8
  %222 = load i32*, i32** %12, align 8
  %223 = call i32 @skb_frag_size(i32* %222)
  %224 = call i32 @skb_frag_size_add(i32* %221, i32 %223)
  %225 = load i32*, i32** %12, align 8
  %226 = call i32 @__skb_frag_unref(i32* %225)
  br label %227

227:                                              ; preds = %208, %201
  store i32 0, i32* %9, align 4
  br label %228

228:                                              ; preds = %235, %227
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %231 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %230)
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %229, %233
  br i1 %234, label %235, label %253

235:                                              ; preds = %228
  %236 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %237 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %236)
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %246 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %245)
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  store i32 %244, i32* %252, align 4
  br label %228

253:                                              ; preds = %228
  %254 = load i32, i32* %9, align 4
  %255 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %256 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %255)
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 8
  %258 = load i32, i32* %11, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %253
  %261 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %262 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %261)
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  br label %267

267:                                              ; preds = %260, %253
  %268 = phi i1 [ false, %253 ], [ %266, %260 ]
  %269 = zext i1 %268 to i32
  %270 = call i32 @BUG_ON(i32 %269)
  br label %271

271:                                              ; preds = %267, %77
  %272 = load i8*, i8** @CHECKSUM_PARTIAL, align 8
  %273 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %274 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %273, i32 0, i32 3
  store i8* %272, i8** %274, align 8
  %275 = load i8*, i8** @CHECKSUM_PARTIAL, align 8
  %276 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %277 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %276, i32 0, i32 3
  store i8* %275, i8** %277, align 8
  %278 = load i32, i32* %7, align 4
  %279 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %280 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sub nsw i32 %281, %278
  store i32 %282, i32* %280, align 8
  %283 = load i32, i32* %7, align 4
  %284 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %285 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %286, %283
  store i32 %287, i32* %285, align 4
  %288 = load i32, i32* %7, align 4
  %289 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %290 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = sub nsw i32 %291, %288
  store i32 %292, i32* %290, align 8
  %293 = load i32, i32* %7, align 4
  %294 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %295 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, %293
  store i32 %297, i32* %295, align 8
  %298 = load i32, i32* %7, align 4
  %299 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %300 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, %298
  store i32 %302, i32* %300, align 4
  %303 = load i32, i32* %7, align 4
  %304 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %305 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, %303
  store i32 %307, i32* %305, align 8
  %308 = load i32, i32* %7, align 4
  store i32 %308, i32* %4, align 4
  br label %309

309:                                              ; preds = %271, %148, %130, %121, %76, %33, %24
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_zcopy(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_can_coalesce(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_prepare_for_shift(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size_add(i32*, i32) #1

declare dso_local i32 @skb_frag_size_sub(i32*, i32) #1

declare dso_local i32 @skb_frag_off_add(i32*, i32) #1

declare dso_local i32 @__skb_frag_ref(i32*) #1

declare dso_local i32 @skb_frag_page_copy(i32*, i32*) #1

declare dso_local i32 @skb_frag_off_copy(i32*, i32*) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

declare dso_local i32 @__skb_frag_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
