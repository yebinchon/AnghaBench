; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___pskb_pull_tail.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___pskb_pull_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i64, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32, i32*, %struct.sk_buff* }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__pskb_pull_tail(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %17, %18
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i64 @skb_cloned(%struct.sk_buff* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26, %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 128
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call i64 @pskb_expand_head(%struct.sk_buff* %31, i32 0, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8* null, i8** %3, align 8
  br label %264

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @skb_headlen(%struct.sk_buff* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i8* @skb_tail_pointer(%struct.sk_buff* %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @skb_copy_bits(%struct.sk_buff* %46, i32 %48, i8* %50, i32 %51)
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @skb_has_frag_list(%struct.sk_buff* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  br label %172

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %84, %58
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @skb_frag_size(i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %172

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %60

87:                                               ; preds = %60
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %171

90:                                               ; preds = %87
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load %struct.sk_buff*, %struct.sk_buff** %93, align 8
  store %struct.sk_buff* %94, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  br label %95

95:                                               ; preds = %139, %90
  %96 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %108, align 8
  store %struct.sk_buff* %109, %struct.sk_buff** %10, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %110, %struct.sk_buff** %12, align 8
  br label %138

111:                                              ; preds = %95
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = call i64 @skb_shared(%struct.sk_buff* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = load i32, i32* @GFP_ATOMIC, align 4
  %118 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %116, i32 %117)
  store %struct.sk_buff* %118, %struct.sk_buff** %11, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %120 = icmp ne %struct.sk_buff* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  store i8* null, i8** %3, align 8
  br label %264

122:                                              ; preds = %115
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %124, align 8
  store %struct.sk_buff* %125, %struct.sk_buff** %12, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %126, %struct.sk_buff** %10, align 8
  br label %129

127:                                              ; preds = %111
  %128 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %128, %struct.sk_buff** %12, align 8
  br label %129

129:                                              ; preds = %127, %122
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @pskb_pull(%struct.sk_buff* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = call i32 @kfree_skb(%struct.sk_buff* %135)
  store i8* null, i8** %3, align 8
  br label %264

137:                                              ; preds = %129
  br label %142

138:                                              ; preds = %101
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %95, label %142

142:                                              ; preds = %139, %137
  br label %143

143:                                              ; preds = %150, %142
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load %struct.sk_buff*, %struct.sk_buff** %146, align 8
  store %struct.sk_buff* %147, %struct.sk_buff** %10, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = icmp ne %struct.sk_buff* %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %143
  %151 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %152, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %154)
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  store %struct.sk_buff* %153, %struct.sk_buff** %156, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %158 = call i32 @kfree_skb(%struct.sk_buff* %157)
  br label %143

159:                                              ; preds = %143
  %160 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %161 = icmp ne %struct.sk_buff* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 4
  store %struct.sk_buff* %163, %struct.sk_buff** %165, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %168 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %167)
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  store %struct.sk_buff* %166, %struct.sk_buff** %169, align 8
  br label %170

170:                                              ; preds = %162, %159
  br label %171

171:                                              ; preds = %170, %87
  br label %172

172:                                              ; preds = %171, %79, %57
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %234, %172
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %176)
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %175, %179
  br i1 %180, label %181, label %237

181:                                              ; preds = %174
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %182)
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = call i32 @skb_frag_size(i32* %188)
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %181
  %194 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @skb_frag_unref(%struct.sk_buff* %194, i32 %195)
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %8, align 4
  %199 = sub nsw i32 %198, %197
  store i32 %199, i32* %8, align 4
  br label %233

200:                                              ; preds = %181
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %202 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %201)
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32* %207, i32** %14, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %209 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %208)
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %14, align 8
  store i32 %215, i32* %216, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %200
  %220 = load i32*, i32** %14, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @skb_frag_off_add(i32* %220, i32 %221)
  %223 = load i32*, i32** %14, align 8
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @skb_frag_size_sub(i32* %223, i32 %224)
  %226 = load i32, i32* %6, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %219
  br label %242

229:                                              ; preds = %219
  store i32 0, i32* %8, align 4
  br label %230

230:                                              ; preds = %229, %200
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %233

233:                                              ; preds = %230, %193
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  br label %174

237:                                              ; preds = %174
  %238 = load i32, i32* %7, align 4
  %239 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %240 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %239)
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  br label %242

242:                                              ; preds = %237, %228
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %251 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = sub nsw i64 %252, %249
  store i64 %253, i64* %251, align 8
  %254 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %242
  %259 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %260 = call i32 @skb_zcopy_clear(%struct.sk_buff* %259, i32 0)
  br label %261

261:                                              ; preds = %258, %242
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = call i8* @skb_tail_pointer(%struct.sk_buff* %262)
  store i8* %263, i8** %3, align 8
  br label %264

264:                                              ; preds = %261, %134, %121, %43
  %265 = load i8*, i8** %3, align 8
  ret i8* %265
}

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_unref(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_frag_off_add(i32*, i32) #1

declare dso_local i32 @skb_frag_size_sub(i32*, i32) #1

declare dso_local i32 @skb_zcopy_clear(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
