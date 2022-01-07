; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_gro_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_gro_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i8*, %struct.sk_buff*, i32, i64 }
%struct.skb_shared_info = type { i32, %struct.sk_buff*, i32* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.sk_buff*, i32, i64 }

@E2BIG = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@NAPI_GRO_FREE = common dso_local global i32 0, align 4
@NAPI_GRO_FREE_STOLEN_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_gro_receive(%struct.sk_buff* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.skb_shared_info*, align 8
  %7 = alloca %struct.skb_shared_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %23)
  store %struct.skb_shared_info* %24, %struct.skb_shared_info** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @skb_gro_offset(%struct.sk_buff* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @skb_headlen(%struct.sk_buff* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @skb_gro_len(%struct.sk_buff* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %33, %34
  %36 = icmp uge i32 %35, 65536
  br i1 %36, label %43, label %37

37:                                               ; preds = %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %37, %2
  %44 = phi i1 [ true, %2 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @E2BIG, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %332

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %12, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %56)
  store %struct.skb_shared_info* %57, %struct.skb_shared_info** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ule i32 %58, %59
  br i1 %60, label %61, label %139

61:                                               ; preds = %51
  %62 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %63 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %15, align 4
  %65 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %66 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %224

74:                                               ; preds = %61
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %80 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %82 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %84 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32* %88, i32** %13, align 8
  %89 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %90 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32* %94, i32** %14, align 8
  br label %95

95:                                               ; preds = %101, %74
  %96 = load i32*, i32** %14, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 -1
  store i32* %97, i32** %14, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 -1
  store i32* %100, i32** %13, align 8
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %95, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @skb_frag_off_add(i32* %106, i32 %107)
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @skb_frag_size_sub(i32* %109, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i32 @skb_end_offset(%struct.sk_buff* %115)
  %117 = call i32 @SKB_TRUESIZE(i32 %116)
  %118 = sub i32 %114, %117
  store i32 %118, i32* %11, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 2
  store i32 0, i32* %134, align 8
  %135 = load i32, i32* @NAPI_GRO_FREE, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %136)
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 8
  br label %288

139:                                              ; preds = %51
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %222

144:                                              ; preds = %139
  %145 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %146 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %17, align 4
  %148 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %149 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32* %153, i32** %18, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call %struct.page* @virt_to_head_page(i32 %156)
  store %struct.page* %157, %struct.page** %19, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = sub i32 %158, %159
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  %163 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %164 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %162, %165
  %167 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %144
  br label %224

170:                                              ; preds = %144
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.page*, %struct.page** %19, align 8
  %175 = call i64 @page_address(%struct.page* %174)
  %176 = inttoptr i64 %175 to i8*
  %177 = ptrtoint i8* %173 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = load i32, i32* %8, align 4
  %181 = zext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %21, align 4
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  %186 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %187 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %185, %188
  %190 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %191 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load i32*, i32** %18, align 8
  %193 = load %struct.page*, %struct.page** %19, align 8
  %194 = call i32 @__skb_frag_set_page(i32* %192, %struct.page* %193)
  %195 = load i32*, i32** %18, align 8
  %196 = load i32, i32* %21, align 4
  %197 = call i32 @skb_frag_off_set(i32* %195, i32 %196)
  %198 = load i32*, i32** %18, align 8
  %199 = load i32, i32* %20, align 4
  %200 = call i32 @skb_frag_size_set(i32* %198, i32 %199)
  %201 = load i32*, i32** %18, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %204 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %207 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = mul i64 4, %209
  %211 = trunc i64 %210 to i32
  %212 = call i32 @memcpy(i32* %202, i32* %205, i32 %211)
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @SKB_DATA_ALIGN(i32 48)
  %217 = sub i32 %215, %216
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* @NAPI_GRO_FREE_STOLEN_HEAD, align 4
  %219 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %220 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %219)
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 3
  store i32 %218, i32* %221, align 8
  br label %288

222:                                              ; preds = %139
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223, %169, %73
  %225 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ugt i32 %228, %229
  br i1 %230, label %231, label %258

231:                                              ; preds = %224
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %9, align 4
  %234 = sub i32 %232, %233
  store i32 %234, i32* %22, align 4
  %235 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %236 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %22, align 4
  %240 = call i32 @skb_frag_off_add(i32* %238, i32 %239)
  %241 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %242 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %22, align 4
  %246 = call i32 @skb_frag_size_sub(i32* %244, i32 %245)
  %247 = load i32, i32* %22, align 4
  %248 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %249 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = sub i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load i32, i32* %22, align 4
  %253 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %254 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = sub i32 %255, %252
  store i32 %256, i32* %254, align 8
  %257 = load i32, i32* %9, align 4
  store i32 %257, i32* %8, align 4
  br label %258

258:                                              ; preds = %231, %224
  %259 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @__skb_pull(%struct.sk_buff* %259, i32 %260)
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %262)
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 2
  %265 = load %struct.sk_buff*, %struct.sk_buff** %264, align 8
  %266 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %267 = icmp eq %struct.sk_buff* %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %258
  %269 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %270 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %271 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %270)
  %272 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %271, i32 0, i32 1
  store %struct.sk_buff* %269, %struct.sk_buff** %272, align 8
  br label %280

273:                                              ; preds = %258
  %274 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %275 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %276 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %275)
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 2
  %278 = load %struct.sk_buff*, %struct.sk_buff** %277, align 8
  %279 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %278, i32 0, i32 4
  store %struct.sk_buff* %274, %struct.sk_buff** %279, align 8
  br label %280

280:                                              ; preds = %273, %268
  %281 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %282 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %283 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %282)
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 2
  store %struct.sk_buff* %281, %struct.sk_buff** %284, align 8
  %285 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %286 = call i32 @__skb_header_release(%struct.sk_buff* %285)
  %287 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %287, %struct.sk_buff** %12, align 8
  br label %288

288:                                              ; preds = %280, %170, %105
  %289 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %290 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %289)
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  %294 = load i32, i32* %10, align 4
  %295 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %296 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = add i32 %297, %294
  store i32 %298, i32* %296, align 8
  %299 = load i32, i32* %11, align 4
  %300 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %301 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = add i32 %302, %299
  store i32 %303, i32* %301, align 4
  %304 = load i32, i32* %10, align 4
  %305 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %306 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = add i32 %307, %304
  store i32 %308, i32* %306, align 8
  %309 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %310 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %311 = icmp ne %struct.sk_buff* %309, %310
  br i1 %311, label %312, label %328

312:                                              ; preds = %288
  %313 = load i32, i32* %10, align 4
  %314 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %315 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = add i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load i32, i32* %11, align 4
  %319 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %320 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = add i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* %10, align 4
  %324 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %325 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = add i32 %326, %323
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %312, %288
  %329 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %330 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %329)
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  store i32 1, i32* %331, align 8
  store i32 0, i32* %3, align 4
  br label %332

332:                                              ; preds = %328, %48
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_gro_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_gro_len(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_off_add(i32*, i32) #1

declare dso_local i32 @skb_frag_size_sub(i32*, i32) #1

declare dso_local i32 @SKB_TRUESIZE(i32) #1

declare dso_local i32 @skb_end_offset(%struct.sk_buff*) #1

declare dso_local %struct.page* @virt_to_head_page(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @__skb_frag_set_page(i32*, %struct.page*) #1

declare dso_local i32 @skb_frag_off_set(i32*, i32) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_header_release(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
