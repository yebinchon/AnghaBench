; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_radiotap.c_ieee80211_radiotap_iterator_next.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_radiotap.c_ieee80211_radiotap_iterator_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee80211_radiotap_iterator = type { i32, i32, i32*, i32*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__*, i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@radiotap_ns = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_radiotap_iterator_next(%struct.ieee80211_radiotap_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_radiotap_iterator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_radiotap_iterator* %0, %struct.ieee80211_radiotap_iterator** %3, align 8
  br label %11

11:                                               ; preds = %1, %304
  store i32 0, i32* %4, align 4
  %12 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = srem i32 %14, 32
  %16 = icmp eq i32 %15, 130
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %305

26:                                               ; preds = %17, %11
  %27 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %291

33:                                               ; preds = %26
  %34 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = srem i32 %36, 32
  switch i32 %37, label %40 [
    i32 129, label %38
    i32 130, label %38
    i32 128, label %39
  ]

38:                                               ; preds = %33, %33
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %101

39:                                               ; preds = %33
  store i32 2, i32* %6, align 4
  store i32 6, i32* %7, align 4
  br label %101

40:                                               ; preds = %33
  %41 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %41, i32 0, i32 10
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %49, i32 0, i32 10
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %48, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %45, %40
  %56 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %56, i32 0, i32 10
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp eq %struct.TYPE_4__* %58, @radiotap_ns
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %305

63:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %89

64:                                               ; preds = %45
  %65 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %65, i32 0, i32 10
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %71 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  %77 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %78 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %77, i32 0, i32 10
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %83 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %64, %63
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %94 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %97 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %96, i32 0, i32 2
  store i32* %95, i32** %97, align 8
  %98 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %98, i32 0, i32 10
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %99, align 8
  br label %291

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %39, %38
  %102 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %103 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = ptrtoint i32* %104 to i64
  %106 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %107 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %106, i32 0, i32 12
  %108 = load i64, i64* %107, align 8
  %109 = sub i64 %105, %108
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = and i64 %109, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %101
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %5, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %122 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = sext i32 %120 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %122, align 8
  br label %126

126:                                              ; preds = %117, %101
  %127 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %128 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = srem i32 %129, 32
  %131 = icmp eq i32 %130, 128
  br i1 %131, label %132, label %204

132:                                              ; preds = %126
  %133 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %134 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = ptrtoint i32* %135 to i64
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %136, %138
  %140 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %141 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %140, i32 0, i32 12
  %142 = load i64, i64* %141, align 8
  %143 = sub i64 %139, %142
  %144 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %145 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %144, i32 0, i32 11
  %146 = load i64, i64* %145, align 8
  %147 = icmp ugt i64 %143, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %132
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %305

151:                                              ; preds = %132
  %152 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %153 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 16
  %157 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %158 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 8
  %163 = or i32 %156, %162
  %164 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %165 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %163, %168
  store i32 %169, i32* %9, align 4
  %170 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %171 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 3
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %8, align 4
  %175 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @find_ns(%struct.ieee80211_radiotap_iterator* %175, i32 %176, i32 %177)
  %179 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %180 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 4
  %183 = call i32 @get_unaligned_le16(i32* %182)
  store i32 %183, i32* %10, align 4
  %184 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %185 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %194 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %193, i32 0, i32 3
  store i32* %192, i32** %194, align 8
  %195 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %196 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %195, i32 0, i32 10
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = icmp ne %struct.TYPE_4__* %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %151
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %199, %151
  br label %204

204:                                              ; preds = %203, %126
  %205 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %206 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %209 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  %210 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %211 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %214 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %213, i32 0, i32 5
  store i32* %212, i32** %214, align 8
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %217 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %220 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = sext i32 %218 to i64
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32* %223, i32** %220, align 8
  %224 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %225 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = ptrtoint i32* %226 to i64
  %228 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %229 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %228, i32 0, i32 12
  %230 = load i64, i64* %229, align 8
  %231 = sub i64 %227, %230
  %232 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %233 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %232, i32 0, i32 11
  %234 = load i64, i64* %233, align 8
  %235 = icmp ugt i64 %231, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %204
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %2, align 4
  br label %305

239:                                              ; preds = %204
  %240 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %241 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = srem i32 %242, 32
  switch i32 %243, label %290 [
    i32 128, label %244
    i32 129, label %257
    i32 130, label %264
  ]

244:                                              ; preds = %239
  %245 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %246 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %245, i32 0, i32 7
  store i32 1, i32* %246, align 4
  %247 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %248 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %247, i32 0, i32 8
  store i32 0, i32* %248, align 8
  %249 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %250 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %249, i32 0, i32 4
  store i32 128, i32* %250, align 8
  %251 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %252 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %251, i32 0, i32 10
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = icmp ne %struct.TYPE_4__* %253, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %244
  store i32 1, i32* %4, align 4
  br label %256

256:                                              ; preds = %255, %244
  br label %291

257:                                              ; preds = %239
  %258 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %259 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %258, i32 0, i32 7
  store i32 1, i32* %259, align 4
  %260 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %261 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %260, i32 0, i32 10
  store %struct.TYPE_4__* @radiotap_ns, %struct.TYPE_4__** %261, align 8
  %262 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %263 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %262, i32 0, i32 8
  store i32 1, i32* %263, align 8
  br label %291

264:                                              ; preds = %239
  %265 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %266 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %265, i32 0, i32 9
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @get_unaligned_le32(i32 %267)
  %269 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %270 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %272 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %271, i32 0, i32 9
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  %275 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %276 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %264
  %280 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %281 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %280, i32 0, i32 0
  store i32 0, i32* %281, align 8
  br label %287

282:                                              ; preds = %264
  %283 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %284 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %282, %279
  %288 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %289 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %288, i32 0, i32 7
  store i32 0, i32* %289, align 4
  br label %300

290:                                              ; preds = %239
  store i32 1, i32* %4, align 4
  br label %291

291:                                              ; preds = %290, %257, %256, %92, %32
  %292 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %293 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = ashr i32 %294, 1
  store i32 %295, i32* %293, align 4
  %296 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %3, align 8
  %297 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 8
  br label %300

300:                                              ; preds = %291, %287
  %301 = load i32, i32* %4, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  store i32 0, i32* %2, align 4
  br label %305

304:                                              ; preds = %300
  br label %11

305:                                              ; preds = %303, %236, %148, %60, %23
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local i32 @find_ns(%struct.ieee80211_radiotap_iterator*, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
