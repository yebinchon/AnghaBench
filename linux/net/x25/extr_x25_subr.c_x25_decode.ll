; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i8* }
%struct.x25_sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@X25_ILLEGAL = common dso_local global i32 0, align 4
@X25_RR = common dso_local global i8 0, align 1
@X25_RNR = common dso_local global i8 0, align 1
@X25_REJ = common dso_local global i8 0, align 1
@X25_EXT_MIN_LEN = common dso_local global i32 0, align 4
@X25_DATA = common dso_local global i8 0, align 1
@X25_Q_BIT = common dso_local global i8 0, align 1
@X25_D_BIT = common dso_local global i8 0, align 1
@X25_EXT_M_BIT = common dso_local global i8 0, align 1
@X25_STD_M_BIT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [24 x i8] c"invalid PLP frame %3ph\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_decode(%struct.sock* %0, %struct.sk_buff* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.x25_sock*, align 8
  %17 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call %struct.x25_sock* @x25_sk(%struct.sock* %18)
  store %struct.x25_sock* %19, %struct.x25_sock** %16, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %22 = call i32 @pskb_may_pull(%struct.sk_buff* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @X25_ILLEGAL, align 4
  store i32 %25, i32* %8, align 4
  br label %286

26:                                               ; preds = %7
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %17, align 8
  %30 = load i32*, i32** %15, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %14, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %13, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %12, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %11, align 8
  store i32 0, i32* %34, align 4
  %35 = load i8*, i8** %17, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  switch i32 %38, label %44 [
    i32 139, label %39
    i32 140, label %39
    i32 137, label %39
    i32 138, label %39
    i32 135, label %39
    i32 134, label %39
    i32 130, label %39
    i32 131, label %39
    i32 128, label %39
    i32 129, label %39
    i32 132, label %39
    i32 133, label %39
    i32 136, label %39
  ]

39:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %40 = load i8*, i8** %17, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %8, align 4
  br label %286

44:                                               ; preds = %26
  %45 = load %struct.x25_sock*, %struct.x25_sock** %16, align 8
  %46 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %44
  %52 = load i8*, i8** %17, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @X25_RR, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %75, label %59

59:                                               ; preds = %51
  %60 = load i8*, i8** %17, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @X25_RNR, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load i8*, i8** %17, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @X25_REJ, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %67, %59, %51
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = load i32, i32* @X25_EXT_MIN_LEN, align 4
  %78 = call i32 @pskb_may_pull(%struct.sk_buff* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @X25_ILLEGAL, align 4
  store i32 %81, i32* %8, align 4
  br label %286

82:                                               ; preds = %75
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %17, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %89, 1
  %91 = and i32 %90, 127
  %92 = load i32*, i32** %12, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i8*, i8** %17, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %8, align 4
  br label %286

97:                                               ; preds = %67
  br label %139

98:                                               ; preds = %44
  %99 = load i8*, i8** %17, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 31
  %104 = load i8, i8* @X25_RR, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %125, label %107

107:                                              ; preds = %98
  %108 = load i8*, i8** %17, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 31
  %113 = load i8, i8* @X25_RNR, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %125, label %116

116:                                              ; preds = %107
  %117 = load i8*, i8** %17, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 31
  %122 = load i8, i8* @X25_REJ, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %116, %107, %98
  %126 = load i8*, i8** %17, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = ashr i32 %129, 5
  %131 = and i32 %130, 7
  %132 = load i32*, i32** %12, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i8*, i8** %17, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %136, 31
  store i32 %137, i32* %8, align 4
  br label %286

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138, %97
  %140 = load %struct.x25_sock*, %struct.x25_sock** %16, align 8
  %141 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %219

146:                                              ; preds = %139
  %147 = load i8*, i8** %17, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 1
  %152 = load i8, i8* @X25_DATA, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %218

155:                                              ; preds = %146
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = load i32, i32* @X25_EXT_MIN_LEN, align 4
  %158 = call i32 @pskb_may_pull(%struct.sk_buff* %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* @X25_ILLEGAL, align 4
  store i32 %161, i32* %8, align 4
  br label %286

162:                                              ; preds = %155
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %17, align 8
  %166 = load i8*, i8** %17, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load i8, i8* @X25_Q_BIT, align 1
  %171 = zext i8 %170 to i32
  %172 = and i32 %169, %171
  %173 = load i8, i8* @X25_Q_BIT, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %172, %174
  %176 = zext i1 %175 to i32
  %177 = load i32*, i32** %13, align 8
  store i32 %176, i32* %177, align 4
  %178 = load i8*, i8** %17, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8, i8* @X25_D_BIT, align 1
  %183 = zext i8 %182 to i32
  %184 = and i32 %181, %183
  %185 = load i8, i8* @X25_D_BIT, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %184, %186
  %188 = zext i1 %187 to i32
  %189 = load i32*, i32** %14, align 8
  store i32 %188, i32* %189, align 4
  %190 = load i8*, i8** %17, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 3
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = load i8, i8* @X25_EXT_M_BIT, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %193, %195
  %197 = load i8, i8* @X25_EXT_M_BIT, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i32 %196, %198
  %200 = zext i1 %199 to i32
  %201 = load i32*, i32** %15, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i8*, i8** %17, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 3
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = ashr i32 %205, 1
  %207 = and i32 %206, 127
  %208 = load i32*, i32** %12, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i8*, i8** %17, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = ashr i32 %212, 1
  %214 = and i32 %213, 127
  %215 = load i32*, i32** %11, align 8
  store i32 %214, i32* %215, align 4
  %216 = load i8, i8* @X25_DATA, align 1
  %217 = zext i8 %216 to i32
  store i32 %217, i32* %8, align 4
  br label %286

218:                                              ; preds = %146
  br label %282

219:                                              ; preds = %139
  %220 = load i8*, i8** %17, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 2
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = and i32 %223, 1
  %225 = load i8, i8* @X25_DATA, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %224, %226
  br i1 %227, label %228, label %281

228:                                              ; preds = %219
  %229 = load i8*, i8** %17, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 0
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = load i8, i8* @X25_Q_BIT, align 1
  %234 = zext i8 %233 to i32
  %235 = and i32 %232, %234
  %236 = load i8, i8* @X25_Q_BIT, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %235, %237
  %239 = zext i1 %238 to i32
  %240 = load i32*, i32** %13, align 8
  store i32 %239, i32* %240, align 4
  %241 = load i8*, i8** %17, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = load i8, i8* @X25_D_BIT, align 1
  %246 = zext i8 %245 to i32
  %247 = and i32 %244, %246
  %248 = load i8, i8* @X25_D_BIT, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp eq i32 %247, %249
  %251 = zext i1 %250 to i32
  %252 = load i32*, i32** %14, align 8
  store i32 %251, i32* %252, align 4
  %253 = load i8*, i8** %17, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 2
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = load i8, i8* @X25_STD_M_BIT, align 1
  %258 = zext i8 %257 to i32
  %259 = and i32 %256, %258
  %260 = load i8, i8* @X25_STD_M_BIT, align 1
  %261 = zext i8 %260 to i32
  %262 = icmp eq i32 %259, %261
  %263 = zext i1 %262 to i32
  %264 = load i32*, i32** %15, align 8
  store i32 %263, i32* %264, align 4
  %265 = load i8*, i8** %17, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 2
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = ashr i32 %268, 5
  %270 = and i32 %269, 7
  %271 = load i32*, i32** %12, align 8
  store i32 %270, i32* %271, align 4
  %272 = load i8*, i8** %17, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 2
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = ashr i32 %275, 1
  %277 = and i32 %276, 7
  %278 = load i32*, i32** %11, align 8
  store i32 %277, i32* %278, align 4
  %279 = load i8, i8* @X25_DATA, align 1
  %280 = zext i8 %279 to i32
  store i32 %280, i32* %8, align 4
  br label %286

281:                                              ; preds = %219
  br label %282

282:                                              ; preds = %281, %218
  %283 = load i8*, i8** %17, align 8
  %284 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %283)
  %285 = load i32, i32* @X25_ILLEGAL, align 4
  store i32 %285, i32* %8, align 4
  br label %286

286:                                              ; preds = %282, %228, %162, %160, %125, %82, %80, %39, %24
  %287 = load i32, i32* %8, align 4
  ret i32 %287
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
